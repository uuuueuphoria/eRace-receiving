using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespace
using ERaceSystem.ViewModels;
using ERaceSystem.Entities;
using ERaceSystem.DAL;
using System.ComponentModel;
#endregion

namespace ERaceSystem.BLL.Purchasing
{
    [DataObject]
    public class VendorController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<VendorList> List_VendorNames()
        {
            using (var context = new ERaceSystemContext())
            {

                var results = from x in context.Vendors
                              orderby x.Name
                              select new VendorList
                              {
                                  ValueId = x.VendorID,
                                  DisplayText = x.Name
                              };
                return results.ToList();
            }
        }



        //public List<Vendor> Vendor_List()
        //{
        //    using (var context = new ERaceSystemContext())
        //    {
        //        return context.Vendors.ToList();
        //    }
        //}
    }
}
