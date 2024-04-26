<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_amenities_view.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <h1 class="text-center">Amenities View</h1>
     <form runat="server">
    <!-- Begin Page Content -->
    <div class="container-fluid">


        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Amenities DataTables</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:Repeater ID="rp1" runat="server">
                        <HeaderTemplate>

                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Ameniti Id</th>
                                        <th>Project Name</th>
                                        <th>Ameniti Details</th>
                                        <th>Ameniti Image</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <FooterTemplate>
                            <tfoot>
                                <tr>
                                    <th>Ameniti Id</th>
                                    <th>Project Name </th>
                                    <th>Ameniti Details</th>
                                    <th>Ameniti Image</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            </tbody>
                    </table>
                        </FooterTemplate>


                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("ameId") %></td>
                                <td><%# Eval("projectName") %></td>
                                <td><%# Eval("ameDetail") %></td>
                                <td>

                                    <img src='../amenimg/<%# Eval("ameImage") %>' height="100px" width="100px" />

                                </td>
                                <td>
                                   
                                        <a href="admin_amenities_edit.aspx?aId=<%# Eval("ameId") %>" class="btn btn-warning"  ><i class="fas fa-fw fa-pen-square"></i>
                                            Edit
                                        </a>
                                        <a>
                                            <asp:Button CommandArgument='<%# Eval("ameId") %>' CssClass="btn btn-danger  " ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                                        </a>
                                   
                                </td>

                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>

    </div>
          </form>
    <!-- /.container-fluid -->
    <script>

    </script>
</asp:Content>

