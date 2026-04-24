using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ado.net_practice
{
    public partial class registration_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tb_register values('"+txtfname.Text+"','"+txtlname.Text+"','"+txtemail.Text+"','"+txtpnumber.Text+"','"+txtage.Text+"')",con);
            cmd.ExecuteNonQuery();
            Response.Write("Record Inserted Successfully");
            con.Close();
        }
    }
}