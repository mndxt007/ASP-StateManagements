<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Webform1.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

    <div class="jumbotron">
        <p>
            <asp:Label class="lead" ID="Label2" runat="server" Text="To-Do List" Font-Bold="True" Font-Size="Large" ForeColor="#000066"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Dotted" Width="139px" Height="23px" BorderColor="#336699"></asp:TextBox>
            <asp:Button class="btn-primary btn-sm" ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        </p>
        <p>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" BorderStyle="Dotted" DataSourceID="XmlDataSource1" DataTextField="Name" BorderColor="#336699"> 
            </asp:CheckBoxList>
        </p>
        <p>
            <asp:Button ID ="Button2" runat ="server" class="btn-primary btn-sm" OnClick="Button2_Click" Text="Get All Selected" />
        </p>
        <p>
            <asp:Label ID="Label1" runat ="server" ></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" ></asp:Label>
        </p>  
         <p>
            <asp:Label ID="Label4" runat="server" ></asp:Label>
        </p>  
         <p>
            <asp:Label ID="Label5" runat="server" ></asp:Label>
        </p>  
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/MyTaskList.xml"></asp:XmlDataSource>
        
    </div>


</asp:Content>
