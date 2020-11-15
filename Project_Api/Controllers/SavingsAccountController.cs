using Microsoft.AspNetCore.Mvc;
using Project_Api.Context;
using Project_Api.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http.Cors;

namespace Project_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    [DisableCors]
    public class SavingsAccountController : ControllerBase
    {
        private readonly AppDbContext context;

        public SavingsAccountController(AppDbContext context)
        {
            this.context = context;
        }
        [HttpGet]
        public IEnumerable<SavingsAccount> Get()
        {
            return context.SavingsAccount.ToList();
        }

        [HttpPost("GetByUserId")]
        public ActionResult GetAccountByUserId([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int userId = Convert.ToInt32(pJson["UserId"].ToString());
                responseList = context.GetAccountByUserId(userId);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }

        }

        [HttpPost("GetBenefactorById")]
        public ActionResult GetBenefactorByAccount([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int accountId = Convert.ToInt32(pJson["SavingsAccountId"].ToString());
                responseList = context.GetBenefactorByAccount(accountId);
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
