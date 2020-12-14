using System;
using ERace_WebApp.Security;
using ERaceSystem.BLL;
using ERaceSystem.BLL.Purchasing;
using ERaceSystem.ViewModels;
using ERaceSystem.Entities;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using ERaceSystem.ViewModels.Purchasing;

namespace ERace_WebApp.SubSystems.Purchasing
{
    public partial class Purchasing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {
                if (User.IsInRole("Director") || User.IsInRole("Office Manager"))
                {
                    var username = User.Identity.Name;
                    SecurityController securitymgr = new SecurityController();
                    int? employeeid = securitymgr.GetCurrentUserEmployeeId(username);
                    if (employeeid.HasValue)
                    {
                        MessageUserControl.TryRun(() => {
                            EmployeeController sysmgr = new EmployeeController();
                            EmployeeItem info = sysmgr.Employee_FindByID(employeeid.Value);
                            LoggedUser.Text = info.FirstName + " " + info.LastName;
                        });
                    }
                    else
                    {
                        LoggedUser.Text = "Visitor/Unauthorized user";
                        MessageUserControl.ShowInfo("UnRegistered User", "Logged employee cannot be found on file");
                    }
                }
                else
                {
                    Response.Redirect("~/SubSystems/Purchasing/AccessDenied.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }

        protected void Select_Click(object sender, EventArgs e)
        {
            var username = User.Identity.Name;
            SecurityController securitymgr = new SecurityController();
            int? employeeid = securitymgr.GetCurrentUserEmployeeId(username);
            EmployeeItem info = new EmployeeItem();
            if (employeeid.HasValue)
            {
                MessageUserControl.TryRun(() => {
                    EmployeeController sysmgrUser = new EmployeeController();
                    info = sysmgrUser.Employee_FindByID(employeeid.Value);
                });
            }


            VendorController vendorController = new VendorController();
            //VendorInfo vendorinfo = vendorController.List_VendorInfo(int.Parse(VendorNameDDL.SelectedValue));
            //Vendor vendorinfo = VendorController.List_VendorInfo(int.Parse(VendorNameDDL.SelectedValue));
            Vendor vendorinfo = null;            
            VendorInformation.Text = vendorinfo.Name + " - " + vendorinfo.Contact + " - " + vendorinfo.Phone;
            


        }


    }
}