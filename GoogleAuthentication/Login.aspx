<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GoogleAuthentication.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h4>Kindly login or signin using google.</h4>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <div class="row">
            <asp:Label ID="lblMessage" CssClass="label control-label" runat="server"></asp:Label>
            <br />
            <div class="form-group">
                <label class="">Email:</label>
                <input type="text" id="txtUsername" class="form-control" runat="server" placeholder="enter your email" required/>
            </div>
            <div class="form-group">
                <label class="">Password:</label>
                <input type="password" id="txtPassword" class="form-control" runat="server" placeholder="enter your password" required/>
            </div>
            <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary" Text="Login" OnClientClick="setRequired();"/>
            <hr />
            <h5>Social Logins</h5>
            <button type="submit" id="btnGoogle" runat="server" onserverclick="btnGoogle_ServerClick" 
                onclick="relaxRequiredForGoogleAuth();"
                class="btn btn-default">
                <i class="fa fa-google"></i> | Sign in with Google
            </button>
            <%--<asp:Button ID="btnGoogle" runat="server" OnClick="btnGoogle_Click" CssClass="btn btn-default" Text="Login using Google" />--%>
            
    </div>
    <script type="text/javascript">
        function relaxRequiredForGoogleAuth() {
            var username = document.getElementById("<%=txtUsername.ClientID%>");
            var password = document.getElementById("<%=txtPassword.ClientID%>");
            username.removeAttribute("required");
            password.removeAttribute("required");
            console.log("required removed");
        }
        function setRequired() {
            var username = document.getElementById("<%=txtUsername.ClientID%>");
            var password = document.getElementById("<%=txtPassword.ClientID%>");
            username.setAttribute("required","");
            password.setAttribute("required", "");
            console.log("required set");
        }
    </script>
</asp:Content>
