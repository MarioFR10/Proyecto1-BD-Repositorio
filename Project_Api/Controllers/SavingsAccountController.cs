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

        [HttpPost("getObjetiveAccounts")]
        public ActionResult GetObjetiveAccounts([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int accountId = Convert.ToInt32(pJson["SavingsAccountId"].ToString());
                int user = Convert.ToInt32(pJson["user"].ToString());
                responseList = context.GetObjetiveAccounts(accountId, user);
                context.SaveChanges();
                return Ok(responseList);
            }
                catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }


        //Crear cuenta objetivo

        [HttpPost("createObjetive")]
        public ActionResult CreateObjetiveAccount([FromBody] Dictionary<string, object> pJson)
        {
            try
            {

                Dictionary<string, object> responseList = new Dictionary<string, object>();

                int idCuenta = Convert.ToInt32(pJson["SavingsAccountId"].ToString());
                DateTime fechaInicio = Convert.ToDateTime(pJson["startDate"].ToString());
                DateTime fechaFinal = Convert.ToDateTime(pJson["endDate"].ToString());
                decimal monto = Convert.ToDecimal(pJson["fee"].ToString());
                string objetivo = pJson["objetive"].ToString();
                string dias = pJson["daysOfDeposit"].ToString();
                int user = Convert.ToInt32(pJson["user"].ToString());

                responseList = context.CreateObjetive(idCuenta, fechaInicio, fechaFinal, monto, objetivo, dias, user);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        // eliminar cuenta objetivo
        [HttpPut("deleteObjetive")]
        public ActionResult DeleteObjetive([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                int objetiveId = Convert.ToInt32(pJson["objetiveaccountId"].ToString());
                int user = Convert.ToInt32(pJson["user"].ToString());

                responseList = context.DeleteObjetive(objetiveId, user);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        //editar descripcion de cuenta objetivo
        [HttpPut("updateObjetive")]
        public ActionResult UpdateObjetive([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                int objetiveAccountId = Convert.ToInt32(pJson["objetiveaccountId"].ToString());
                string descripcion = pJson["objetive"].ToString();
                int user = Convert.ToInt32(pJson["user"].ToString());

                Dictionary<string, object> responseList = new Dictionary<string, object>();

                responseList = context.UpdateObjetive(objetiveAccountId, descripcion, user);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPost("consultaA")]
        public ActionResult ConsultaA([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                responseList = context.consultaAdminA();
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPost("consultaB")]
        public ActionResult ConsultaB([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();

                DateTime fechaInicio = Convert.ToDateTime(pJson["fecha"].ToString());
                responseList = context.consultaAdminB(fechaInicio);
                context.SaveChanges();
                return Ok(responseList);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }
        }

        [HttpPost("consultaC")]
        public ActionResult ConsultaC([FromBody] Dictionary<string, object> pJson)
        {
            try
            {
                Dictionary<string, object> responseList = new Dictionary<string, object>();
                responseList = context.consultaAdminC();
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
