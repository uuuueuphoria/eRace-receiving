<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ERace_WebApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>WebConnectionString Details</h3>
    <p>You can copy the code below to your WebConnectionStrings.config file to connect to database</p>
    <?xml version="1.0"?>
    <connectionStrings>
    <add name="eRaceDB"
       connectionString="Data Source=.; Initial Catalog=eRace; Integrated Security=true;"
       providerName="System.Data.SqlClient"/>
    <add name="DefaultConnection" 
       connectionString="Data Source=.;Initial Catalog=eRace;Integrated Security=True"
       providerName="System.Data.SqlClient" />
    </connectionStrings>
    <br />
    <br />
    <h3>Security login settings</h3>
    <ul>
        <li>Role: </li>
        <li>User Name: </li>
        <li>Password: </li>
    </ul>
    <ul>
        <li>Role: </li>
        <li>User Name: </li>
        <li>Password: </li>
    </ul>
    <ul>
        <li>Role: </li>
        <li>User Name: </li>
        <li>Password: </li>
    </ul>
    <ul>
        <li>Role: </li>
        <li>User Name: </li>
        <li>Password: </li>
    </ul>
    <ul>
        <li>Role: </li>
        <li>User Name: </li>
        <li>Password: </li>
    </ul>
</asp:Content>
