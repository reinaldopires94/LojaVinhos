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

namespace LojaVinhos
{
    public partial class alterarSenha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_alterar_Click(object sender, EventArgs e)
        {

            //1º passo conexao(ligacao) -> base de dados (webconfig)
            SqlConnection myConn = new SqlConnection(ConfigurationManager.
                ConnectionStrings["db_atec_casConnectionString"].ConnectionString);

            // 2º comando para o sql
            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@utilizador", Session["utilizador"]);
            myCommand.Parameters.AddWithValue("@senha_antiga", EncryptString(tb_antiga.Text));
            myCommand.Parameters.AddWithValue("@senha_nova", EncryptString(tb_nova.Text));

            //cod para não inserir dois user iguais
            SqlParameter valor = new SqlParameter();
            valor.ParameterName = "@retorno";
            valor.Direction = ParameterDirection.Output;
            valor.SqlDbType = SqlDbType.Int;

            myCommand.Parameters.Add(valor);



            //procedures altera senha
            myCommand.CommandText = "alterar_senha";

            myCommand.CommandType = CommandType.StoredProcedure;

            //comando para ele executar no meu myConn
            // apontar para base de dados
            myCommand.Connection = myConn;

            //abrir
            myConn.Open();
            //run conexao
            myCommand.ExecuteNonQuery();
            //apanhar a resposta da base de dados SP
            int respostaSp = Convert.ToInt32(myCommand.Parameters["@retorno"].Value);

            //apanhar o perfil


            if (respostaSp == 0)
            {
                lbl_men.Text = "A senha não foi alterada";
            }
            else if (respostaSp == 1)
            {


                // label de mensagem
                lbl_men.Text = "Sucesso";

                //caminho para pag.
                //Response.Redirect("gestao_formandos.aspx");
            }

            //fechar
            myConn.Close();
        }
        public static string EncryptString(string Message)
        {
            string Passphrase = "atec";
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