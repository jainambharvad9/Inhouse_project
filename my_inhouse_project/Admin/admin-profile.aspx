<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="admin-profile.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
   <div class="container my-5">
        <h2>Profile</h2>
        <form class="form-group" runat="server">
            <asp:Repeater ID="readdata" runat="server">
                <ItemTemplate>
                         <br />
         <!--  <div class="row">
                <div class="col-6">
                   
                    <div class="form-floating">

                        <asp:TextBox ID="addName"  class="form-control" runat="server" placeholder="Admin User Name"></asp:TextBox>
                         
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="addName" ErrorMessage="Please Enter Your User Name"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>-->
        

              <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                       
                        <asp:TextBox ID="addEmail" Text='<%# Eval("addEmail") %>' class="form-control" placeholder="E-mail" runat="server" ToolTip="E-mail"></asp:TextBox>
                         
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="addEmail" ErrorMessage="Please Enter Your E-mail Address"></asp:RequiredFieldValidator>

                    </div>
                </div>

            </div>

            <div class="row ">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:TextBox ID="addPass" Text='<%# Eval("addPass") %>' class="form-control" placeholder="Current Password" runat="server"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="addPass" ErrorMessage="Please Enter Your Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
        

        
            <br />

             <div class="row ">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:TextBox ID="newPass"  class="form-control" placeholder="New Password" runat="server" TextMode="Password"></asp:TextBox>
                         
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="newPass" ErrorMessage="Please Enter Your Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            
             <div class="row ">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:TextBox ID="newPass1" class="form-control" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="newPass1" ErrorMessage="Please Enter Your Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <br />
          
            <div class="col-4">
                <asp:Button class="btn btn-primary w-50 py-3" 
                    ID="btnupdate" type="submit" runat="server" Text="Update" OnClick="btnupdate_Click" />
                  
            </div>
                </ItemTemplate>
            </asp:Repeater>
           
       
        </form>
    </div>

</asp:Content>

