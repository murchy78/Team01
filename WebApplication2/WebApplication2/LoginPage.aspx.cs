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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            
           
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [Users] where UserName ='" + DropDownListUsers.SelectedValue + "'";

            
            System.Diagnostics.Debug.WriteLine(DropDownListUsers.SelectedValue);
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1) {
                conn.Open();
                string checkPasswordQuery = "select password from [Users] where UserName ='" + DropDownListUsers.SelectedValue + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString();
               if (password == TextBoxPassword.Text){
                   Session["New"] = DropDownListUsers.SelectedValue;
                    Response.Write("Password Correct");
                    Response.Redirect("RequestPage.aspx");
               
               }
               else{
                   string alert = "<script type = 'text/javascript'>alert('Incorrect Password!');</script>";
                   ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", alert);
               }
            }
            

            
        }
    }
}