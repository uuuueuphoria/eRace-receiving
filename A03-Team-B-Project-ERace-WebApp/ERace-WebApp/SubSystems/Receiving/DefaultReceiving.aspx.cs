using System;
using ERace_WebApp.Security;
using ERaceSystem.BLL;
using ERaceSystem.ViewModels;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ERaceSystem.ViewModels.Receiving;

namespace ERace_WebApp.SubSystems.Receiving
{
    public partial class DefaultReceiving : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //is the user logged in
            if (Request.IsAuthenticated)
            {
                if (User.IsInRole("Clerk") || User.IsInRole("Food Service"))
                {
                    SecurityController ssysmgr = new SecurityController();
                    int? employeeid = ssysmgr.GetCurrentUserEmployeeId(User.Identity.Name);
                    int id = employeeid ?? default(int);
                    MessageUserControl.TryRun(() =>
                    {
                        EmployeeController csysmgr = new EmployeeController();
                        EmployeeItem item = csysmgr.Employee_FindByID(id);
                        if (item == null)
                        {
                            LoggedUser.Text = "Visitor/Unauthorized user";
                            throw new Exception("Logged employee cannot be found on file ");
                        }
                        else
                        {
                            LoggedUser.Text = item.LastName + ", " + item.FirstName;
                        }
                    });
                }
                else
                {
                    Response.Redirect("~/SubSystems/Receiving/AccessDenied.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }

        }

        protected void Open_Click(object sender, EventArgs e)
        {
            var controller = new PurchaseOrderController();
            if (int.Parse(PurchaseOrderDropDownList.SelectedValue) == -1)
            {
                VendorName.Text = "";
                VendorAddress.Text = "";
                VendorContact.Text ="";
                PhoneNumber.Text = "";
            }
            else
            {
                MessageUserControl.TryRun(() =>
                {
                    VendorDetails vendorDetails = controller.GetVendorDetails(int.Parse(PurchaseOrderDropDownList.SelectedValue));
                    VendorName.Text = vendorDetails.Name;
                    VendorAddress.Text = vendorDetails.Address;
                    VendorContact.Text = vendorDetails.Contact;
                    string area = vendorDetails.Phone.Substring(0, 3);
                    string major = vendorDetails.Phone.Substring(3, 3);
                    string minor = vendorDetails.Phone.Substring(6);
                    PhoneNumber.Text = string.Format("{0}-{1}-{2}",area,major,minor);
                }, "Open the Purchase Order", "Display Vendor Details");
            }
         

        }
    }
}