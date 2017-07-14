using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Diagnostics;
using Opportunities.Properties;

namespace Opportunities
{
    public partial class InputForm : System.Web.UI.Page
    {
        public bool hasComments { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            int opId = Convert.ToInt32(Request.QueryString["oppId"]);
            Debug.WriteLine("opId: " + opId);
            bool exists;
            exists = Procs.CommentExists("CheckMetaId", opId);

            if (exists)
            {
                if (FormView1.PageCount == 0)
                    FormView1.DefaultMode = FormViewMode.Edit;
            }
            else
            {
                FormView1.DefaultMode = FormViewMode.Insert;
                
                ((TextBox)FormView1.FindControl("txtOppId")).Text = opId.ToString();
                string customer = Procs.get_customer_from_opid("get_customer_from_opid", opId);
                ((TextBox)FormView1.FindControl("txtCustomer")).Text = customer;

            }
            
        }     

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}
