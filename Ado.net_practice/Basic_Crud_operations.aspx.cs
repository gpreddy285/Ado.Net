using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Ado.net_practice
{
    public partial class Basic_Crud_operations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Gridbind()
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tb_login",con);
            SqlDataAdapter da=new SqlDataAdapter(cmd);
            DataSet ds=new DataSet();
            da.Fill(ds);
            grdcrud.DataSource= ds;
            grdcrud.DataBind();
        }
        protected void btninsert_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tb_login values('" + txtusername.Text + "','" + txtpass.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("Record inserted successfully");
            con.Close();
            Gridbind();
        }
        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update tb_login set password='" + txtpass.Text + "' where username='" + txtusername.Text + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("Record updated successfully");
            con.Close();
            Gridbind();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from tb_login where username='"+txtusername.Text+"'",con);
            cmd.ExecuteNonQuery();
            Response.Write("Record deleted successfully");
            con.Close();
            Gridbind();
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=logindb;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from tb_login where username like'%"+txtsearch.Text+"%'",con);
            SqlDataAdapter da=new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdcrud.DataSource = ds;
            grdcrud.DataBind();

        }

        
    }
}