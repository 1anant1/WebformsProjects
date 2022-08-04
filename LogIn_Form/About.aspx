<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="LogIn_Form.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%-- <!doctype html>
    <html lang="en">
        <head>
            <BODY>

            </BODY>
        </head>

    </html>--%>
    <div class="container" style="margin-top: 20px; height: 203px;">

        <form>
            <div class="form-group row">
                <asp:Label class="col-sm-3 col-form-label text-right" for="email" ID="Label1" runat="server" Text="User Name"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox type="text" class="form-control" ID="Username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Username" ErrorMessage=" UserName can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group row">
                <asp:Label class="col-sm-3 col-form-label text-right" for="password" ID="Label2" runat="server" Text="Password"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox type="password" class="form-control" ID="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Password" ErrorMessage=" Password can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>



            <div class="row">
                <div class="col-4 text-right">
                    <asp:Button class="btn btn-primary " ID="Btnsubmit" runat="server" Text="Login" OnClick="Btnsubmit_Click" />

                </div>
                <div class="col-8 text-left">
                    <asp:Button class="btn  btn-" ID="Button1" runat="server" Text="Registor"  CausesValidation="False" OnClick="Button1_Click" />
                </div>
            </div>
            <hr />
            <br />
            <div class="text-center">
                <asp:Label ID="msglable1" runat="server" ForeColor="Tomato" Font-Size="Large"></asp:Label>
            </div>
        </form>

    </div>
</asp:Content>
