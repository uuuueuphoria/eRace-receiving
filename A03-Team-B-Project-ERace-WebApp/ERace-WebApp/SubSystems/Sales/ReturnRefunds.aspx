<%@ Page Title="Returns/Refunds" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReturnRefunds.aspx.cs" Inherits="ERace_WebApp.SubSystems.Sales.ReturnRefunds" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="jumbotron">
            <h1>Refunds/ Returns </h1>
        </div>
        <div class="col-2">
            <asp:Label ID="Label7" runat="server" Text="User: "></asp:Label>&nbsp;
            <asp:Label ID="LoggedUser" runat="server"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="offset-1">
            <%--Add MessageUserControl--%>
                <uc1:MessageUserControl runat="server" id="MessageUserControl" />
        </div>
    </div>
    <div class="row">
        <asp:Label ID="InvoiceArg" runat="server" visible="false"></asp:Label>
    <asp:TextBox ID="OriginalInvoice" runat="server" TextMode="Number" ToolTip="Original Invoice #"></asp:TextBox>&nbsp;&nbsp;
        <asp:LinkButton ID="LookupInvoice" runat="server" CssClass="btn" OnClick="LookupInvoice_Click">Lookup Invoice</asp:LinkButton>
        <asp:LinkButton ID="Clear" runat="server"  CssClass="btn" OnClick="Clear_Click">Clear</asp:LinkButton>
    </div>

    <asp:ListView ID="RefundInvoiceList" runat="server" ></asp:ListView>





    <br />
                <br />
                <br />
                <br />
    <div class="row">
        <div class="col-med-2">
            <a class="btn btn-default" href="InStoreSales.aspx">In-Store Sales Page &raquo;</a>
       
            <a class="btn btn-default" href="Default.aspx">Default Page &raquo;</a>
        </div>
    </div>
   
</asp:Content>
