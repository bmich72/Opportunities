using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


namespace Opportunities
{
    public class DataLayer
    {
        public static string SqlConn(string dbcon)
        {
            try
            {
                switch (dbcon)
                {
                    case "opportunity":
                        dbcon = ConfigurationManager.ConnectionStrings["OpportunityConnectionString"].ToString();                        
                        break;
                }
                return dbcon;
            }
            catch (SqlException ex)
            {

                throw ex;
            }
        }

        public static void UpdateData()
        {
            OpMeta metaData = new OpMeta();
            int opMetaId = metaData.opMetaId;
            string revProb = metaData.revProb;
            string revDelMon = metaData.revDelMon;
            bool duplicate = metaData.duplicate;
            bool rpo = metaData.rpo;
            string comments = metaData.comments;

            using (SqlConnection con = new SqlConnection(DataLayer.SqlConn("opportunity")))
            {
                con.Open();
                SqlCommand cmdOpMeta = new SqlCommand("INSERT INTO dbo.Opportunities_Meta (op_meta_id, [Rev Prob], [Rev Del Mon], Duplicate, RPO, Comments) VALUES(@opId,@revProb,@revDelMon,@duplicate,@rpo,@comments)");
                cmdOpMeta.Connection = con;
                SqlParameter opId = new SqlParameter("@opId", opMetaId);
                cmdOpMeta.Parameters.Add(opId);
                SqlParameter pRevProb = new SqlParameter("@revProb", revProb);
                cmdOpMeta.Parameters.Add(pRevProb);
                SqlParameter pRevDelMon = new SqlParameter("@revDelMon", revDelMon);
                cmdOpMeta.Parameters.Add(pRevDelMon);
                SqlParameter pDuplicate = new SqlParameter("@duplicate", duplicate);
                cmdOpMeta.Parameters.Add(pDuplicate);
                SqlParameter pRpo = new SqlParameter("@rpo", rpo);
                cmdOpMeta.Parameters.Add(pRpo);
                SqlParameter pComments = new SqlParameter("@comments", comments);
                cmdOpMeta.Parameters.Add(pComments);
                cmdOpMeta.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}