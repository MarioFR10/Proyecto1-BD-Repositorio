using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proyecto1_BD.Models;
using System.Data.SqlClient;


namespace Proyecto1_BD.Controllers
{
    public class UserController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlCommand comm = new SqlCommand();
        SqlDataReader dr;
        SqlDataReader admi;
        // GET: User
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        void connectionString()
        {
            con.ConnectionString = "Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;";
        }
        [HttpPost]
        public ActionResult Verify(User usr)
        {
            connectionString();
            con.Open();
            com.Connection = con;
            comm.Connection = con;
            com.CommandText = "Select * from [dbo].[User] US where US.UserName = '"+usr.UserName+"'and US.Password = '"+usr.Password+"'";
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                comm.CommandText = "Select * from [dbo].[User] US where US.UserName = '" + usr.UserName + "'and US.IsAdministrator = '" + true + "'";
                admi = comm.ExecuteReader();

                if (admi.Read())
                {
                    con.Close();
                    return View("Create");
                }
                else
                {
                    con.Close();
                    return View("MenuUser");
                }
            }
            else
            {
                con.Close();

                return View("Error");
            }
            
        }
    }
}