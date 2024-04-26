<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_test_view.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <form runat="server">

        <h1 class="text-center">Testimonial View</h1>

        <!-- Begin Page Content -->
        <div class="container-fluid">


            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Testimonials DataTables</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <asp:Repeater ID="rp5" runat="server">
                            <HeaderTemplate>
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Testimonial Id</th>

                                            <th>Project Name</th>
                                            <th>User Name</th>
                                            <th>Testimonial Comment</th>
                                            <th>Testimonial Star</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("testId") %></td>
                                    <td><%# Eval("projectName") %></td>
                                    <td><%# Eval("userName") %></td>
                                    <td><%# Eval("testComm") %></td>
                                    <td><%# Eval("testStar") %></td>
                                    <td>


                                        <a>
                                            <asp:Button CommandArgument='<%# Eval("testId") %>' CssClass="btn btn-danger  " ID="btnDelete" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                        </a>

                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                <tfoot>
                                    <tr>
                                        <th>Testimonial Id</th>

                                        <th>Project Name</th>
                                        <th>User Name</th>
                                        <th>Testimonial Comment</th>
                                        <th>Testimonial Star</th>
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

    </form>
    <!-- /.container-fluid -->
</asp:Content>

