using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Opportunities
{
    public class Connection
    {
        public static SqlConnection CreateConnection()
        {
            string connectionstring;
            connectionstring = ConfigurationManager.ConnectionStrings["OpportunityConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(connectionstring);
            return sqlcon;
        }
    }
}