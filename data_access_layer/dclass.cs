using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;

namespace data_access_layer
{
    public class dclass
    {
        public int InsertData(string username,string  password)
        {
            int i = 0;
            SqlConnection con = new SqlConnection("Data source=.;Initial Catalog=logindb;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tb_login values('"+username+"','"+password+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            return i;

        }

    }
}
