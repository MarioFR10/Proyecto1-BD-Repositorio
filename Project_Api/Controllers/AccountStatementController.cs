using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Project_Api.Context;

namespace Project_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    [DisableCors]
    public class AccountStatementController : ControllerBase
    {
        private readonly AppDbContext context;
        public AccountStatementController(AppDbContext context)
        {
            this.context = context;
        }

        [HttpPost("GetStatementBy")]
        public ActionResult GetStatementBy([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int accountId = Convert.ToInt32(pJson["SavingsAccountId"].ToString());
                responseList = context.GetStatementBySavingsAccount(accountId);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPost("GetMovements")]
        public ActionResult GetMovements([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int accountStatementId = Convert.ToInt32(pJson["accountStatementId"].ToString());
                responseList = context.GetMovements(accountStatementId);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPost("getMovementsWord")]
        public ActionResult GetMovementsByWord([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int accountStatementId = Convert.ToInt32(pJson["accountStatementId"].ToString());
                string word = "%" + pJson["description"].ToString() + "%";
                responseList = context.GetMovementsByWord(accountStatementId, word);
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
