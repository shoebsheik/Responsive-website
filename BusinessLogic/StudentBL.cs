using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObject;
using DataAccess;
using System.Data;
using System.Data.SqlClient;

namespace BusinessLogic
{
   public  class StudentBL
    {
        public int insert(StudentBO bo)
        {
            StudentDA da = new StudentDA();
            return da.insertdata(bo);
        }
        public SqlDataReader listshow()
        {
            StudentDA da = new StudentDA();
            return da.show();
        }
        public int delete(StudentBO bo)
        {
            StudentDA da = new StudentDA();
            return da.griddelete(bo);
        }
        public int Update(StudentBO bo)
        {
            StudentDA da = new StudentDA();
            return da.gridupdate(bo);
        }

    }
}
