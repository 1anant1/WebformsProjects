<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="WebFormClass.RegistrationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <!DOCTYPE html>
<html>
    <head>
        <link href="Content/Form.css" rel="stylesheet" />
    </head>
<body>
    <div class="login">
  <div class="form">
    <h2>Registration form</h2>
    
       <asp:TextBox ID="Username" type="text" placeholder="Username" runat="server"></asp:TextBox>
       <asp:TextBox ID="Password" type="text" placeholder="Password" runat="server"></asp:TextBox>
       <asp:TextBox ID="Firstname" type="text" placeholder="First name" runat="server"></asp:TextBox>
       <asp:TextBox ID="Lastname" type="text" placeholder="Last name" runat="server"></asp:TextBox>
       <asp:TextBox ID="Address" type="text" placeholder="Address" runat="server"></asp:TextBox>
       <asp:TextBox ID="Gender" type="text" placeholder="Gender" runat="server"></asp:TextBox>
       <asp:Button ID="Button1" runat="server" type="submit"  class="submit" Text="Submit" />
  </div>
</div>
</asp:Content>
