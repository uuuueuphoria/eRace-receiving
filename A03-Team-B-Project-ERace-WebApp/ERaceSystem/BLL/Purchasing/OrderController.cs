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

    }
}
