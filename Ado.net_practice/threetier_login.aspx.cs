using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bussiness_logic_layer;


namespace Ado.net_practice
{
    public partial class threetier_login : System.Web.UI.Page
    {
        bclass objb=new bclass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string username=txtusername.Text;
            string password = txtpassword.Text;
            objb.InsertData(username, password);
        }
    }
}