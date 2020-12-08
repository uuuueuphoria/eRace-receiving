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
using DMIT2018Common.UserControls;

#endregion
namespace ERaceSystem.BLL
{
    public class InvoiceController
    {
        public int Add_DetailsToInvoice(List<InvoiceItem> invoice, string subtotal, string tax, string total)
        {
            using (var context = new ERaceSystemContext())
            {
                int newInvoiceID = 0;
                List<string> errors = new List<string>();
                Invoice newinvoice = new Invoice();
                List<InvoiceDetail> newdetails = new List<InvoiceDetail>();
                InvoiceDetail itemdetail = new InvoiceDetail();

                //check invoice items were passed from web page
                if (invoice == null)
                {
                    errors.Add("There are no items selected for sale");
                }
                else
                {
                    //check calculated monetary values aclulated on web page are passed
                    if (subtotal.Length + tax.Length + total.Length== 0)
                    {
                        errors.Add("Items selected have can not be calculated. Please speak to a manager");
                    }
                    else
                    {
                        //TRX
                        //create instance of invoice
                        newinvoice.InvoiceDate = DateTime.Now;
                        newinvoice.SubTotal = decimal.Parse(subtotal);
                        newinvoice.Total = decimal.Parse(total);
                        newinvoice.GST = decimal.Parse(tax);

                        //create Invoice
                        context.Invoices.Add(newinvoice);
                        //load invoice details into list
                        foreach (InvoiceItem item in invoice)
                        {
                            itemdetail.InvoiceID = newinvoice.InvoiceID;
                            itemdetail.Price = item.Price;
                            itemdetail.ProductID = item.ProductID;

                            //is quantity amount valid
                            if (item.Quantity <= 0)
                            {
                                errors.Add("Value entered is invalid. Quantity must be greater than zero.");
                            }
                            else
                            {
                                itemdetail.Quantity = item.Quantity;
                            }
                            //Adding item to details list
                            context.InvoiceDetails.Add(itemdetail);
                        }
                        //Add Invoice details to invoice.
                        newinvoice.InvoiceDetails = newdetails;

                        //create Invoice
                        //context.Invoices.Add(newinvoice);


                        //get new invoice id
                        //var checkinvoice = (from inv in context.Invoices
                        //                where inv.InvoiceID == newinvoice.InvoiceID
                        //                select inv).FirstOrDefault();

                        var checkinvoice = (from inv in context.Invoices
                                            where inv.SubTotal.ToString().Equals(subtotal)
                                            && inv.GST.ToString().Equals(tax)
                                            && inv.Total.ToString().Equals(total)
                                            select inv).FirstOrDefault();
                        if (checkinvoice == null)
                        {
                            errors.Add("Unable to create new invoice.");
                        }
                        else
                        {
                            //Grab invoice ID
                            newInvoiceID = checkinvoice.InvoiceID;
                            //Adjust product inventory
                            foreach (InvoiceItem item in invoice)
                            {
                                //change quantity details
                                Product detail = new Product();

                                var existingProduct = (from prod in context.Products
                                                      where prod.ProductID == item.ProductID
                                                      select prod).FirstOrDefault();
                                //does product exist?
                                if (existingProduct == null)
                                {
                                    errors.Add("Product does not exist in the database");
                                }
                                else
                                {
                                    //adjust quantities
                                    detail.ProductID = existingProduct.ProductID;
                                    detail.ItemName = existingProduct.ItemName;
                                    detail.ItemPrice = decimal.Parse(item.Price.ToString());
                                    detail.QuantityOnHand = existingProduct.QuantityOnHand - item.Quantity;


                                //Adding adjusted quantity details
                                context.Products.Add(detail);
                                }                              
                            }
                        }

                        if (errors.Count > 0)
                        {
                            throw new BusinessRuleException("Create invoice error", errors);
                        }
                        else
                        {
                            context.SaveChanges();                           
                        }
                    }
                }               
                return newInvoiceID;
            }

        }
    }
}