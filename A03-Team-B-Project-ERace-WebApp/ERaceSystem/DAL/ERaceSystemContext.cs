namespace ERaceSystem.DAL
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    #region Additional namesapces
    using ERaceSystem.Entities;
    #endregion

    internal partial class ERaceSystemContext : DbContext
    {
        public ERaceSystemContext()
            : base("name=eRaceDB")
        {
        }

        public virtual DbSet<CarClass> CarClasses { get; set; }
        public virtual DbSet<Car> Cars { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Certification> Certifications { get; set; }
        public virtual DbSet<DatabaseVersion> DatabaseVersions { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<InvoiceDetail> InvoiceDetails { get; set; }
        public virtual DbSet<Invoice> Invoices { get; set; }
        public virtual DbSet<Member> Members { get; set; }
        public virtual DbSet<OrderDetail> OrderDetails { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<Position> Positions { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<RaceDetail> RaceDetails { get; set; }
        public virtual DbSet<RaceFee> RaceFees { get; set; }
        public virtual DbSet<RacePenalty> RacePenalties { get; set; }
        public virtual DbSet<Race> Races { get; set; }
        public virtual DbSet<ReceiveOrderItem> ReceiveOrderItems { get; set; }
        public virtual DbSet<ReceiveOrder> ReceiveOrders { get; set; }
        public virtual DbSet<ReturnOrderItem> ReturnOrderItems { get; set; }
        public virtual DbSet<StoreRefund> StoreRefunds { get; set; }
        public virtual DbSet<UnOrderedItem> UnOrderedItems { get; set; }
        public virtual DbSet<VendorCatalog> VendorCatalogs { get; set; }
        public virtual DbSet<Vendor> Vendors { get; set; }

       
             
            

               
        
    }
}
