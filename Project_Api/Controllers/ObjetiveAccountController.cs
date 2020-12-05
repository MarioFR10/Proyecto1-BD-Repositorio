using System;
using System.Collections.Generic;
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
    public class ObjetiveAccountController : ControllerBase
    {
        private AppDbContext context;

        public ObjetiveAccountController(AppDbContext context)
        {
            this.context = context;
        }

        [HttpGet]
        public IEnumerable<ObjetiveAccount> Get()
        {
            return context.ObjetiveAccount.ToList();
        }

        

    }
}
