using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Tarea_Programada_2_BD.WebPages
{
    public partial class Puestos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string puesto = TextBox1.Text;
            string salario = TextBox2.Text;
            try
            {
                if (TextBox1.Text != "" && TextBox2.Text != "")
                {

                    SqlConnection con = new SqlConnection("Data Source = cr-dbs.database.windows.net; Initial Catalog = 'TareaDOS'; Persist Security Info = True; User ID = admin2022; Password = server2022!!");
                    con.Open();


                    Console.WriteLine("connected");
                    SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
                    com.Connection = con; //Pass the connection object to Command
                    com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                    com.CommandText = "spInsertarPuesto"; //Stored Procedure Name

                    com.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = puesto;
                    com.Parameters.Add("@SalarioXHora", SqlDbType.Money).Value = salario;

                    com.ExecuteNonQuery();


                    Label1.Text = "Se agrego un articulo";

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                }
                else
                {
                    Label1.Text = "Debe ingresar la informacion solicitada";
                    //conexion.Close(); 
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}