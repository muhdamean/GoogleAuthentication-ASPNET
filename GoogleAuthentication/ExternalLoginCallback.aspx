<%@ Page Title="Google Login Response" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExternalLoginCallback.aspx.cs" Inherits="GoogleAuthentication.ExternalLoginCallback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2><%: Title %>.</h2>
    <h3>Your login with google status.</h3>
    <hr />
    <div>
        <asp:Label ID="lblMessage" CssClass="label control-label" runat="server"></asp:Label>
    </div>
</asp:Content>
