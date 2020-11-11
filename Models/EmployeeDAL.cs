using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Proyecto1_BD.Models
{
    public class EmployeeDAL
    {
        string connectionString = "Server = tcp:proyecto1-server-bd.database.windows.net,1433; Database = proyecto1-database; User ID = Administrador; Password = Proyecto1; Trusted_Connection = False; Encrypt = True;";
    
        public IEnumerable<User> Get_All_User()
        {
            List<User> empList = new List<User>();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SP_Get_All_User", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    User emp = new User();
                    emp.Id = Convert.ToInt32(dr["Id"].ToString());
                    emp.PersonId = Convert.ToInt32(dr["PersonId"].ToString());
                    emp.UserName = dr["UserName"].ToString();
                    emp.Password = dr["Password"].ToString();
                    emp.IsAdministrator = Convert.ToBoolean(dr["IsAdministrator"].ToString());

                    empList.Add(emp);
                }
                con.Close();
            }
            return empList;
        }
        public void AddEmployee(User emp)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SP_Insert_User", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", emp.Id);
                cmd.Parameters.AddWithValue("@PersonId", emp.PersonId);
                cmd.Parameters.AddWithValue("@UserName", emp.UserName);
                cmd.Parameters.AddWithValue("@Password", emp.Password);
                cmd.Parameters.AddWithValue("@IsAdministrator", emp.IsAdministrator);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        public void UpdateEmployee(User emp)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SP_Update_User", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Id", emp.Id);
                cmd.Parameters.AddWithValue("@PersonId", emp.PersonId);
                cmd.Parameters.AddWithValue("@UserName", emp.UserName);
                cmd.Parameters.AddWithValue("@Password", emp.Password);
                cmd.Parameters.AddWithValue("@IsAdministrator", emp.IsAdministrator);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public void DeleteEmployee(int empPersonId)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SP_Delete_User", con);
                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.AddWithValue("@PersonId", empPersonId);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        public User GetEmployeeById(int Idperson)
        {
            User emp = new User();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SP_Get_User_By_Id", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", Idperson);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    emp.Id = Convert.ToInt32(dr["Id"].ToString());
                    emp.PersonId = Convert.ToInt32(dr["PersonId"].ToString());
                    emp.UserName = dr["Name"].ToString();
                    emp.Password = dr["Password"].ToString();
                    emp.IsAdministrator = Convert.ToBoolean(dr["IsAdministrator"].ToString());

                }
                con.Close();
            }
            return emp;
        }
    }
}