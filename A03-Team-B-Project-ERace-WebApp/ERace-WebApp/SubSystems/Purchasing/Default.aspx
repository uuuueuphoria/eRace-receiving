<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ERace_WebApp.SubSystems.Receiving.Default" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-10">
            <h1>Purchasing Subsystems</h1>
        </div>
        <div class="col-2">
            <asp:Label ID="Label1" runat="server" Text="User: "></asp:Label>&nbsp;
            <asp:Label ID="LoggedUser" runat="server"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="offset-1">
            <uc1:MessageUserControl runat="server" ID="MessageUserControl" />
        </div>
    </div>

</asp:Content>
