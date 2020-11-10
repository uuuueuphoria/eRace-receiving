<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ERace_WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Team-B</h1>
        <asp:Image ID="Image1" runat="server" src="logo.png" Height="191px" Width="218px"/>
        <p class="lead">Welcome to Team B Project. We are Wanlun, Jing and Ian.</p>
        <p>This is the E-Race Web Application:</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="row">
            <div class="offset-1">
                <h2>Wanlun Xue</h2>
                <h3>Receiving Subsystem Scenario</h3>
                <section>
                    <div class="row">
                        <p>Setup</p>
                        <p>Security Responsibilities</p>
                        <p>
                            <ul>Known Bugs list
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                        </p>
                    </div>
                </section>
                <p>
                <a class="btn btn-default" href="SubSystems/Receiving/Default.aspx">Receiving Page &raquo;</a>
            </p>
            </div>
        </div>
        <div class="row">
             <div class="offset-1">
                <h2>Jing Di</h2>
                <h3>Purchasing Subsystem Scenario</h3>
                <section>
                    <div class="row">
                        <p>Setup</p>
                        <p>Security Responsibilities</p>
                        <p>
                            <ul>Known Bugs list
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                        </p>
                    </div>
                </section>
                <p>
                    <a class="btn btn-default" href="SubSystems/Purchasing/Default.aspx">Purchasing Page &raquo;</a>
                </p>
             </div>   
        </div>
        <div class="row">
            <div class="offset-1">
                <h2>Ian Ghettuba</h2>
                <h3>Sales Subsystem Scenario</h3>
                <section>
                    <div class="row">
                        <p>Setup</p>
                        <p>Security Responsibilities</p>
                        <p>
                            <ul>Known Bugs list
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                                <li></li>
                            </ul>
                        </p>
                    </div>
                </section>
                <p>
                    <a class="btn btn-default" href="SubSystems/Sales/Default.aspx">Sales Page &raquo;</a>
                </p>
            </div>
           
            
        </div>
    </div>

</asp:Content>
