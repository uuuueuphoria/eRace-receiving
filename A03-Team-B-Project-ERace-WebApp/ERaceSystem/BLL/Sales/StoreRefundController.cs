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
using ERaceSystem.ViewModels.Sales;

#endregion

namespace ERaceSystem.BLL
{
    [DataObject]
    public class StoreRefundController
    {
        //[DataObjectMethod(DataObjectMethodType.Select,false)]
        //public InvoiceList Invoice_FindById(int invoiceid)
        //{
        //    using (var context = new ERaceSystemContext())
        //    {
        //        var invoice = (from inv in context.Invoices
        //                      where inv.InvoiceID == invoiceid
        //                      select new InvoiceList
        //                      {
        //                         InvoiceID=inv.InvoiceID,
        //                         InvoiceDate=inv.InvoiceDate,
        //                         //EmployeeID = inv.EmployeeID,
        //                         SubTotal = inv.SubTotal,
        //                         GST = inv.GST,
        //                         Total = inv.Total
        //                      }).FirstOrDefault();

        //        List<InvoiceItem> invoicedetails = new List<InvoiceItem>();
        //        var detail = (from det in context.InvoiceDetails
        //                          where det.InvoiceID == invoiceid
        //                          select new InvoiceItem
        //                          {
        //                              InvoiceDetailID = det.InvoiceDetailID,
        //                              InvoiceID = det.InvoiceID,
        //                              ProductID = det.ProductID,
        //                              Quantity = det.Quantity,
        //                              Price = det.Price
        //                          }).ToList();
        //        Invoice result = new Invoice();

        //        result.InvoiceID = invoice.InvoiceID;
        //        result.InvoiceDate = invoice.InvoiceDate;
        //        //EmployeeID = inv.EmployeeID,
        //        result.SubTotal = invoice.SubTotal;
        //        result.GST = invoice.GST;
        //        result.Total = invoice.Total;
        //        result.InvoiceDetails = new List<InvoiceDetail>();
        //        foreach (InvoiceItem item in detail)
        //        {
        //            InvoiceDetail refunditem = new InvoiceDetail();

        //            refunditem.InvoiceDetailID= item.InvoiceDetailID;
        //            refunditem.InvoiceID = item.InvoiceID;
        //            refunditem.ProductID = item.ProductID;
        //            refunditem.Quantity = item.Quantity;
        //            refunditem.Price = item.Price;

        //            result.InvoiceDetails.Add(refunditem);
        //        }
              
        //        return result;
        //    }
        //}
    }
}
