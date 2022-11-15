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
    public partial class meuCarrinho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_user.Text = "Olá " + Session["utilizador"] + " :)";
        
            string user = Session["utilizador"].ToString();

            //1º passo conexao(ligacao) -> base de dados (webconfig)
            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();



            myCommand.CommandText = "meuCarrinho";

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
                p.util = dr["util"].ToString();
                p.quantidade = dr["quantidade"].ToString();
                p.total = dr["TOTAL"].ToString();
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
            public string quantidade { get; set; }
            public string total { get; set; }
            public string util { get; set; }
        }

        protected void btn_alterar_Click(object sender, EventArgs e)
        {
            Response.Redirect("alterarSenha.aspx");
        }
    }
    }
 
