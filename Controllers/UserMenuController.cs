using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proyecto1_BD.Models;

namespace Proyecto1_BD.Controllers
{
    public class UserMenuController : Controller
    {
        EmployeeDAL employeeDAL = new EmployeeDAL();

        public IActionResult MenuUser()
        {
            List<User> emplis = new List<User>();
            emplis = employeeDAL.Get_All_User().ToList();
            return View(emplis);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
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
}