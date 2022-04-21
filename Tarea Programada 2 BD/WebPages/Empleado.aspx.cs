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
    public partial class Empleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                SqlConnection con = new SqlConnection("Data Source = cr-dbs.database.windows.net; Initial Catalog = 'TareaDOS'; Persist Security Info = True; User ID = admin2022; Password = server2022!!");
                con.Open();


                Console.WriteLine("connected");
                SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "spListarEmpleados"; //Stored Procedure Name


                con.Open();

                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataSource = com.ExecuteReader();
                GridView1.DataBind();



            }
            catch (Exception ex)
            {

            }
        }


    }
}