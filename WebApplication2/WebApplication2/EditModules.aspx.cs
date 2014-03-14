using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn.Open();
            string count_mods = "SELECT COUNT(*) FROM dbo.ModuleManagement;";
            SqlCommand com = new SqlCommand(count_mods, conn);
            int row_count = (int) com.ExecuteScalar();
            conn.Close();

            /*SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn2.Open();
            string module_data = "SELECT [ModuleCode], [ModuleTitle] FROM [dbo].[team01.ModuleManagement];";
            SqlCommand com2 = new SqlCommand(module_data, conn2);
            SqlDataReader modules = com2.ExecuteReader();
            //conn2.Close();


            while (modules.Read())
            {
                TableRow r = new TableRow();
                ModTable.Rows.Add(r);
                TableCell c = new TableCell();
                TableCell c1 = new TableCell();
                TableCell c2 = new TableCell();
                Button edit = new Button();
                c.Text += modules["ModuleCode"].ToString();
                c1.Text += modules["ModuleTitle"].ToString();
                edit.Text = "Edit";
                r.Cells.Add(c);
                r.Cells.Add(c1);
                r.Cells.Add(c2);
                c2.Controls.Add(edit);
            }
            conn2.Close();*/
            
        }

        protected void AddMod_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn.Open();
            string add_module = "INSERT INTO dbo.ModuleManagement ([ModuleCode],[ModuleTitle]) VALUES ('" + TextBox_ModCode.Text + "', '" + TextBox_ModTitle.Text + "');";
            SqlCommand com = new SqlCommand(add_module, conn);
            com.ExecuteScalar();
            conn.Close();
        }
    }
}