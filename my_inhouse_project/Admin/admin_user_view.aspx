<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_user_view.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1 class="text-center" >Show All User</h1>

       <!-- Begin Page Content -->
    <div class="container-fluid">

      
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">User DataTables</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:Repeater ID="readRepeater" runat="server">
                   <HeaderTemplate>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>User Id</th>
                                <th>User Name</th>
                                <th>User Password</th>
                                 <th>User Number</th>
                                <th>User Birth Of Date</th>
                                <th>User Gender</th>
                                <th>User Email</th>
                                <th>User Address</th>
                                <th>User City</th>

                            </tr>
                        </thead>
                             <tbody>
                   </HeaderTemplate>

                        
                           <ItemTemplate>
                                <tr >
                                <td  ><%# Eval("usersId") %></td>
                                <td><%# Eval("userName") %></td>
                                 <td><%# Eval("userPass") %></td>
                                 <td><%# Eval("userNumber") %></td>
                               <td><%# DateTime.Parse(Eval("userBtd").ToString()).ToString("dd-MM-yyyy") %></td>
                                 <td><%# Eval("userGender") %></td>
                                 <td><%# Eval("userEmail") %></td>
                                <td><%# Eval("userAdd") %></td>
                                <td><%# Eval("userCity") %></td>                    
                            </tr>
                           </ItemTemplate>

                        <FooterTemplate>
                            <tfoot>
                            <tr>
                               <th>User Id</th>
                                <th>User Name</th>
                                <th>User Password</th>
                                 <th>User Number</th>
                                <th>User Birth Of Date</th>
                                <th>User Gender</th>
                                <th>User Email</th>
                                <th>User Address</th>
                                <th>User City</th>
                            </tr>
                        </tfoot>
                            </tbody>
                              </table>
                        </FooterTemplate>
</asp:Repeater>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</asp:Content>

