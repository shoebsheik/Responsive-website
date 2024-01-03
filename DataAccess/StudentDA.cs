﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObject;
using System.Data.SqlClient;
using System.Data;

namespace DataAccess
{
    public class StudentDA
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-UQD0AOT\SQLEXPRESS;Initial Catalog=PracticeDB;Integrated Security=True");

        public int insertdata(StudentBO bo)
        {
            try
            {
                con.Open();

                SqlCommand cm = new SqlCommand("insertquery", con);
                cm.CommandType = CommandType.StoredProcedure;

                cm.Parameters.AddWithValue("@sname1", bo.Name);
                cm.Parameters.AddWithValue("@sdob1", bo.Dob);
                cm.Parameters.AddWithValue("@gender1", bo.Gender);
                cm.Parameters.AddWithValue("@degree1", bo.Degree);
                cm.Parameters.AddWithValue("@branch1", bo.Branch);
                cm.Parameters.AddWithValue("@email1", bo.Email);
                cm.Parameters.AddWithValue("@mobile1", bo.Mobile);
                cm.Parameters.AddWithValue("@imagepath1", bo.Upload);

                cm.Parameters.AddWithValue("@activestatus1", bo.Status);

                int result = cm.ExecuteNonQuery();
                return result;
            }
            catch (Exception ex)
            {

                Console.WriteLine("An error occurred: " + ex.Message);
                return -1;
            }  
        }


        public SqlDataReader show()
        {
            con.Open();

            string a = "select * from STUDENT_INFO";
            SqlCommand cm = new SqlCommand(a, con);

            SqlDataReader dr = cm.ExecuteReader();

            return dr;
        }

        public int griddelete(StudentBO bo)
        {
            con.Open();

            string b = "Delete from students where email = @email1 ";
            SqlCommand cm = new SqlCommand(b, con);

            cm.Parameters.AddWithValue("@email1", bo.Email);
           int result = cm.ExecuteNonQuery();
            return result;
        }
        public int gridupdate(StudentBO bo)
        {
            con.Open();

            SqlCommand cm = new SqlCommand("updatequeryy", con);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@email1", bo.Email);
           
            int result = cm.ExecuteNonQuery();
            con.Close();
            return result;
        }


    }

}
