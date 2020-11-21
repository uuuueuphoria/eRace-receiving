using ERaceSystem.DAL;
using ERaceSystem.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERaceSystem.BLL
{
    public class EmployeeController
    {
        public EmployeeItem Employee_FindByID(int employeeid)
        {
            using (var context = new ERaceSystemContext())
            {
                var results = context.Employees
                                .Where(x => x.EmployeeID == employeeid)
                                .Select(x => x)
                                .FirstOrDefault();
                EmployeeItem item = new EmployeeItem
                {                    
                    EmployeeID = results.EmployeeID,
                    LastName = results.LastName,
                    FirstName = results.FirstName,
                    Address = results.Address,
                    City = results.City,                   
                    PostalCode = results.PostalCode,
                    Phone = results.Phone,
                    BirthDate = results.BirthDate,
                    PositionID = results.PositionID,
                    LoginId = results.LoginId,
                    SocialInsuranceNumber = results.SocialInsuranceNumber
                };
                return item;
            }
        }

    }
}
