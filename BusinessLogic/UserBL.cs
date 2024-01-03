using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObject;
using DataAccess;

namespace BusinessLogic
{
    public class UserBL
    {
        public int Selectdata(UserBO bo)
        {
            UserDA da = new UserDA();
            return da.select(bo);
        }
    }
}
