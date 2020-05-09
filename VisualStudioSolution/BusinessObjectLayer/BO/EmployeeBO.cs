using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer.DAO;
using InfrastructureLayer.VO;

namespace BusinessObjectLayer.BO
{
    public class EmployeeBO : BaseBO
    {
        public EmployeeBO() : base(System.Reflection.MethodInfo.GetCurrentMethod().DeclaringType)
        {
            LogInfo("EmployeeBO object created!");
        }

        public List<EmployeeVO> GetAllEmployees()
        {
            EmployeeDAO dao = new EmployeeDAO();
            return dao.GetAllEmployees();
        }

    }
}
