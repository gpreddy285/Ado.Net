using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace Ado.net_practice
{
    public partial class registrationform_saturday_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            con.Open();
            StringBuilder sb = new StringBuilder();

            foreach (ListItem item in cblhobbies.Items)
            {
                if (item.Selected)
                {
                    sb.Append(item.Value+",");
                }
            }
            SqlCommand cmd = new SqlCommand("insert into regsat values('"+txtfname.Text+"','"+txtlname.Text+"','"+rblgender.SelectedItem.Text+"','"+cblhobbies.SelectedValue+"','"+txtemail.Text+"','"+txtpnumber.Text+"')",con);
            cmd.ExecuteNonQuery();
            Response.Write("Record inserted successfully");
            con.Close();
            Gridbind();


        }

        protected void Gridbind()
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from regsat",con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdreg.DataSource = ds;
            grdreg.DataBind();

        }
    }
}