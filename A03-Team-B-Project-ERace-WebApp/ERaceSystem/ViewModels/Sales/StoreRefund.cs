using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ERaceSystem.ViewModels.Sales
{
    public class StoreRefund
    {
        public int RefundID { get; set; }
        public int InvoiceID { get; set; }
        public int ProductID { get; set; }
        public int OriginalInvoiceID { get; set; }
        public string Reason { get; set; }
    }
}
