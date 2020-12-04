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


        [HttpPost("createObjetive")]
        public ActionResult CreateObjetiveAccount([FromBody] Dictionary<string, object> pJson)
        {
            try
            {

                Dictionary<string, object> responseList = new Dictionary<string, object>();

                int idCuenta = Convert.ToInt32(pJson[""]);
                DateTime fechaInicio = Convert.ToDateTime(pJson[""].ToString());
                DateTime fechaFinal = Convert.ToDateTime(pJson[""].ToString());
                decimal monto = Convert.ToDecimal(pJson[""].ToString());
                string objetivo = pJson[""].ToString();
                string dias = pJson[""].ToString();

                responseList = context.CreateObjetive(idCuenta, fechaInicio, fechaFinal, monto, objetivo, dias);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPut("updateObjetive")]
        public ActionResult UpdateObjetive([FromBody] Dictionary<string, List<Dictionary<string, object>>> pJson)
        {
            try
            {
                List<Dictionary<string, object>> objetives = pJson[""];

                Dictionary<string, object> responseList = new Dictionary<string, object>();

                responseList = context.UpdateObjetive(objetives);
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
