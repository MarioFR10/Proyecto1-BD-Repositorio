﻿using Microsoft.EntityFrameworkCore;
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

        public DbSet<User> User { get; set; }
        public DbSet<SavingsAccount> SavingsAccount { get; set; }
        public DbSet<Benefactor> Benefactor { get; set; }
        public DbSet<AccountStatement> AccountStatement { get; set; }

    }
}