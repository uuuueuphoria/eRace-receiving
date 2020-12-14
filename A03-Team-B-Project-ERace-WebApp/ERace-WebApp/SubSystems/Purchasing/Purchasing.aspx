<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Purchasing.aspx.cs" Inherits="ERace_WebApp.SubSystems.Purchasing.Purchasing" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-10">
            <h2>Receiving</h2>
        </div>
        <div class="col-2">
            <asp:Label ID="Label2" runat="server" Text="User: "></asp:Label>&nbsp;
            <asp:Label ID="LoggedUser" runat="server"></asp:Label>
        </div>
    </div>
    <br />
    <div class="row">
        <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    </div>

    <div class="row">
        <asp:Label ID="Label1" runat="server" Text="Vendor:"></asp:Label>
        <asp:DropDownList ID="VendorNameDDL" runat="server" 
            DataSourceID="VendorNameDDLODS" 
            DataTextField="DisplayText" 
            DataValueField="ValueId"
            AppendDataBoundItems="true">
            <asp:ListItem Value="0" Text="Select a Vendor"></asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Select" runat="server" Text="Select" OnClick="Select_Click" />

        <asp:Button ID="PlaceOrder" runat="server" Text="Place Order" />
        <asp:Button ID="Save" runat="server" Text="Save" />
        <asp:Button ID="Cancel" runat="server" Text="Cancel" />
        <asp:Button ID="Delete" runat="server" Text="Remove" />

        <asp:Label ID="VendorInformation" runat="server" Text="Vendor Name - Contact - Phone"></asp:Label>
        <asp:Label ID="SubtotalText" runat="server" Text="Subtotal"></asp:Label>
        <asp:TextBox ID="Subtotal" runat="server" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="Comments" runat="server" Height="57px" Width="414px"></asp:TextBox>
        <asp:Label ID="TaxText" runat="server" Text="Tax"></asp:Label>
        <asp:Label ID="TotalText" runat="server" Text="Total"></asp:Label>
        <asp:TextBox ID="Tax" runat="server" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="Total" runat="server" Enabled="false"></asp:TextBox>
        <asp:ListView ID="ListView1" runat="server"></asp:ListView>
        <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
    </div>

    <asp:ObjectDataSource ID="VendorNameDDLODS" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="List_VendorNames" 
        TypeName="ERaceSystem.BLL.Purchasing.VendorController">

    </asp:ObjectDataSource>

</asp:Content>

