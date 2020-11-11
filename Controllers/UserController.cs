using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proyecto1_BD.Models;
using System.Data.SqlClient;
using Microsoft.AspNetCore.Mvc;

namespace Proyecto1_BD.Controllers
{
    public class UserController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlCommand comm = new SqlCommand();
        SqlDataReader dr;
        SqlDataReader admi;
        EmployeeDAL employeeDAL = new EmployeeDAL();
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
            com.CommandText = "Select * from [dbo].[User] US where US.UserName = '" + usr.UserName + "'and US.Password = '" + usr.Password + "'";
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
        
        public IActionResult MenuUser()
        {
            List<User> emplist = new List<User>();
            emplist = employeeDAL.Get_All_User().ToList();
            return (IActionResult)View(emplist);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return (IActionResult)View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]

        public IActionResult Create([Bind] User objEmp)
        {
            if (ModelState.IsValid)
            {
                employeeDAL.AddEmployee(objEmp);
                return (IActionResult)RedirectToAction("MenuUser");
            }
            return (IActionResult)View(objEmp);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int? Id)
        {
            if (Id == null)
            {
                return (IActionResult)HttpNotFound();
            }
            User user = employeeDAL.GetEmployeeById((int)Id);
            if (user == null)
            {
                return (IActionResult)HttpNotFound();
            }
            return (IActionResult)View(user);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int? Id, [Bind] User objUs)
        {
            if (Id == null)
            {
                return (IActionResult)HttpNotFound();
            }
            User user = employeeDAL.GetEmployeeById((int)Id);
            if (ModelState.IsValid)
            {
                employeeDAL.UpdateEmployee(objUs);
                return (IActionResult)RedirectToAction("MenuUser");
            }
            return (IActionResult)View(employeeDAL);
        }
        [HttpGet]
        public IActionResult Details(int? Id)
        {
            if (Id == null)
            {
                return (IActionResult)HttpNotFound();
            }
            User user = employeeDAL.GetEmployeeById((int)Id);
            if (user == null)
            {
                return (IActionResult)HttpNotFound();
            }
            return (IActionResult)View(user);
        }
        public IActionResult Delete(int? Id)
        {
            if (Id == null)
            {
                return (IActionResult)HttpNotFound();
            }
            User user = employeeDAL.GetEmployeeById((int)Id);
            if (user == null)
            {
                return (IActionResult)HttpNotFound();
            }
            return (IActionResult)View(user);
        }
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteUser(int? id)
        {
            employeeDAL.DeleteEmployee((int)id);
            return (IActionResult)RedirectToAction("MenuUser");
        }
    }
}