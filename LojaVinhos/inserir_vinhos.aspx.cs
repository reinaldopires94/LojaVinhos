using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace LojaVinhos
{
    public partial class inserir_vinhos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_inserirVinhos_Click(object sender, EventArgs e)
        {
            //inserir foto
            Stream img = file_foto.PostedFile.InputStream;
            int tamanho = file_foto.PostedFile.ContentLength;
            
            byte[] binarioFoto = new byte[tamanho];
            img.Read(binarioFoto, 0,tamanho);

            //conexao a base de dados 
            SqlConnection myConnection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["db_lojaVinhosConnectionString"].ConnectionString);

            // comando para inserir na base de dados
            SqlCommand myCommand = new SqlCommand();

            // Parameters de input
            myCommand.Parameters.AddWithValue("@nome", tb_nomeVinho.Text);
            myCommand.Parameters.AddWithValue("@preco", tb_precoVinho.Text);
            myCommand.Parameters.AddWithValue("@discricao", tb_discricaoVinhos.Text);
            myCommand.Parameters.AddWithValue("@tipo", tb_tipoVinho.Text);
            myCommand.Parameters.AddWithValue("@preco_revenda", tb_precoRevenda_vinho.Text);
            myCommand.Parameters.AddWithValue("@cod_regiao", ddl_regiaoVinho.SelectedValue);
            myCommand.Parameters.AddWithValue("@foto", binarioFoto);


            //Stored Procedures
            myCommand.CommandText = "inserir_Vinhos";
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