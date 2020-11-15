using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Project_Api.Context;
using Project_Api.Entities;

namespace Project_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    [DisableCors]
    public class UserController : ControllerBase
    {
        private readonly AppDbContext context;
        public UserController(AppDbContext context)
        {
            this.context = context;
        }

        //GET: api/<controller>
        [HttpGet]
        public IEnumerable <User> Get()
        {
            return context.User.ToList();
        }

        //GET api/<controller>/5
        [HttpPost("Login")]
        public ActionResult Login([FromBody]Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                string usrname = pJson["userName"].ToString();
                string pass = pJson["password"].ToString();
                responseList = context.Login(usrname, pass);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {

                return BadRequest(e.ToString());
            }

        }

    }
}
