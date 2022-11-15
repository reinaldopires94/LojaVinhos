using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.EnterpriseServices;


namespace LojaVinhos
{
    public partial class carrinho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int id;

            id = Convert.ToInt32(Request.QueryString["id"].ToString());


            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();

            myCommand.Parameters.AddWithValue("@num_vinho", id);


            myCommand.CommandText = "carrinho";

            myCommand.CommandType = CommandType.StoredProcedure;

            //comando para ele executar no meu myConn
            // apontar para base de dados
            myCommand.Connection = myConnection;

            //abrir
            myConnection.Open();
            //run conexao

            SqlDataReader dr1 = myCommand.ExecuteReader();
            //apanhar a resposta da base de dados SP



            while (dr1.Read())
            {
                lbl_id.Text = dr1["num_vinho"] + " - Id do vinho";
                lbl_nome.Text = dr1["nome"] + " - Marca";
                lbl_preco.Text = dr1["preco"] + "€ - preço do vinho";
                lbl_quant.Text = dr1["quantidade"] + " - Quantidade";
                lbl_total.Text = dr1["Total"] + "€ - Total a pagar";

            }
            myConnection.Close();
        }

        protected void btn_pagar_Click(object sender, EventArgs e)
        {

            // vai buscar a key(PathFicheirosPDFS) do web.config
            string caminho = ConfigurationSettings.AppSettings.Get("PathFicheirosPDFS");
            



            // vai buscar a key(SiteURL) do web.confing
            string urlsite = ConfigurationSettings.AppSettings.Get("SiteURL");
          

            // apontar pro template
            string pdfTemplate = caminho + "Template\\pdf_loja_ok.pdf";
            

            // nome do fich do PDF que vai ser gerado
            string nomePDF = DateTime.Now.ToString().Replace(":", "").Replace
                ("/", "").Replace(" ", "") + ".pdf";


            string novoFicheiro = caminho + nomePDF;

            // ver o pdf que está no template
            PdfReader pdfreader = new PdfReader(pdfTemplate);

            // criar um novo pdf com base no antigo template
            PdfStamper pdfstamper = new PdfStamper(pdfreader, new FileStream
                (novoFicheiro, FileMode.Create));

            // escrever nos campos do PDF
            AcroFields campos = pdfstamper.AcroFields;

            campos.SetField("nome", lbl_nome.Text);
            campos.SetField("id", lbl_id.Text);
            campos.SetField("preco", lbl_preco.Text);
            campos.SetField("quantidade", lbl_quant.Text);
            campos.SetField("Total", lbl_total.Text);
            

            // fechar o pdfstamper
            pdfstamper.Close();


            // abrir o PDF no Ecrã
            //Response.Redirect(urlsite + "/PDFS/" + nomePDF);

            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient servidor = new SmtpClient();

                mail.From = new MailAddress("reinaldo.bezerra.t0121950@edu.atec.pt");
                mail.To.Add(new MailAddress(tb_email.Text));

                mail.Subject = "Loja de vinhos";

                mail.IsBodyHtml = true;
                mail.Body = "Loja de vinhos";


                System.Net.Mail.Attachment anexo;

                anexo = new System.Net.Mail.Attachment(caminho + nomePDF);

                mail.Attachments.Add(anexo);

                servidor.Host = "smtp.office365.com";
                servidor.Port = 587;

                servidor.Credentials = new NetworkCredential("reinaldo.bezerra.t0121950@edu.atec.pt",
                    "!85397Avg@5");

                servidor.EnableSsl = true;
                servidor.Send(mail);

                lbl_men.Text = "Sucesso com Pagamento.";




            }
            catch (Exception ex)
            {
                lbl_men.Text = ex.Message;
            }
        }
    }
}

