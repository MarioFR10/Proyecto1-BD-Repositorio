using Microsoft.EntityFrameworkCore;
using Project_Api.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Project_Api.Context
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options):base(options)
        {
        }

        public Dictionary<string, object> Login(string usrname, string pass)
        {
            Dictionary<string, object> response = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("SP_Login", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@inUserName", usrname);
                cmd.Parameters.AddWithValue("@inPass", pass);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    response.Add("UserId", dr.GetInt32(0));
                }
                dr.Close();
                if(response["UserId"] == null || Convert.ToInt32(response["UserId"]) == -1)
                {
                    response.Add("error", "Invalid credentials");
                }
                con.Close();
                return response;
                
            }
        }

        public Dictionary<string,object> GetAccountByUserId(int userId)
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("SP_GetUseCanAccess", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@UserId", userId);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> accounts = new Dictionary<string, object>();
                    accounts.Add("id", dr.GetInt32(0));
                    accounts.Add("typeSavingsAccountName", dr.GetString(1));
                    accounts.Add("personName", dr.GetString(2));
                    accounts.Add("balance", dr.GetDecimal(3));
                    accounts.Add("creationDate", dr.GetDateTime(4));
                    accounts.Add("accountNumber", dr.GetString(5));
                    response.Add(accounts);
                }
                dr.Close();
                if (response == null)
                {
                    finalresponse.Add("error", "No accounts availables");
                    return finalresponse;
                }
                finalresponse.Add("Accounts", response);
                con.Close();
                return finalresponse;

            }
        }
        public Dictionary<string, object> CreateBenefactor(int numCuenta, string valorIdentificacion, int relationshipId, int percentage)
        {
            Dictionary<string, object> response = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("SP_Create_Benefactor", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@AccountId", numCuenta);
                cmd.Parameters.AddWithValue("@inValueDocIden", valorIdentificacion);
                cmd.Parameters.AddWithValue("@inRelationshipId", relationshipId);
                cmd.Parameters.AddWithValue("@inPercentaje", percentage);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    response.Add("Code", dr.GetInt32(0));
                }

                dr.Close();
                if (Convert.ToInt32(response["Code"]) == 0)
                {
                    response.Add("success", "Benefactor Inserted!");
                    return response;
                }
                con.Close();
                return response;

            }
        }
        public Dictionary<string, object> GetBenefactorByAccount(int accountId)
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("SP_GetBenefactorsbyAccount", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@AccountId", accountId);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> benefactors = new Dictionary<string, object>();
                    benefactors.Add("id", dr.GetInt32(0));
                    benefactors.Add("nameDocId", dr.GetString(1));
                    benefactors.Add("valueDocIden", dr.GetString(2));
                    benefactors.Add("savingsAccountId", dr.GetInt32(3));
                    benefactors.Add("name", dr.GetString(4));
                    benefactors.Add("percentage", dr.GetInt32(5));
                    response.Add(benefactors);
                }
                dr.Close();
                if (response == null)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "No benefactors availables");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("Benefactors", response);
                return finalresponse;

            }
        }

        public Dictionary<string, object> UpdateBenefactor(List<Dictionary<string, object>> benefactors)
        {
            Dictionary<string, object> response = new Dictionary<string, object>();
            foreach (Dictionary<string, object> a in benefactors)
            {
                using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
                {
                    SqlCommand cmd = new SqlCommand("SP_Update_Benefactor", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    int BeneId = Convert.ToInt32(a["id"].ToString());
                    int porcentaje = Convert.ToInt32(a["percentage"].ToString());
                    cmd.Parameters.AddWithValue("@beneId", BeneId);
                    cmd.Parameters.AddWithValue("@inPercentaje", porcentaje);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        response.Add("Code", dr.GetInt32(0));
                    }
                    if(Convert.ToInt32(response["Code"]) == 1 || response == null)
                    {
                        response.Add("error", "Error Updating");
                    }
                    else
                    {
                        response.Add("success", "Succesfully Done");
                    }
                    dr.Close();
                    con.Close();
                    return response;

                }
            }
            response.Add("error", "No Benefactors in this account");
            return response;
        }

        public Dictionary<string, object> DeleteBenefactor(int BeneId)
        {
            Dictionary<string, object> response = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("SP_Delete_Benefactor", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@beneId", BeneId);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    response.Add("Code", dr.GetInt32(0));
                }
                if (Convert.ToInt32(response["Code"]) == 2 || response == null){

                    response.Add("error", "Error Deleting");
                }
                else
                {
                    response.Add("success", "Succesfully Done");
                }
                dr.Close();
                con.Close();
                return response;
            }
        }

        public Dictionary<string, object> GetStatementBySavingsAccount(int accountId)
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("SP_Read_AccountStatement", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@SavingsAccountId", accountId);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> statements = new Dictionary<string, object>();
                    statements.Add("id", dr.GetInt32(0));
                    statements.Add("startDate", dr.GetDateTime(1));
                    statements.Add("endDate", dr.GetDateTime(2));
                    statements.Add("initialBalance", dr.GetDecimal(3));
                    statements.Add("finalBalance", dr.GetDecimal(4));
                    statements.Add("minBalance", dr.GetDecimal(5));
                    statements.Add("AtmOps", dr.GetInt32(6));
                    statements.Add("HumOps", dr.GetInt32(7));
                    response.Add(statements);
                }
                dr.Close();
                if (response == null)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "Invalid credentials");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("accountStatements",response);
                return finalresponse;

            }
        }
        public Dictionary<string, object> GetRelationship()
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("SP_Read_Relationship", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> statements = new Dictionary<string, object>();
                    statements.Add("id", dr.GetInt32(0));
                    statements.Add("name", dr.GetString(1));
                    response.Add(statements);
                }
                dr.Close();
                if (response == null)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "There are no relationships");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("relationships", response);
                return finalresponse;

            }
        }

        public Dictionary<string, object> CreateObjetive(int idCuenta, DateTime fechaInicio, DateTime fechaFinal, decimal monto, string objetivo, string dias)
        {
            Dictionary<string, object> response = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("dbo_SP_Create_ObjetiveAccount", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@AccountId", idCuenta);
                cmd.Parameters.AddWithValue("@inStartDate", fechaInicio);
                cmd.Parameters.AddWithValue("@inEndDate", fechaFinal);
                cmd.Parameters.AddWithValue("@inFee", monto);
                cmd.Parameters.AddWithValue("@inObjetive", objetivo);
                cmd.Parameters.AddWithValue("@inDaysOfDeposit", dias);

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    response.Add("Code", dr.GetInt32(0));
                }

                dr.Close();
                if (Convert.ToInt32(response["Code"]) == 0)
                {
                    response.Add("success", "Account Inserted!");
                    return response;
                }
                con.Close();
                return response;

            }
        }

        public Dictionary<string, object> UpdateObjetive(int objCuentaId, string descripcion)
        {
            Dictionary<string, object> response = new Dictionary<string, object>();
            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("dbo_SP_Update_ObjectiveAccount", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@ObjectiveAccountId", objCuentaId);
                cmd.Parameters.AddWithValue("@inDescription", descripcion);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    response.Add("Code", dr.GetInt32(0));
                }
                if (Convert.ToInt32(response["Code"]) == 1 )
                {
                    response.Add("error", "Error Updating");
                }
                else
                {
                    response.Add("success", "Succesfully Done");
                }
                dr.Close();
                con.Close();
                return response;

            }
        }


        public Dictionary<string, object> DeleteObjetive(int objetiveId)
        {
            Dictionary<string, object> response = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("dbo_SP_Delete_ObjectiveAccount", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@ObjectiveAccountId", objetiveId);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    response.Add("Code", dr.GetInt32(0));
                }
                if (Convert.ToInt32(response["Code"]) == 1 || response.Count() == 0)
                {

                    response.Add("error", "Error Deleting");
                }
                else
                {
                    response.Add("success", "Succesfully Done");
                }
                dr.Close();
                con.Close();
                return response;
            }
        }

        public Dictionary<string, object> GetMovements(int accountStatementId)
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("dbo_SP_Read_Movements", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@AccountStatementId", accountStatementId);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> movements = new Dictionary<string, object>();
                    movements.Add("id", dr.GetInt32(0));
                    movements.Add("typeMovId", dr.GetInt32(1));
                    movements.Add("amount", dr.GetDecimal(2));
                    movements.Add("newBalance", dr.GetDecimal(3));
                    movements.Add("description", dr.GetString(4));

                    response.Add(movements);
                }
                dr.Close();
                if (response.Count() == 0)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "There are no movements");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("movements", response);
                return finalresponse;

            }
        }

        public Dictionary<string, object> GetMovementsByWord(int accountStatementId, string word)
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("dbo_SP_Read_Movements_Word", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@AccountStatementId", accountStatementId);
                cmd.Parameters.AddWithValue("@Description", word); 
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> movements = new Dictionary<string, object>();
                    movements.Add("id", dr.GetInt32(0));
                    movements.Add("typeMovId", dr.GetInt32(1));
                    movements.Add("amount", dr.GetDecimal(2));
                    movements.Add("newBalance", dr.GetDecimal(3));
                    movements.Add("description", dr.GetString(4));

                    response.Add(movements);
                }
                dr.Close();
                if (response.Count() == 0)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "There are no movements");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("movements", response);
                return finalresponse;

            }
        }

        public Dictionary<string, object> GetObjetiveAccounts(int accountId)
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("dbo_SP_Read_ObjectiveAccount", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@SavingsAccountId", accountId);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> objetiveaccount = new Dictionary<string, object>();
                    objetiveaccount.Add("id", dr.GetInt32(0));
                    objetiveaccount.Add("SavingsAccountId", dr.GetInt32(1));
                    objetiveaccount.Add("startDate", dr.GetDateTime(2));
                    objetiveaccount.Add("endDate", dr.GetDateTime(3));
                    objetiveaccount.Add("fee", dr.GetDecimal(4));
                    objetiveaccount.Add("objetive", dr.GetString(5));
                    objetiveaccount.Add("balance", dr.GetDecimal(6));
                    objetiveaccount.Add("acumInterest", dr.GetDouble(7));
                    objetiveaccount.Add("daysOfDeposit", dr.GetString(8));
                    response.Add(objetiveaccount);
                }
                dr.Close();
                if (response.Count() == 0)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "No objetive accounts availables");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("objetiveAccounts", response);
                return finalresponse;

            }
        }


        public Dictionary<string, object> consultaAdminA()
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("[dbo].[sp_queryA]", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> consulta = new Dictionary<string, object>();
                    consulta.Add("id", dr.GetInt32(0));
                    consulta.Add("oANumber", dr.GetInt32(1));
                    consulta.Add("objetiveAccountId", dr.GetInt32(2));
                    consulta.Add("description", dr.GetString(3));
                    consulta.Add("succesfullDeposits", dr.GetInt32(4));
                    consulta.Add("deposits", dr.GetInt32(5));
                    consulta.Add("succesfullBalance", dr.GetDecimal(6));
                    consulta.Add("balance", dr.GetDecimal(7));
                    response.Add(consulta);
                }
                dr.Close();
                if (response.Count() == 0)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "No hay consultas disponibles");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("consultas", response);
                return finalresponse;

            }
        }


        public Dictionary<string, object> consultaAdminB(DateTime fecha)
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("[dbo].[AdministradorExcesoATM]", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@inFechaInicio", fecha);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> consulta = new Dictionary<string, object>();
                    consulta.Add("codigoCuenta", dr.GetString(0));
                    consulta.Add("promedioRetiros", dr.GetDouble(1));
                    consulta.Add("mesMayor", dr.GetInt32(2));
                    consulta.Add("anioMayor", dr.GetInt32(3));
                    response.Add(consulta);
                }
                dr.Close();
                if (response.Count() == 0)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "No hay consultas disponibles");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("consultas", response);
                return finalresponse;

            }
        }

        public Dictionary<string, object> consultaAdminC()
        {
            List<Dictionary<string, object>> response = new List<Dictionary<string, object>>();
            Dictionary<string, object> finalresponse = new Dictionary<string, object>();

            using (SqlConnection con = new SqlConnection("Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;"))
            {
                SqlCommand cmd = new SqlCommand("[dbo].[AdministradorDefuncion]", con)
                {
                    CommandType = CommandType.StoredProcedure
                };
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dictionary<string, object> consulta = new Dictionary<string, object>();
                    consulta.Add("nombre", dr.GetString(0));
                    consulta.Add("balan", dr.GetDecimal(1));
                    consulta.Add("mayorBen", dr.GetString(2));
                    consulta.Add("cantCuentas", dr.GetInt32(3));
                    response.Add(consulta);
                }
                dr.Close();
                if (response.Count() == 0)
                {
                    Dictionary<string, object> error = new Dictionary<string, object>();
                    error.Add("error", "No hay consultas disponibles");
                    response.Add(error);
                    return finalresponse;
                }
                con.Close();
                finalresponse.Add("consultas", response);
                return finalresponse;

            }
        }



        public DbSet<User> User { get; set; }
        public DbSet<SavingsAccount> SavingsAccount { get; set; }
        public DbSet<Benefactor> Benefactor { get; set; }
        public DbSet<AccountStatement> AccountStatement { get; set; }
        public DbSet<ObjetiveAccount> ObjetiveAccount { get; set; }
    }
}
