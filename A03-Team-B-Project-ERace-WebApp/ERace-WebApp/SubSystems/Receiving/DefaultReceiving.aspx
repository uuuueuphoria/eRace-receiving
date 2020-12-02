<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultReceiving.aspx.cs" Inherits="ERace_WebApp.SubSystems.Receiving.DefaultReceiving" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-10">
            <h1>Receiving Subsystems</h1>
        </div>
        <div class="col-2">
            <asp:Label ID="Label1" runat="server" Text="User: "></asp:Label>&nbsp;
            <asp:Label ID="LoggedUser" runat="server"></asp:Label>
        </div>
    </div>
    <br />
    <div class="row">
        <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
    </div>
    <br />
    <div class="row">
        <div class="col-4">
            <asp:DropDownList ID="PurchaseOrderDropDownList" runat="server" DataSourceID="ActivePOODS" DataTextField="DisplayText" DataValueField="ValueId" AppendDataBoundItems="true">
                <asp:ListItem Value="-1" Text="Select a PO"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Button ID="Open" runat="server" Text="Open" OnClick="Open_Click" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-2">
            <asp:Label ID="VendorName" runat="server" ></asp:Label>
        </div>
        <div class="col-8">
            <asp:Label ID="VendorAddress" runat="server" ></asp:Label>
        </div>
        <div class="col-2">
            <asp:Button ID="ReceiveShipment" runat="server" Text="Receive Shipment" style="background-color:aqua"/>
        </div>
    </div>
     <div class="row">
        <div class="col-2">
            <asp:Label ID="VendorContact" runat="server"></asp:Label>
        </div>
         <div class="col-10">
              <asp:Label ID="PhoneNumber" runat="server"></asp:Label>
         </div>
    </div>
    <br />






    <asp:ObjectDataSource ID="ActivePOODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetActivePurchaseOrderList" TypeName="ERaceSystem.BLL.PurchaseOrderController"></asp:ObjectDataSource>
</asp:Content>
