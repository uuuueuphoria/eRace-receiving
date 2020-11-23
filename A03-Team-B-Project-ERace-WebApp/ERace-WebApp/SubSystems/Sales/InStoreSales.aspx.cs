using ERace_WebApp.Security;
using ERaceSystem.BLL;
using ERaceSystem.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ERace_WebApp.SubSystems.Sales
{
    public partial class InStoreSales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////test our security
            ////are you logged in?
            //if (Request.IsAuthenticated)
            //{
            //    if (User.IsInRole("Clerk"))
            //    {

            //        //obtain the CustomerId on the security User record
            //        SecurityController ssysmgr = new SecurityController();
            //        int? employeeid = ssysmgr.GetCurrentUserEmployeeId(User.Identity.Name);

            //        //need to convert the int? to an int for the call to the CustomerController method
            //        //int custid = customerid == null ? default(int) : int.Parse(customerid.ToString());
            //        int emplid = employeeid ?? default(int);

            //        MessageUserControl.TryRun(() =>
            //        {
            //            EmployeeController csysmgr = new EmployeeController();
            //            EmployeeItem item = csysmgr.Employee_FindByID(emplid);
            //            if (item == null)
            //            {
            //                LoggedUser.Text = "Unknown";
            //                throw new Exception("Logged employee cannot be found on file ");
            //            }
            //            else
            //            {
            //                LoggedUser.Text = item.LastName + ", " + item.FirstName;
            //            }
            //        });
            //    }
            //    else
            //    {
            //        Response.Redirect("~/SubSystems/Sales/AccessDenied.aspx");
            //    }
            //}
            //else
            //{
            //    Response.Redirect("~/Account/Login.aspx");
            //}

        }
    }
}