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
        public List<string> GetAutoCompleteRooms(string roomName, int MinCapacity, int park1, int park2, int park3, int OHP, int DP, int DP2, int Chalk, int WhiteBoard, int LargeBoard, int Lecture, int Seminar, int Tiered, int Flat, int Wheelchair)
        {

          
            List<string> result = new List<string>();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["team01Database"].ConnectionString);
            conn.Open();
            string request = "SELECT * FROM dbo.Rooms inner join dbo.Buildings on dbo.Rooms.BuildingID = dbo.Buildings.BuildingID";
            request += " WHERE (RoomCode LIKE '%'+@SearchText+'%' OR BuildingName LIKE '%'+@SearchText+'%') AND (ParkID = @park1 OR ParkID = @park2 OR ParkID = @park3)";

            if (Lecture != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @Lecture)";
            }

            if (Seminar != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @Seminar)";
            }

            if (Tiered != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @Tiered)";
            }

            if (Flat != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @Flat)";
            }

            if (DP != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @DP)";
            }

            if (DP2 != 200) 
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @DP2)";
            }

            if (Chalk != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @Chalk)";
            }

            if (WhiteBoard != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @WhiteBoard)";
            }

            if (OHP != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @OHP)";
            }

            if (LargeBoard != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @LargeBoard)";
            }

            if (Wheelchair != 200)
            {
                request += " AND RoomId IN (SELECT DISTINCT RoomID FROM dbo.RoomsFacilities WHERE FacilityID = @Wheelchair)";
            }

            request += " AND Capacity >= @MinCapacity ORDER BY RoomCode ASC;";
   
            SqlCommand com = new SqlCommand(request, conn);

            com.Parameters.AddWithValue("@SearchText", roomName);
            com.Parameters.AddWithValue("@MinCapacity", MinCapacity);
            com.Parameters.AddWithValue("@park1", park1);
            com.Parameters.AddWithValue("@park2", park2);
            com.Parameters.AddWithValue("@park3", park3);
            com.Parameters.AddWithValue("@OHP", OHP);
            com.Parameters.AddWithValue("@DP", DP);
            com.Parameters.AddWithValue("@DP2", DP2);
            com.Parameters.AddWithValue("@Chalk", Chalk);
            com.Parameters.AddWithValue("@WhiteBoard", WhiteBoard);
            com.Parameters.AddWithValue("@LargeBoard", LargeBoard);
            com.Parameters.AddWithValue("@Lecture", Lecture);
            com.Parameters.AddWithValue("@Seminar", Seminar);
            com.Parameters.AddWithValue("@Tiered", Tiered);
            com.Parameters.AddWithValue("@Flat", Flat);
            com.Parameters.AddWithValue("@Wheelchair", Wheelchair);

            SqlDataReader RoomList = com.ExecuteReader();

            while (RoomList.Read())
            {
                result.Add(RoomList["RoomCode"].ToString().Trim() + " - " + RoomList["BuildingName"].ToString().Trim());
            }
            return result;
        }

        }

    }
