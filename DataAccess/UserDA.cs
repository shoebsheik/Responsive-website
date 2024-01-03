using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObject;
using System.Data.SqlClient;
using System.Data;

namespace DataAccess
{
    public class UserDA
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-ITJ0NAJ\SQLEXPRESS;Initial Catalog=Shoeb_Sheikhdb;Integrated Security=True");

        public int select(UserBO bo)
        {
            try
            {
                con.Open();
                SqlCommand cm = new SqlCommand("classselect", con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@username1", bo.UserName);
                cm.Parameters.AddWithValue("@password1", bo.Password);

                SqlDataReader dr = cm.ExecuteReader();
                if (dr.Read())
                {
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception ex)
            {
               
                Console.WriteLine("An error occurred: " + ex.Message);
                return -1; 
            }


        }
    }
}
