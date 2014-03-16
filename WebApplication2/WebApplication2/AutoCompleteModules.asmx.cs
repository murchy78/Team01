using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication2
{
    /// <summary>
    /// Summary description for AutoCompleteModules
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class AutoCompleteModules : System.Web.Services.WebService
    {
        public AutoCompleteModules() { 
        }

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public List<string> GetAutoCompleteModules(string modName)
        {
            List<string> result = new List<string>();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn.Open();
            string request = "SELECT * FROM dbo.ModuleManagement WHERE ModuleCode LIKE '%'+@SearchText+'%' OR ModuleTitle LIKE '%'+@SearchText+'%';";
            SqlCommand com = new SqlCommand(request, conn);

            com.Parameters.AddWithValue("@SearchText", modName);

            SqlDataReader ModuleList = com.ExecuteReader();

            while (ModuleList.Read())
            {
                result.Add(ModuleList["ModuleCode"].ToString() + " - " + ModuleList["ModuleTitle"].ToString());
            }
            return result;
        }
    }
}
