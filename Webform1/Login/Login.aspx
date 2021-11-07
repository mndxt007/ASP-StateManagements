<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Webform1.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
<table class="lead">
    <tr>
        <td colspan="2">
            <b>Login</b>
        </td>
    </tr>
    <tr>
        <td>
            User Name:
        </td>    
        <td align="center">
            <asp:TextBox ID="txtUserName" runat="server" class="lead">
            </asp:TextBox>
        </td>    
    </tr>
    <tr>
        <td>
            Password:
        </td>    
        <td align="center">
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" class="lead"></asp:TextBox>
        </td>    
    </tr>
    <tr>
        <td>
              <asp:CheckBox ID="chkBoxRememberMe" runat="server"  Text="Remember Me" Font-Size="Medium" />      
        </td> 
     </tr>
    <tr>
        <td>
            <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn-primary btn-sm" OnClick="btnLogin_Click" />
        </td>    
    </tr>
</table>
<br />
<a href="Registration/Register.aspx">Click here to register</a> 
if you do not have a user name and password.<br />

        <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
</div>
</asp:Content>
