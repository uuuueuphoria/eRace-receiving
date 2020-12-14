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
        <asp:Label ID="VendorInformation" runat="server" Text="Vendor Name - Contact - Phone"></asp:Label>



    </div>
                    <div class="col-md-4">
                    <asp:Repeater ID="RepeaterInventory" runat="server" ItemType="ERaceSystem.ViewModels.Purchasing.InventoryList">
                        <HeaderTemplate>
                            <h3>Inventory</h3>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <h5><strong><%# Item.Description %></strong></h5>
                            <asp:ListView ID="ListView1" DataSource="<%# Item.ProductList %>" runat="server" OnItemCommand="TracksSelectionList_ItemCommand">
                                <AlternatingItemTemplate>
                                    <tr style="background-color: #FFFFFF; color: #284775;">
                                        <td>
                                            <asp:LinkButton ID="AddtoPlaylist" runat="server"
                                                CssClass="btn" CommandArgument='<%# Eval("ProductID") %>'>
                                            <span aria-hidden="true" class="glyphicon glyphicon-plus">&nbsp;</span>
                                            </asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:Label Text='<%# Eval("ItemName") %>' runat="server" ID="ItemNameLabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("ReOrderLevel") %>' runat="server" ID="ReOrderLevelLabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("QuantityOnHand") %>' runat="server" ID="QuantityOnHandLabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("QuantityOnOrder") %>' runat="server" ID="QuantityOnOrderlabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("Size") %>' runat="server" ID="SizeLabel" /></td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <EmptyDataTemplate>
                                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                                        <tr>
                                            <td>No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <tr style="background-color: #E0FFFF; color: #333333;">
                                        <td>
                                            <asp:LinkButton ID="AddtoPlaylist" runat="server"
                                                CssClass="btn" CommandArgument='<%# Eval("ProductID") %>'>
                            <span aria-hidden="true" class="glyphicon glyphicon-plus">&nbsp;</span>
                                            </asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:Label Text='<%# Eval("ItemName") %>' runat="server" ID="ItemNameLabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("ReOrderLevel") %>' runat="server" ID="ReOrderLevelLabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("QuantityOnHand") %>' runat="server" ID="QuantityOnHandLabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("QuantityOnOrder") %>' runat="server" ID="QuantityOnOrderlabel" /></td>
                                        <td>
                                            <asp:Label Text='<%# Eval("Size") %>' runat="server" ID="SizeLabel" /></td>

                                    </tr>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                                    <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
                                                        <th runat="server"></th>
                                                        <th runat="server">Product</th>
                                                        <th runat="server">ReOrder</th>
                                                        <th runat="server">In Stock</th>
                                                        <th runat="server">On Order</th>
                                                        <th runat="server">Size</th>
                                                    </tr>
                                                    <tr runat="server" id="itemPlaceholder"></tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>
                            </asp:ListView>
                        </ItemTemplate>
                        <FooterTemplate>
                            &copy; DMIT2028 NAIT Course all rights reserved
                        </FooterTemplate>
                    </asp:Repeater>
                </div>

    <asp:ObjectDataSource ID="VendorNameDDLODS" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="List_VendorNames" 
        TypeName="ERaceSystem.BLL.Purchasing.VendorController">

    </asp:ObjectDataSource>

</asp:Content>

