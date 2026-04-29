using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using data_access_layer;

namespace Bussiness_logic_layer
{
    public class bclass
    {
        public int InsertData(string username,string password)
        {
            int i = 0;
            dclass objd=new dclass();
            objd.InsertData(username,password);
            return i;
        }
    }
}
