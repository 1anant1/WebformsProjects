<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogInForm.aspx.cs" Inherits="WebFormClass.LogInForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <!DOCTYPE html>
<html>
    <head>
        <link href="Content/LogInForm.css" rel="stylesheet" />
    </head>
<body>
    <div class="login">
  <div class="form">
    <h2>Welcome</h2>
    <asp:TextBox ID="username" type="text" placeholder="Username" runat="server"></asp:TextBox>
      
    <asp:TextBox ID="password" type="password" placeholder="Password" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" type="submit"  class="submit" Text="Sign In" />
  </div>
</div>


</body>
</html>
</asp:Content>
