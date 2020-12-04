<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Purchasing.aspx.cs" Inherits="ERace_WebApp.SubSystems.Purchasing.Purchasing" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Purchasing Order</h1>
    </div>
    <div class="row">
        <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    </div>
    <asp:Label ID="Label1" runat="server" Text="Vendor"></asp:Label>

    <asp:DropDownList ID="DropDownList1" runat="server"  
        DataSourceID="VendorDDLODS" DataTextField="DisplayText" DataValueField="ValueId" >
        <asp:ListItem Value="0" Text="Vendor Name"></asp:ListItem>
    </asp:DropDownList>
    <asp:ObjectDataSource ID="VendorDDLODS" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="List_VendorNames" 
        TypeName="ERaceSystem.BLL.Purchasing.VendorController"

        >
        
    </asp:ObjectDataSource>

</asp:Content>
