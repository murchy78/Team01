using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bullet_Click(object sender, BulletedListEventArgs e)
        {
            Response.Redirect("CreateRequest.aspx");
        }

        protected void bullet_Click2(object sender, BulletedListEventArgs e)
        {
            Response.Redirect("ModuleManagement.aspx");
        }

    }
}