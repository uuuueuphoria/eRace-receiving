﻿using System;
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

        public void DeleteAllUnorderedItem(int OrderId)
        {
            using (var context = new ERaceSystemContext())
            {

                List<UnOrderedItem> exists = (from x in context.UnOrderedItems
                                              where x.OrderID == OrderId
                                              select x).ToList();
                if (exists != null)
                {
                    foreach(UnOrderedItem item in exists)
                    {
                        context.UnOrderedItems.Remove(item);
                    }
                }
                //commit
                context.SaveChanges();
            }
        }

        public void DeleteUnorderedItem(int ItemId)
        {
            using (var context = new ERaceSystemContext())
            {

                UnOrderedItem exists = (from x in context.UnOrderedItems
                                              where x.ItemID == ItemId
                                              select x).FirstOrDefault();
                if (exists != null)
                {
                    context.UnOrderedItems.Remove(exists);
                }
                //commit
                context.SaveChanges();
            }
        }

        public void InsertUnorderedItem(UnorderedItem item)
        {
            using (var context = new ERaceSystemContext())
            {
                var exists = (from x in context.Orders
                             where x.OrderID == item.OrderID && x.Closed == false
                             select x).FirstOrDefault();
                if (exists==null)
                {
                    throw new Exception("The current order does not exist.");
                }
                else
                {
                    UnOrderedItem temp = new UnOrderedItem();
                    temp.ItemName = item.ItemName;
                    temp.VendorProductID = item.VendorProductID;
                    temp.Quantity = item.Quantity;
                    temp.OrderID = item.OrderID;
                    context.UnOrderedItems.Add(temp);
                    //commit
                    context.SaveChanges();
                }
            }
        }
        public List<UnorderedItem> GetUnorderedItem(int OrderId)
        {
            using (var context = new ERaceSystemContext())
            {
                var result = from x in context.UnOrderedItems
                             where x.OrderID == OrderId
                             select new UnorderedItem
                             {
                                 ItemID=x.ItemID,
                                 ItemName=x.ItemName,
                                 VendorProductID=x.VendorProductID,
                                 Quantity=x.Quantity
                             };
                return result.ToList();
            }
        }
    }
}
