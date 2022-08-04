<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="LogIn_Form.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container m-5 align-content-center">
        <form >
            <div class="form-group row">
                <asp:Label class="col-sm-3 col-form-label text-right"  ID="Label6" runat="server" Text="User Name"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox type="text" class="form-control" ID="userename" runat="server"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userename" ErrorMessage="User Name field can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>


            <div class="form-group row">
                <asp:Label class="col-sm-3 col-form-label text-right"  ID="Label2" runat="server" Text="Password"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox type="password" class="form-control" ID="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Password field can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label class="col-sm-3 col-form-label text-right"  ID="Label1" runat="server" Text="First Name"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox type="text" class="form-control" ID="firstname" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="firstname" ErrorMessage="First Name field can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label class="col-sm-3 col-form-label text-right"  ID="Label3" runat="server" Text="Last Name"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox type="text" class="form-control" ID="lastname" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="lastname" ErrorMessage="Last Name field can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label class="col-sm-3 col-form-label text-right"   runat="server" Text="Address"></asp:Label>
                <div class="col-sm-9">
                    <asp:TextBox type="text" class="form-control" ID="address" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="address" ErrorMessage=" Address field can not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                
                <asp:Label class="col-sm-3 col-form-label text-right"  ID="Label4" runat="server" Text="Gender"></asp:Label>
                <div class="col-sm-9" style="margin-top:10px">
                    <div class="form-check-inline">
                        <asp:RadioButton  class="form-check-input " type="radio" ID="rbtnmale" runat="server" Text="Male" />
                </div>
                <div class="form-check-inline">
                         <asp:RadioButton  class="form-check-input " type="radio" ID="rbtnfemale" runat="server" Text="Female"/>
                </div>
                </div>
                
            </div>
            <hr />
            <br />

            <div class="row">
                 <div class="col-sm-3  ">
                    <asp:Button class="btn btn-outline-primary btn-lg"  ID="Btnupdate" runat="server"  Text="Update" OnClick="Btnupdate_Click"  />
                </div>
                <div class="col-sm-3  ">
                    <asp:Button class="btn btn-outline-success btn-lg"  ID="Btnsubmit" runat="server" Text="Submit" OnClick="Btnsubmit_Click" />
                </div>
                <div class="col-sm-3  ">
                    <asp:Button class="btn btn-outline-danger btn-lg"  ID="Btnshow" runat="server" Text="Show"  CausesValidation="False" OnClick="Btndelete_Click"   />
                </div>
                 <div class="col-sm-3  ">
                    <asp:Button class="btn btn-outline-danger btn-lg"  ID="Btndelete1" runat="server" Text="Delete" CausesValidation="False" OnClick="Btndelete1_Click"  />
                </div>
            </div>
            <div class =" text-center m-3">

            <asp:Label ID="msglable" runat="server" ></asp:Label>
            </div>

        </form>
    </div>


</asp:Content>
