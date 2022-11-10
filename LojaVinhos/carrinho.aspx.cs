using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                lbl_id.Text = dr1["num_vinho"]+" - Id do vinho";
                lbl_nome.Text = dr1["nome"] + " - Marca";
                lbl_preco.Text = dr1["preco"] + "€ - preço do vinho";
                lbl_quant.Text = dr1["quantidade"] + " - Quantidade";
                lbl_total.Text = dr1["Total"] + "€ - Total";
                

            }

            myConnection.Close();

           

        }
        

    }

}
