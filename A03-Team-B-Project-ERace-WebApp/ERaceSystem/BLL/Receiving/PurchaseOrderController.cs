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
                                 ValueId = (int)x.OrderID,
                                 DisplayText = x.OrderNumber + " - " + x.Vendor.Name
                             };
                return result.ToList();
            }

        }

        public VendorDetails GetVendorDetails(int OrderId)
        {
            using (var context = new ERaceSystemContext())
            {
                var result = from x in context.Orders
                             where x.OrderID == OrderId
                             select new VendorDetails
                             {
                                 VendorID = x.Vendor.VendorID,
                                 Name = x.Vendor.Name,
                                 Address = x.Vendor.Address + " " + x.Vendor.City,
                                 Phone = x.Vendor.Phone,
                                 Contact = x.Vendor.Contact
                             };
                return result.FirstOrDefault();
            }
        }

        public List<PurchaseOrderDetail> GetPurchaseOrderDetails(int OrderId)
        {
            using (var context = new ERaceSystemContext())
            {
                var result = from x in context.OrderDetails
                             where x.OrderID == OrderId
                             select new PurchaseOrderDetail
                             {
                                 OrderDetailID = x.OrderDetailID,
                                 ItemDescription = x.Product.ItemName,
                                 OrderedUnits = x.OrderUnitSize > 1 ? x.Quantity + " x case of " + x.OrderUnitSize : x.Quantity + " ea",
                                 QtyOrdered = x.Quantity * x.OrderUnitSize,
                                 Unit = x.OrderUnitSize > 1 ? " x case of " + x.OrderUnitSize : " ea",
                                 QtyOutstanding = x.Quantity * x.OrderUnitSize - (from y in context.ReceiveOrderItems
                                                                                  where y.OrderDetailID == x.OrderDetailID
                                                                                  select y.ItemQuantity).FirstOrDefault(),
                                 UnitReceived = null,
                                 UnitRejected = null,
                                 Reason = "",
                                 QtySalvaged=null
                             };
                return result.ToList();
            }
        }
    }
}
