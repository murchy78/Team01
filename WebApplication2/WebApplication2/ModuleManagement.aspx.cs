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
    public partial class ModuleManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn.Open();
            string count_mods = "SELECT COUNT(*) FROM dbo.ModuleManagement;";
            SqlCommand com = new SqlCommand(count_mods, conn);
            int row_count = (int)com.ExecuteScalar();
            conn.Close();
        }
        protected void AddMod_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn.Open();
            string add_module = "INSERT INTO dbo.ModuleManagement ([ModuleCode],[ModuleTitle]) VALUES ('" + TextBox_ModCode.Text + "', '" + TextBox_ModTitle.Text + "');";
            SqlCommand com = new SqlCommand(add_module, conn);
            com.ExecuteScalar();
            conn.Close();
            Response.Redirect("ModuleManagement.aspx");
        }
    }
}