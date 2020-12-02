<%@ Page Title="InStore Sales" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InStoreSales.aspx.cs" Inherits="ERace_WebApp.SubSystems.Sales.InStoreSales" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-10">
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
        <div class="col-md-6">
            <h3>Purchases</h3>


<%--            <div class="row">--%>
            <div class="col-4">
                <asp:DropDownList ID="CategoryDDL" runat="server" DataSourceID="CategoryODS" DataTextField="DisplayText" DataValueField="ValueId"
                     CssClass="form-control" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="CategoryDDL_SelectedIndexChanged">
                    <asp:ListItem Value="0">[Select a Category]</asp:ListItem>
                </asp:DropDownList>            
                <asp:DropDownList ID="ProductDDL" runat="server" AutoPostBack="True" DataSourceID="ProductODS" DataTextField="DisplayText" DataValueField="ValueId"
                     CssClass="form-control" AppendDataBoundItems="false">
                    <asp:ListItem Value="0">[Select a Product To Add]</asp:ListItem>

                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Text="Quantity:"></asp:Label>
                <asp:TextBox ID="Quantity" runat="server" TextMode="Number" PlaceHoler="Qty"></asp:TextBox>
                <asp:LinkButton ID="AddButton" runat="server"  OnClick="AddButton_Click" > Add
                     <i class="fa fa-plus" style="color:blue; font-size:2em;"></i>&nbsp;
                </asp:LinkButton>
            </div>
            <div class="row">
                <asp:GridView ID="ProductGV" runat="server" AutoGenerateColumns="False">

                    <Columns>
                        <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                                <asp:Label ID="ProductID" runat="server" Text='<%# Eval("ProductID") %>' Visible="false"></asp:Label>
                                <asp:Label ID="Product" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>&nbsp;&nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:TextBox runat="server" ID ="QuantityBought"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                 <asp:LinkButton ID="Refresh" runat="server"
                                    CssClass="btn" OnClick="Refresh_Click" >
                                     <i class="fas fa-sync" style="color:forestgreen; font-size:2em;"></i>&nbsp;
                                </asp:LinkButton>&nbsp;&nbsp;
                                <asp:Label ID="Price" runat="server" Text='<%# string.Format("{0:0.00}",Eval("ItemPrice")) %>'></asp:Label>&nbsp;&nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                                <asp:Label ID="Amount" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>&nbsp;&nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="X">
                            <ItemTemplate>
                                <asp:LinkButton ID="RemoveProduct" runat="server"
                                                CssClass="btn" OnClick="RemoveProduct_Click"  >
                                    <i class="fa fa-times" style="color:red; font-size:2em;"></i>&nbsp;
                                   
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>

        <%--</div>--%>

    <%--    ODS Controls--%> 
            <asp:ObjectDataSource ID="CategoryODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListCategories" TypeName="ERaceSystem.BLL.CategoryController"></asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ProductODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ProductsByCategory" TypeName="ERaceSystem.BLL.ProductController">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CategoryDDL" PropertyName="SelectedValue" Name="categoryid" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:ObjectDataSource>


             <div class="row">
                <div class="col-med-2">
                    <a class="btn btn-default" href="InStoreSales.aspx">In-Store Sales Page &raquo;</a>
       
                    <a class="btn btn-default" href="Default.aspx">Default Page &raquo;</a>
                </div>
            </div>
           
        </div>
    </div>
</asp:Content>
