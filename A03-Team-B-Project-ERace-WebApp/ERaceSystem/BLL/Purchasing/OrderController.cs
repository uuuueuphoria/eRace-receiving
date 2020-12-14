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
using ERaceSystem.ViewModels.Purchasing;
using DMIT2018Common.UserControls;
#endregion

namespace ERaceSystem.BLL.Purchasing
{
    public class OrderController
    {
        public ProductList GetProductList(int productid, int vendorid)
        {
            using (var context = new ERaceSystemContext())
            {
                var exist = (from x in context.VendorCatalogs
                             where x.VendorID == vendorid && x.ProductID == productid
                             select new ProductList
                             {
                                 ProductID = x.ProductID,
                                 ItemName = x.Product.ItemName,
                                 ReOrderLevel = x.Product.ReOrderLevel,
                                 QuantityOnHand = x.Product.QuantityOnHand,
                                 QuantityOnOrder = x.Product.QuantityOnOrder,
                                 UnitSize = x.OrderUnitSize,
                                 UnitCost = x.OrderUnitCost,
                                 Size = x.OrderUnitType + " (" + x.OrderUnitSize + ")"
                             }).FirstOrDefault();
                return exist;
            }
        }
        public OrderList GetVendorOrder(int vendorid, int employeeid)
        {
            using (var context = new ERaceSystemContext())
            {
                var exists = (from x in context.Orders
                              where x.VendorID == vendorid && x.OrderNumber == null
                              select x).FirstOrDefault();
                var exist = new OrderList();
                if (exists == null)
                {
                    Order newOrder = new Order();
                    newOrder.OrderNumber = null;
                    newOrder.OrderDate = null;
                    newOrder.EmployeeID = employeeid;
                    newOrder.TaxGST = 0;
                    newOrder.SubTotal = 0;
                    newOrder.VendorID = vendorid;
                    newOrder.Closed = false;
                    newOrder.Comment = null;
                    context.Orders.Add(newOrder);
                    context.SaveChanges();
                }
                exist = (from x in context.Orders
                         where x.VendorID == vendorid && x.OrderNumber == null
                         select new OrderList
                         {
                             OrderID = x.OrderID,
                             OrderNumber = x.OrderNumber,
                             OrderDate = x.OrderDate,
                             EmployeeID = x.EmployeeID,
                             TaxGST = x.TaxGST,
                             SubTotal = x.SubTotal,
                             VendorID = x.VendorID,
                             Closed = x.Closed,
                             Comment = x.Comment,
                             ItemList = (from y in x.OrderDetails
                                         select new OrderItemList
                                         {
                                             OrderDetailID = y.OrderDetailID,
                                             Product = y.Product.ItemName,
                                             OrderQty = y.Quantity,
                                             UnitSize = y.OrderUnitSize,
                                             UnitCost = y.Cost
                                         }).ToList()
                         }).FirstOrDefault();
                return exist;
            }
        }
    }
}
