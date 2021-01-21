using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Project_Api.Context;
using Project_Api.Entities;

namespace Project_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    [DisableCors]
    public class BenefactorController : ControllerBase
    {
        private readonly AppDbContext context;

        public BenefactorController(AppDbContext context)
        {
            this.context = context;
        }

        [HttpGet]
        public IEnumerable<Benefactor> Get()
        {
            return context.Benefactor.ToList();
        }

        [HttpPost("GetBenefactorByAccount")]
        public ActionResult GetBenefactorByAccount([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int accountId = Convert.ToInt32(pJson["SavingsAccountId"].ToString());
                int user = Convert.ToInt32(pJson["user"].ToString());
                responseList = context.GetBenefactorByAccount(accountId, user);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPut("updateBenefactorsPercentages")]
        public ActionResult UpdateBenefactor([FromBody]Dictionary<string, List<Dictionary<string, object>>> pJson)
        {
            try
            {
                List<Dictionary<string, object>> benefactors = pJson["benefactors"];
     
                Dictionary<string, object> responseList = new Dictionary<string, object>();

                responseList = context.UpdateBenefactor(benefactors);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPut("deleteBenefactor")]
        public ActionResult DeleteBenefactor([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int BeneId = Convert.ToInt32(pJson["benefactorId"].ToString());
                int user = Convert.ToInt32(pJson["user"].ToString());

                responseList = context.DeleteBenefactor(BeneId, user);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPost("createBenefactor")]
        public ActionResult CreateBenefactor([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                
                Dictionary<string, object> responseList = new Dictionary<string, object>();

                Dictionary<string, object> values = JsonConvert.DeserializeObject<Dictionary<string, object>>(pJson["benefactor"].ToString()); 
                

                int idCuenta = Convert.ToInt32(values["savingsAccountId"]);
                string valorIdentificacion = values["valueDocIden"].ToString();
                int relationshipId = Convert.ToInt32(values["nameDocId"].ToString());
                int percentage = Convert.ToInt32(values["percentage"].ToString());
                int user = Convert.ToInt32(values["user"].ToString());

                responseList = context.CreateBenefactor(idCuenta, valorIdentificacion, relationshipId, percentage, user);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpGet("getRelationship")]
        public ActionResult GetRelationship()
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                responseList = context.GetRelationship();
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
