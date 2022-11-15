using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Net;
using System.Net.Mail;
using System.Security.Permissions;

namespace LojaVinhos
{
    public partial class inserir_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_entrar_Click(object sender, EventArgs e)
        {
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();

            // Parameters de input
            myCommand.Parameters.AddWithValue("@utilizador", tb_nome.Text);
            myCommand.Parameters.AddWithValue("@senha", EncryptString(tb_senha.Text));
            myCommand.Parameters.AddWithValue("@email", tb_email.Text);

            // Parameters de output
            SqlParameter valor = new SqlParameter();
            valor.ParameterName = "@retorno";
            valor.Direction = ParameterDirection.Output;
            valor.SqlDbType = SqlDbType.Int;

            myCommand.Parameters.Add(valor);

          

            //Stored Procedures
            myCommand.CommandText = "registrar_utilizador";
            myCommand.CommandType = CommandType.StoredProcedure;

            //myCommand terá a conexao do myConnection
            myCommand.Connection = myConnection;

            //abrir a conexao
            myConnection.Open();
            //excutar as linhas de comando
            myCommand.ExecuteNonQuery();
            //resposta da Stored Procedures
            int respostaSP = Convert.ToInt32(myCommand.Parameters["@retorno"].Value);
       
            
            if (respostaSP == 0)
            {
                lbl_men.Text = "Esse utilizador já existe";

            }
            else if (respostaSP == 1)
            {
                envia_email();
                lbl_men.Text = "Cadrastro Concluído! \n Por Favor ative sua conta através do email.";
            }
            //fechar a conexao
            myConnection.Close();


        }
        // ativacao de conta atraves do email
        void envia_email()
        {

            MailMessage m = new MailMessage();
            SmtpClient sc = new SmtpClient();

            try
            {
                m.From = new MailAddress("reinaldo.bezerra.t0121950@edu.atec.pt");
                m.To.Add(new MailAddress(tb_email.Text, "001Ativar conta"));

                m.Subject = "Mail de ativação de conta";
                m.IsBodyHtml = true;
                m.Body = " Cadastro na Loja de Vinhos. Por Favor! Clica -> <a href='https://localhost:44396/ativacao.aspx?util="+
                   EncryptString(tb_nome.Text) + "'>AQUI </a> <- para ativar sua conta";

                sc.Host = "smtp.office365.com";
                sc.Port = 587;

                sc.Credentials = new System.Net.NetworkCredential
                    ("reinaldo.bezerra.t0121950@edu.atec.pt", "!85397Avg@5");
                sc.EnableSsl = true;
                sc.Send(m);

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


        }

        //func da encrypt Senha
        public static string EncryptString(string Message)
        {
            string Passphrase = "cetacas";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();



            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below



            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));



            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();



            // Step 3. Setup the encoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;



            // Step 4. Convert the input string to a byte[]
            byte[] DataToEncrypt = UTF8.GetBytes(Message);



            // Step 5. Attempt to encrypt the string
            try
            {
                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }



            // Step 6. Return the encrypted string as a base64 encoded string



            string enc = Convert.ToBase64String(Results);
            enc = enc.Replace("+", "KKK");
            enc = enc.Replace("/", "JJJ");
            enc = enc.Replace("\\", "III");
            return enc;

        }
    }

}