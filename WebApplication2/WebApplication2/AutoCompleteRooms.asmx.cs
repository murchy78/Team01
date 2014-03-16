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
    /// Summary description for AutoCompleteRooms
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class AutoCompleteRooms : System.Web.Services.WebService
    {
         public AutoCompleteRooms() { 
        }
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
         [WebMethod]
        public List<string> GetAutoCompleteRooms(string modName)
        {
             List<string> result = new List<string>();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn.Open();
            string request = "SELECT * FROM dbo.Rooms inner join dbo.Buildings on dbo.Rooms.BuildingID = dbo.Buildings.BuildingID WHERE RoomCode LIKE '%'+@SearchText+'%' OR BuildingName LIKE '%'+@SearchText+'%'  ;";
            SqlCommand com = new SqlCommand(request, conn);

            com.Parameters.AddWithValue("@SearchText", modName);

            SqlDataReader RoomList = com.ExecuteReader();

            while (RoomList.Read())
            {
                result.Add(RoomList["RoomCode"].ToString() + " - " + RoomList["BuildingName"].ToString());
            }
            return result;
        }

        }

    }
