<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationInfo.aspx.cs" Inherits="LogIn_Form.RegistrationInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </div>
    <div class="container text-center m-3" style="float:left">
        <asp:GridView ID="GridView1" runat="server" Height="390px" Width="1000px" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Registration_Id" HeaderText="Registration_Id" />
                <asp:BoundField DataField="UserName" HeaderText="User Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:TemplateField HeaderText="Operations">
                    <ItemTemplate>
                        <asp:LinkButton ID="Select" runat="server" OnClick="Select_Click" CommandArgument='<%# Eval("Registration_Id")%>'>Select</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>


<div class="container m-5 align-content-center" style="float:left;  margin-left:25px">
        
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

       
    </div>

</asp:Content>
