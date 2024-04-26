<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_booking_view.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <h1 class="text-center">Booking View</h1>

    <!-- Begin Page Content -->
      <form runat="server">
    <div class="container-fluid">


        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Booking DataTables</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:Repeater ID="rp6" runat="server">
                        <HeaderTemplate>
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Booking Id</th>
                                        <th>User Id</th>
                                        <th>Project Id</th>
                                        <th>Booking Date</th>
                                        <th>Booking Remark</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("bookingId") %></td>
                                <td><%# Eval("userName") %></td>
                                <td><%# Eval("projectName") %></td>
                                <td><%# DateTime.Parse(Eval("bookingDate").ToString()).ToString("dd-MM-yyyy") %></td>
                                <td><%# Eval("bookingRemark") %></td>

                                <td>
                                  
                                       
                                        <a>
                                            <asp:Button CommandArgument='<%# Eval("bookingId") %>'  CssClass="btn btn-danger  " ID="btnDelete" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                        </a>
                                  
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            <tfoot>
                                <tr>
                                    <th>Booking Id</th>
                                    <th>User Id</th>
                                    <th>Project Id</th>
                                    <th>Booking Date</th>
                                    <th>Booking Remark</th>
                                    <th>Action</th>
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
          </form>
</asp:Content>

