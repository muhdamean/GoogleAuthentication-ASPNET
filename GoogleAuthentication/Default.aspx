<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GoogleAuthentication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET Google Authentication Implementation using ASP.NET 4.8 web framework for building great Web sites and Web applications.
            <br />
           <strong>NOTE:</strong> This demo auth is working for Google OAuth 2.0 only. as at 2022-05-27 for ASP.NET 4.8 and below. <br />
            Check ReadMe.txt file for guide.
        </p>
        <p><a href="login.aspx" class="btn btn-primary btn-lg">Click to Login here &raquo;</a></p>
    </div>
</asp:Content>
