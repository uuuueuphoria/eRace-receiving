<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefaultReceiving.aspx.cs" Inherits="ERace_WebApp.SubSystems.Receiving.DefaultReceiving" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Receiving Subsystem</h1>
    <div class="row">
        <div class="col-10">
            <h2>Receiving</h2>
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
    <asp:GridView ID="PurchaseOrderDisplay" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:TemplateField HeaderText="OrderDetailID" Visible="false">
                <ItemTemplate>
                    <asp:Label runat="server" ID="OrderDetailID" Text='<%# Eval("OrderDetailID") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item" ItemStyle-HorizontalAlign="Left" ItemStyle-Width="300px" ItemStyle-BorderStyle="Solid" HeaderStyle-BorderStyle="Solid" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BorderColor="Black">
                <ItemTemplate>
                    <asp:Label runat="server" ID="ItemDescription" Text='<%# Eval("ItemDescription") %>' Width="300px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity Ordered" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="80px" ItemStyle-BorderStyle="Solid" HeaderStyle-BorderStyle="Solid" HeaderStyle-HorizontalAlign="Center" HeaderStyle-BorderColor="Black">
                <ItemTemplate>
                    <asp:Label runat="server" ID="QtyOrdered" Text='<%# Eval("QtyOrdered") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ordered Units" ItemStyle-BorderStyle="Solid" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="left" HeaderStyle-BorderStyle="Solid" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BorderColor="Black">
                <ItemTemplate>
                    <asp:Label runat="server" ID="OrderedUnits" Text='<%# Eval("OrderedUnits") %>' Width="180px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity Outstanding" ItemStyle-BorderStyle="Solid" ItemStyle-Width="120px" ItemStyle-HorizontalAlign="Center" HeaderStyle-BorderStyle="Solid" HeaderStyle-HorizontalAlign="Center" HeaderStyle-BorderColor="Black">
                <ItemTemplate>
                  <asp:Label runat="server" ID="QtyOutstanding" Text='<%# Eval("QtyOutstanding") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Received Units" ItemStyle-BorderStyle="Solid" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Left" HeaderStyle-BorderStyle="Solid" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BorderColor="Black" ItemStyle-Wrap="false">
                <ItemTemplate>
                    <asp:TextBox ID="UnitReceived" runat="server" Text='<%# Eval("UnitReceived") %>' Width="50px" TextMode="Number" step="1" min="0"></asp:TextBox>
                    <asp:Label runat="server" ID="Unit" Text='<%# Eval("Unit") %>' Width="130px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rejected Units / Reason" ItemStyle-BorderStyle="Solid" ItemStyle-Width="300px" ItemStyle-HorizontalAlign="Left" HeaderStyle-BorderStyle="Solid" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BorderColor="Black" ItemStyle-Wrap="false">
                <ItemTemplate>
                    <asp:Textbox runat="server" ID="UnitRejected" Text='<%# Eval("UnitRejected") %>' Width="60px" TextMode="Number" step="1" min="0"></asp:Textbox>
                    <asp:Textbox runat="server" ID="Reason" Text='<%# Eval("Reason") %>' Width="220px"></asp:Textbox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Salvaged Items" ItemStyle-BorderStyle="Solid" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Left" HeaderStyle-BorderStyle="Solid" HeaderStyle-HorizontalAlign="Left" HeaderStyle-BorderColor="Black">
                <ItemTemplate>
                    <asp:Textbox runat="server" ID="QtySalvaged" Text='<%# Eval("QtySalvaged") %>' Width="50px" TextMode="Number" step="1" min="0"></asp:Textbox>
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
    <br />
    <br />
    <div class="row">
        <div class="col-5">

        </div>
        <div class="col-2">
            <asp:Button ID="ForceClose" runat="server" Text="Force Close" Visible="false" />
        </div>
        <div class="col-5">
            <asp:TextBox ID="ForceCloseReason" runat="server" style="width:350px !important; height:100px" Visible="false"></asp:TextBox>
        </div>
    </div>
    <h2>Unordered Items</h2>
    <asp:GridView ID="UnorderedTable" runat="server" AutoGenerateColumns="False" AllowPaging="True" Visible="false">
        <Columns>
            <asp:TemplateField HeaderText="ItemID" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="ItemID"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" ID="ItemID"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Name">
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="ItemName"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" ID="ItemName"></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Left" BorderStyle="Solid" BackColor="Silver"></HeaderStyle>
                <ItemStyle HorizontalAlign="Left" BorderStyle="Solid" Width="200px" BackColor="#DFDFEA"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Vendor ID">
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="VendorID"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" ID="VendorID"></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Right" BorderStyle="Solid" BackColor="Silver"></HeaderStyle>
                <ItemStyle HorizontalAlign="Right" BorderStyle="Solid" Width="80px" BackColor="#DFDFEA"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity">
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="Quantity"></asp:TextBox>

                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" ID="Quantity"></asp:Label>


                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Right" BorderStyle="Solid" BackColor="Silver"></HeaderStyle>
                <ItemStyle HorizontalAlign="Right" BorderStyle="Solid" BackColor="#DFDFEA" Width="80px"></ItemStyle>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton runat="server" CommandName="Add" CausesValidation="false" ID="Add" Width="50px"><i class="far fa-plus-square" style="color:green;font-size:1rem"></i></asp:LinkButton>

                </ItemTemplate>

                <HeaderStyle HorizontalAlign="Center" BackColor="Silver" BorderStyle="Solid"></HeaderStyle>

                <ItemStyle HorizontalAlign="Center" BackColor="#DFDFEA" BorderStyle="Solid"></ItemStyle>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>






    <asp:ObjectDataSource ID="ActivePOODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetActivePurchaseOrderList" TypeName="ERaceSystem.BLL.PurchaseOrderController"></asp:ObjectDataSource>
</asp:Content>
