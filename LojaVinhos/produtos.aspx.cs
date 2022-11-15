using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LojaVinhos
{
    public partial class produtos : System.Web.UI.Page

    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

          
            lbl_user.Text = "Olá,  " + Session["utilizador"] + " :)";

               
            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();



            myCommand.CommandText = "produtos";

            myCommand.CommandType = CommandType.StoredProcedure;

            //comando para ele executar no meu myConn
            // apontar para base de dados
            myCommand.Connection = myConnection;

            //abrir
            myConnection.Open();
            //run conexao

            SqlDataReader dr = myCommand.ExecuteReader();
            //apanhar a resposta da base de dados SP

            List<produtos_loja> produtos = new List<produtos_loja>();

            while (dr.Read())
            {
                // p produto
                var p = new produtos_loja();
                p.num_vinho = dr["num_vinho"].ToString();
                p.nome = dr["nome"].ToString();

                p.preco = dr["preco"] + " €".ToString();
                p.foto = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["foto"]);


                produtos.Add(p);
            }
           
            myConnection.Close();

            rpt_vinhos.DataSource = produtos;
            rpt_vinhos.DataBind();

        }
      
        public class produtos_loja
        {
            public string nome { get; set; }
            public string preco { get; set; }
            public string tipo { get; set; }
            public string foto { get; set; }


            public string num_vinho { get; set; }

        }
        protected void btn_desc_Click(object sender, EventArgs e)
        {

            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();

            //myCommand.Parameters.AddWithValue("@num_vinhos", btn_desc);

            myCommand.CommandText = "precoDesc";
            myCommand.CommandType = CommandType.StoredProcedure;

            myCommand.Connection = myConnection;
            myConnection.Open();

            SqlDataReader dr = myCommand.ExecuteReader();

            List<produtos_loja> produtos = new List<produtos_loja>();

            while (dr.Read())
            {
                // p produto
                var p = new produtos_loja();
                p.num_vinho = dr["num_vinho"].ToString();
                p.nome = dr["nome"].ToString();

                p.preco = dr["preco"] + " €".ToString();
                p.foto = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["foto"]);




                produtos.Add(p);
               
                
            }
            myConnection.Close();
            rpt_vinhos.DataSource = produtos;
            rpt_vinhos.DataBind();


        }

        protected void btn_asc_Click(object sender, EventArgs e)
        {
            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();

            //myCommand.Parameters.AddWithValue("@num_vinhos", btn_desc);

            myCommand.CommandText = "precoAsc";
            myCommand.CommandType = CommandType.StoredProcedure;

            myCommand.Connection = myConnection;
            myConnection.Open();

            SqlDataReader dr = myCommand.ExecuteReader();

            List<produtos_loja> produtos = new List<produtos_loja>();

            while (dr.Read())
            {
                // p produto
                var p = new produtos_loja();
                p.num_vinho = dr["num_vinho"].ToString();
                p.nome = dr["nome"].ToString();

                p.preco = dr["preco"] + " €".ToString();
                p.foto = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["foto"]);




                produtos.Add(p);


            }
            myConnection.Close();
            rpt_vinhos.DataSource = produtos;
            rpt_vinhos.DataBind();

        }

        protected void btn_AZ_Click(object sender, EventArgs e)
        {
            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();

            

            myCommand.CommandText = "listarAZ";
            myCommand.CommandType = CommandType.StoredProcedure;

            myCommand.Connection = myConnection;
            myConnection.Open();

            SqlDataReader dr = myCommand.ExecuteReader();

            List<produtos_loja> produtos = new List<produtos_loja>();

            while (dr.Read())
            {
                // p produto
                var p = new produtos_loja();
                p.num_vinho = dr["num_vinho"].ToString();
                p.nome = dr["nome"].ToString();

                p.preco = dr["preco"] + " €".ToString();
                p.foto = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["foto"]);




                produtos.Add(p);


            }
            myConnection.Close();
            rpt_vinhos.DataSource = produtos;
            rpt_vinhos.DataBind();

        }

        protected void btn_ZA_Click(object sender, EventArgs e)
        {
            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();

           

            myCommand.CommandText = "listarZA";
            myCommand.CommandType = CommandType.StoredProcedure;

            myCommand.Connection = myConnection;
            myConnection.Open();

            SqlDataReader dr = myCommand.ExecuteReader();

            List<produtos_loja> produtos = new List<produtos_loja>();

            while (dr.Read())
            {
                // p produto
                var p = new produtos_loja();
                p.num_vinho = dr["num_vinho"].ToString();
                p.nome = dr["nome"].ToString();

                p.preco = dr["preco"] + " €".ToString();
                p.foto = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["foto"]);




                produtos.Add(p);


            }
            myConnection.Close();
            rpt_vinhos.DataSource = produtos;
            rpt_vinhos.DataBind();

        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
           

            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();

            //var que vou usar no (SP-DB)
            string buscar = "%" + tb_busca.Text + "%";

            myCommand.Parameters.AddWithValue("@busca", buscar);

            
            myCommand.CommandText = "buscar_vinhos";
            myCommand.CommandType = CommandType.StoredProcedure;


            myCommand.Connection = myConnection;
            myConnection.Open();

            SqlDataReader dr = myCommand.ExecuteReader();

            List<produtos_loja> produtos = new List<produtos_loja>();

            while (dr.Read())
            {
                // p produto
                var p = new produtos_loja();
                p.num_vinho = dr["num_vinho"].ToString();
                p.nome = dr["nome"].ToString();

                p.preco = dr["preco"] + " €".ToString();
                p.foto = "data:image/jpeg;base64," + Convert.ToBase64String((byte[])dr["foto"]);




                produtos.Add(p);


            }
            myConnection.Close();
            rpt_vinhos.DataSource = produtos;
            rpt_vinhos.DataBind();

        }

        protected void btn_meuCarrinho_Click(object sender, EventArgs e)
        {
            Response.Redirect("meuCarrinho.aspx");
        }

        protected void btn_alterarSenha_Click(object sender, EventArgs e)
        {
            Response.Redirect("alterarSenha.aspx");
        }
    }
}


    
