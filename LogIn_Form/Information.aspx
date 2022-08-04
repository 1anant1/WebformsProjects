<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="LogIn_Form.Information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container table-striped" >
        <div class="text-center" style="float: left;margin-top: 50px;">
        <asp:GridView ID="datatablegridview" runat="server" height="300px"  AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Registration_Id" HeaderText="Registration Id" />
                <asp:BoundField DataField="UserName" HeaderText="User Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="IsvalidUser" HeaderText="ValidUser" />
                <asp:BoundField DataField="IsvalidKey" HeaderText="ValidKey" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="select" OnClick="select_Click"  CommandArgument='<%# Eval("Registration_Id")%>' CausesValidation="False" >Select</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>
    <div style="float: left; margin-left: 50px;margin-top: 50px; ">
        <div class="row">
        <asp:Label class="col-sm-6" ID="Label1" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox class="col-sm-6" ID="Username" runat="server"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Username"   runat="server" ErrorMessage="User Name can not be empty" ForeColor="Tomato"></asp:RequiredFieldValidator>
        
        <div class="row">
        <asp:Label class="col-sm-6" ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox class="col-sm-6" ID="Password" runat="server"></asp:TextBox>

        </div>
         <asp:RequiredFieldValidator  ID="RequiredFieldValidator2" ControlToValidate="Password"   runat="server" ErrorMessage="Password can not be empty" ForeColor="Tomato"></asp:RequiredFieldValidator>
        
        <div class="row">
        <asp:Label class="col-sm-6" ID="Label3" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox class="col-sm-6" ID="Firstname" runat="server"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator  runat="server" ControlToValidate="Firstname" ErrorMessage="First Name cannot be empty " ForeColor="Tomato"></asp:RequiredFieldValidator>
        
        <div class="row">
        <asp:Label class="col-sm-6" ID="Label4" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox class="col-sm-6" ID="Lastname" runat="server"></asp:TextBox>
        </div>
            <asp:RequiredFieldValidator  runat="server" ControlToValidate="Lastname" ErrorMessage="Last Name cannot be empty" ForeColor="Tomato"></asp:RequiredFieldValidator>
      
        <div class="row">
        <asp:Label class="col-sm-6" ID="Label5" runat="server" Text="Address"></asp:Label>
        <asp:TextBox class="col-sm-6" ID="Address" runat="server"></asp:TextBox>
        </div>
            <asp:RequiredFieldValidator  runat="server" ControlToValidate="Address" ErrorMessage="Address can not be empty" ForeColor="Tomato"></asp:RequiredFieldValidator>
      
         <div class="row">
        <asp:Label class="col-sm-4" ID="Label6" runat="server" Text="Gender"></asp:Label>
             <asp:RadioButton class="col-sm-4" ID="rbtnmale" Text="Male" runat="server" />
             <asp:RadioButton class="col-sm-4" ID="rbtnfemale" Text="Female"  runat="server" />
        </div>
      <hr />
        
        <div class="row">
            <asp:Button class="col-sm-3  btn-info m-1  " ID="btnsubmit" Text="Submit" OnClick="btnsubmit_Click" runat="server" />
            <asp:Button class="col-sm-3 btn-success m-1  " ID="btnupdate" Text="Update" OnClick="btnupdate_Click" runat="server"/>
            <asp:Button class="col-sm-3  btn-danger m-1  " ID="btndelete" Text="delete" OnClick="btndelete_Click" runat="server"/>
        </div>

    </div>
        
    </div>
</asp:Content>
