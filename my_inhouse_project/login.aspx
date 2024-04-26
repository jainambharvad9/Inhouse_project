<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="container my-5 border border-success p-5">
        <form class="form-group" runat="server">
            <h2>Login</h2>
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:TextBox ID="Txtusername" class="form-control" placeholder="User Name" runat="server" ToolTip="User Name"></asp:TextBox>
                       
                         <label for="name">User Name</ label>
                    </div>
                </div>
            </div>
            <br />
            <div class="row ">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:TextBox ID="Txtpassword" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>                        
                         <label for="name">Password</label>
                    </div>
                </div>
            </div>
            <br />
            <div class="col-6">
                <asp:Button class="btn btn-primary w-25  py-3" ID="btnlogin" type="submit" runat="server" Text="Login" OnClick="btnlogin_Click" /> 
                 <a href="register.aspx"  class="btn btn-warning w-25 py-3" runat="server" >
                     <i class="fa-solid fa-right-to-bracket"></i> Sign-In</a>                         
            </div>
        </form>
    </div>
</asp:Content>