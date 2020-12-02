using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


#region Additional namespaces
using ERaceSystem.DAL;
using ERaceSystem.Entities;
using System.ComponentModel;
using ERaceSystem.ViewModels;
using ERaceSystem.ViewModels.Receiving;

#endregion
namespace ERaceSystem.BLL
{
    [DataObject]
    public class PurchaseOrderController
    {
        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<SelectionList>GetActivePurchaseOrderList()
        {
            using (var context = new ERaceSystemContext())
            {
                var result = from x in context.Orders
                             where x.Closed == false && x.OrderNumber != null && x.OrderDate != null
                             orderby x.OrderNumber
                             select new SelectionList
                             {
                                 ValueId = (int)x.OrderNumber,
                                 DisplayText = x.OrderNumber + " - " + x.Vendor.Name
                             };
                return result.ToList();
            }

        }
    }
}
