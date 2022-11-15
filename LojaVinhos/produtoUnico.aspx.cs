using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace LojaVinhos
{
    public partial class produtoUnico : System.Web.UI.Page
    {


        
        protected void Page_Load(object sender, EventArgs e)

        {
            lbl_men.Text =""+ Session["utilizador"];
           

            int id;
            id = Convert.ToInt32(Request.QueryString["id"].ToString());


            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();


            myCommand.Parameters.AddWithValue("@num_vinho", id);
            

            myCommand.CommandText = "produtosUnico";

            myCommand.CommandType = CommandType.StoredProcedure;

            //comando para ele executar no meu myConn
            // apontar para base de dados
            myCommand.Connection = myConnection;

            //abrir
            myConnection.Open();
            //run conexao

            SqlDataReader dr1 = myCommand.ExecuteReader();
            //apanhar a resposta da base de dados SP

            List<produtos_loja> produtos = new List<produtos_loja>();

            while (dr1.Read())
            {
                // p produto
                var p = new produtos_loja();
                p.nome = dr1["nome"].ToString();
                p.preco = dr1["preco"] + " €".ToString();
                p.num_vinho = dr1["num_vinho"].ToString();
                p.tipo = dr1["tipo"].ToString();
                p.regiao = dr1["regiao"].ToString();

                p.discricao = dr1["discricao"].ToString();
                p.foto = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr1["foto"]);





                produtos.Add(p);
            }

            myConnection.Close();

            rpt_vinhos1.DataSource = produtos;
            rpt_vinhos1.DataBind();

        }
        public class produtos_loja
        {
            public string nome { get; set; }
            public string preco { get; set; }
            public string tipo { get; set; }
            public string foto { get; set; }
            public string num_vinho { get; set; }
            public string discricao { get; set; }
            public string regiao { get; set; }

        }

      

        protected void btn_confirmar_Click(object sender, EventArgs e)
        {
            if (Session["utilizador"]==null)
            {
                lbl_men2.Text = "Utilizador não logado!";
            }
            int id;
            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();
            myCommand.Parameters.AddWithValue("@quantidade", tb_quantidade.Text);
            //myCommand.Parameters.AddWithValue("@user", Session["utilizador"]).ToString();
            myCommand.Parameters.AddWithValue("@num_vinho", id);


            myCommand.CommandText = "trocar_quantidade";

            myCommand.CommandType = CommandType.StoredProcedure;

            //myCommand terá a conexao do myConnection
            myCommand.Connection = myConnection;

            //abrir a conexao
            myConnection.Open();
            //excutar as linhas de comando
            myCommand.ExecuteNonQuery();
            //fechar conexao
            myConnection.Close();

        }
    }
}
    
