<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="update-profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style>
      .fa-user{
        
      }
      .fileUpload{
    border: none;
    padding: 0;
    background-color: transparent;
}

.fileUpload::file-selector-button {
    background-color: #ff0000;
    border-radius: 2px;
  
    letter-spacing: 1px;
    outline: none;
    border: none;
    cursor: pointer;
}
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">


    <div class="container border border-success p-5 m-5 bg-primary text-white" style="padding: 3rem 5rem 0rem 5rem;">
        <h2 class="text-center">Update Profile</h2>
        <form class="col-lg-6 mx-auto" id="form1" runat="server">
           
            <div class="form-group mb-4">
                <!-- <label>Username :</label> -->
                <div class="input-control d-flex align-items-center py-1">
                 <i class=" fas fa-fw fa-user px-4"></i>
                <asp:TextBox ID="txtUname" runat="server" class="form-control" placeholder="Enter Username"></asp:TextBox>
                </div>
              <!--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter Username   " class="small text-danger" ControlToValidate="txtUname" Display="Dynamic"></asp:RequiredFieldValidator>-->
                <!--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" class="small text-danger" ControlToValidate="txtUname" ErrorMessage="please enter valid username    " ValidationExpression="^[A-Za-z0-9@]+$" Display="Dynamic"></asp:RegularExpressionValidator>  -->
            </div>

            <div class="form-group mb-4">
                <!-- <label>E-mail :</label> -->
                <div class="input-control d-flex align-items-center py-1">
              <i class="fas fa-fw fa-envelope px-4"></i>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter E-mail"></asp:TextBox>
                </div>
               <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please enter email" class="small text-danger" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>-->
              <!--  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" class="small text-danger" ControlToValidate="txtEmail" ErrorMessage="please enter valid valid" ValidationExpression="^[a-zA-Z0-9_.-]+@[a-zA-Z0-9.-]+$" Display="Dynamic"></asp:RegularExpressionValidator>-->
            </div>

            <div class="form-group mb-4">
                <!-- <label for="password">Password :</label> -->
                <div class="input-control d-flex align-items-center py-1">
               <i class="fas fa-fw fa-lock px-4"></i>
                <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                </div>
             <!--   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please enter password" class="small text-danger" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>-->
            </div>

            <div class="form-group mb-4">
                 <label>Confirm Password :</label> -->
                <div class="input-control d-flex align-items-center py-1">
               <i class="fas fa-fw fa-lock px-4"></i>
                <asp:TextBox ID="txtCpassword" runat="server" class="form-control" TextMode="Password" placeholder="Enter Confirm Password"></asp:TextBox>
                </div>
               <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="please enter confirm password" class="small text-danger" ControlToValidate="txtCpassword" Display="Dynamic"></asp:RequiredFieldValidator>-->
             <!--   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password is not match" class="small text-danger" ControlToValidate="txtCpassword" Display="Dynamic" ControlToCompare="txtPassword"></asp:CompareValidator>-->
            </div>
            <div class="text-center">
            <asp:Button ID="signinBtn" runat="server" class="btn btn-danger w-50 text-center" Text="Update" OnClick="signinBtn_Click" />
            </div>
       </form>
    </div>
    
</asp:Content>

