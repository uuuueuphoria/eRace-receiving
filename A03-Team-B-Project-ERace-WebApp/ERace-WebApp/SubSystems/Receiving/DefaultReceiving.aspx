<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultReceiving.aspx.cs" Inherits="ERace_WebApp.SubSystems.Receiving.DefaultReceiving" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-10">
            <h1>Receiving</h1>
        </div>
        <div class="col-2">
            <asp:Label ID="Label1" runat="server" Text="User: "></asp:Label>&nbsp;
            <asp:Label ID="LoggedUser" runat="server"></asp:Label>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-8">
            <asp:DropDownList ID="PurchaseOrderDropDownList" runat="server" DataSourceID="ActivePOODS" DataTextField="DisplayText" DataValueField="ValueId" AppendDataBoundItems="true">
                <asp:ListItem Value="-1" Text="Select a PO"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Button ID="Open" runat="server" Text="Open" OnClick="Open_Click" />
        </div>
        <div class="col-4">
            <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
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
    <asp:GridView ID="PurchaseOrderDisplay" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:TemplateField AccessibleHeaderText="Item">
                <ItemTemplate>
                    <asp:Label runat="server" ID="ItemName"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField AccessibleHeaderText="Quantity Ordered">
                <ItemTemplate>
                    <asp:Label runat="server" ID="QtyOrdered"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField AccessibleHeaderText="Ordered Units">
                <ItemTemplate>
                    <asp:Label runat="server" ID="OrderedUnit"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField AccessibleHeaderText="Quantity Outstanding">
                <ItemTemplate>
                    <asp:Label runat="server" ID="QtyOutstanding"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField AccessibleHeaderText="Received Units">
                <ItemTemplate>
                    <asp:TextBox ID="UnitReceived" runat="server"></asp:TextBox>
                    <asp:Label runat="server" ID="Unit"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField AccessibleHeaderText="Rejected Units / Reason">
                <ItemTemplate>
                    <asp:Textbox runat="server" ID="UnitRejected"></asp:Textbox>
                    <asp:Textbox runat="server" ID="Reason"></asp:Textbox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField AccessibleHeaderText="Salvaged Items">
                <ItemTemplate>
                    <asp:Textbox runat="server" ID="QtySalvaged"></asp:Textbox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
    </asp:GridView>






    <asp:ObjectDataSource ID="ActivePOODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetActivePurchaseOrderList" TypeName="ERaceSystem.BLL.PurchaseOrderController"></asp:ObjectDataSource>
</asp:Content>
