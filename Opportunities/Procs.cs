using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Opportunities
{
    public class Procs
    {

        public static bool CommentExists(string spname, int oppId)
        {
            using (SqlConnection con = Connection.CreateConnection())
            {


                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = spname;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@op_meta_id", oppId);
                cmd.Parameters.Add("@Exists", SqlDbType.Bit);
                cmd.Parameters["@Exists"].Direction = ParameterDirection.Output;
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                bool exists = Convert.ToBoolean(cmd.Parameters["@Exists"].Value);

                con.Close();
                return exists;
            }
        }
        public static string get_customer_from_opid(string spname, int oppId)
        {
            using (SqlConnection con = Connection.CreateConnection())
            {

                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = spname;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@op_meta_id", oppId);
                cmd.Parameters.Add("@customer", SqlDbType.VarChar, 50);
                cmd.Parameters["@customer"].Direction = ParameterDirection.Output;
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                string customer = cmd.Parameters["@customer"].Value.ToString();

                con.Close();
                return customer;
            }
        }

       
    }
}