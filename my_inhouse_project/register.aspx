<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="container my-5 border border-primary p-5">
        <form class="form-group" runat="server">
            <h2>Register</h2>
            <div class="row">
                <div class="col-6">                   
                    <div class="form-floating">
                        <asp:TextBox ID="userName"  class="form-control" runat="server" placeholder="User Name"></asp:TextBox>
                           <label for="name">User Name</label>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userName" ErrorMessage="Please Enter Your User Name"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            
            <div class="row ">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:TextBox ID="userPass" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                         <label for="name">Password</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="userPass" ErrorMessage="Please Enter Your Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                       
                        <asp:TextBox ID="userNumber" class="form-control" TextMode="Number" placeholder="Mobile No" runat="server"></asp:TextBox>
                         <label for="name">Mobile No</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="userNumber" ErrorMessage="Please Enter Your Mobile Number"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            

            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        
                        <asp:TextBox ID="userBtd" CssClass="form-control" placeholder="Birth Of Date" TextMode="Date" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="userBtd" ErrorMessage="Please Enter Your Birth Of Date "></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>

          

            

            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                       
                        <asp:TextBox ID="userEmail" class="form-control" placeholder="E-mail" runat="server" ToolTip="E-mail"></asp:TextBox>
                         <label for="name">E-mail</label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="userEmail" ErrorMessage="Please Enter Your E-mail Address"></asp:RequiredFieldValidator>

                    </div>
                </div>

            </div>


           

            <div class="row">
                <div class="col-6">
                    <div class="form-floating">

                        <asp:Label ID="userGender" runat="server" Text="Label">Gender               
                           <asp:RadioButtonList ID="rdl"  runat="server">
                               <asp:ListItem Text="Male" Value="Male" ></asp:ListItem>
                               <asp:ListItem Text="Female" Value="Female" ></asp:ListItem>
                               <asp:ListItem Text="Other" Value="Other" ></asp:ListItem>

                           </asp:RadioButtonList>
                        </asp:Label>

                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                       
                        <asp:TextBox ID="userAdd" CssClass="form-control" TextMode="MultiLine" placeholder="Address" runat="server" ToolTip="Address"></asp:TextBox>
                         <label for="name">Address</label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="userAdd" ErrorMessage="Please Enter Your Address"></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        
                        <asp:TextBox ID="userCity" CssClass="form-control" runat="server" placeholder="City"></asp:TextBox>
                         <label for="name">City</label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="userCity" ErrorMessage="Please Enter Your City"></asp:RequiredFieldValidator>

                    </div>
                </div>
            </div>
            
            <div class="col-4">
                <asp:Button class="btn btn-primary w-50 py-3" 
                    ID="btnregister" type="submit" runat="server" Text="Register"
                    OnClick="btnregister_Click"
                     />
                
            </div>
        </form>
    </div>

</asp:Content>

