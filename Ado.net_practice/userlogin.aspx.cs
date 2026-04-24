using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ado.net_practice
{
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            
         SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into tb_login values('"+txtuser.Text+"','"+txtpass.Text+"')",conn);
            cmd.ExecuteNonQuery();
            Response.Write("record inserted succssfully");
            conn.Close();
        }
    }
}