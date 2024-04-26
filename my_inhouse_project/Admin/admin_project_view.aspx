<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_project_view.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <form runat="server" id="form1">
    <h1 class="text-center">Project View</h1>

    <!-- Begin Page Content -->
    <div class="container-fluid">


        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Project DataTables</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:Repeater ID="rp3" runat="server">

                        <HeaderTemplate>
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Project Id</th>
                                        <th>Project Name</th>
                                        <th>Project Price</th>
                                        <th>Project Description</th>
                                        <th>Project Type</th>
                                        <th>Project Image</th>
                                        <th>Project City</th>
                                        <th>Project Area</th>
                                        <th>Project Address</th>
                                        <th>Project Contact Person</th>
                                        <th>Project Contact No.</th>
                                        <th>Project Built Area</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>

                        <FooterTemplate>
                            <tfoot>
                                <tr>
                                    <th>Project Id</th>
                                    <th>Project Name</th>
                                    <th>Project Price</th>
                                    <th>Project Description</th>
                                    <th>Project Type</th>
                                    <th>Project Image</th>
                                    <th>Project City</th>
                                    <th>Project Area</th>
                                    <th>Project Address</th>
                                    <th>Project Contact Person</th>
                                    <th>Project Contact No.</th>
                                    <th>Project Built Area</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            </tbody>
                    </table>
                        </FooterTemplate>

                        <ItemTemplate>
                            <tr height:"100px">
                                <td><%# Eval("projectId") %></td>
                                <td><%# Eval("projectName") %></td>
                                <td><%# Eval("projectPrice") %></td>
                                <td><%# Eval("projectDiscrip") %></td>
                                <td><%# Eval("projectType") %></td>
                                <td><%# Eval("projectImage") %>

                                     <img src='../projectimage/<%# Eval("projectImage") %>' height="100px" width="100px" />

                                </td>
                                
                                <td><%# Eval("projectCity") %></td>
                                <td><%# Eval("projectArea") %></td>
                                <td><%# Eval("projectAdd") %></td>
                                <td><%# Eval("projectConper") %></td>
                                <td><%# Eval("projectConno") %></td>
                                <td><%# Eval("projectBa") %></td>
                                
                              
                                <td>
                                        <a href="admin_project_edit.aspx?pId=<%# Eval("projectId") %>" class="btn btn-warning" ><i class="fas fa-fw fa-pen-square"></i>
                                           Edit
                                        </a>
                                        <a>
                                            <asp:Button CommandArgument='<%# Eval("projectId") %>'  CssClass="btn btn-danger  " ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
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
</asp:Content>

