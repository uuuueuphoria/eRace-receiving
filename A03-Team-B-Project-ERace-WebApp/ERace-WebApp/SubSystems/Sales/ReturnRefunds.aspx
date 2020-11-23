<%@ Page Title="Returns/Refunds" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReturnRefunds.aspx.cs" Inherits="ERace_WebApp.SubSystems.Sales.ReturnRefunds" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="jumbotron">
            <h1>InStore Sales</h1>
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
         <a class="btn btn-default" href="InStoreSales.aspx">In-Store Sales Page &raquo;</a>
    </div>
     <div class="row">
         <a class="btn btn-default" href="Default.aspx">Default Page &raquo;</a>
    </div>
</asp:Content>
