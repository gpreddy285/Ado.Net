using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ado.net_practice
{
    public partial class login_gridview : System.Web.UI.Page
    {
        //class level connection string 
        SqlConnection con = new SqlConnection("Data Source=.;Initial catalog=logindb;Integrated Security=True");
        
        //Binding Grid Data
        protected void Bindgriddata(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from tb_login", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grduser.DataSource = ds;
            grduser.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bindgriddata(sender, e);
            }

        }
        //rowediting event
        protected void grduser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grduser.EditIndex = e.NewEditIndex;
            Bindgriddata(sender, e);
        }
        //rowcanceling event
        protected void grduser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grduser.EditIndex = -1;
            Bindgriddata(sender, e);
        }
        //row updating event
        protected void grduser_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
         con.Open();
           GridViewRow grd=grduser.Rows[e.RowIndex];
            int userid = Convert.ToInt32(grduser.DataKeys[e.RowIndex].Value);
            string username=((TextBox)grd.FindControl("txtgrduser")).Text;
            string password=((TextBox)grd.FindControl("txtgrdpass")).Text;
            SqlCommand cmd = new SqlCommand("update tb_login set username=@username,password=@password where userid=@userid", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.ExecuteNonQuery();
                con.Close();
            Bindgriddata(sender, e);
        }

        //inserting data into table
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tb_login values('"+txtusername.Text+"','"+txtpassword.Text+"')",con);
            cmd.ExecuteNonQuery();
            Response.Write("record inserted successfully");
            con.Close();
            Bindgriddata(sender, e);
        }
        //page index changing event
        protected void grduser_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            grduser.PageIndex = e.NewPageIndex;
            Bindgriddata(sender, e);
        }

        //row deleting event
        protected void grduser_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Open();
            int userid = Convert.ToInt32(grduser.DataKeys[e.RowIndex].Value);
            SqlCommand cmd = new SqlCommand("delete from tb_login where userid=@userid",con);
            cmd.Parameters.AddWithValue("@userid",userid);
            cmd.ExecuteNonQuery();
            Response.Write("record deleted successfully");
            con.Close();
            Bindgriddata(sender, e);
        }
    }
}