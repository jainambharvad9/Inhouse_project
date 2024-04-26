<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_gallery_view.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <form id="form1" runat="server">
    <h1 class="text-center">Gallery View</h1>

    <!-- Begin Page Content -->
    <div class="container-fluid">


        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Gallery DataTables</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:Repeater ID="rp2" runat="server">
                   <HeaderTemplate>
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Gallery Id</th>
                                <th>Project Name</th>
                                <th>Gallery Image</th>
                                <th>Gallery Title</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                              <tbody>
                   </HeaderTemplate>
                        <ItemTemplate>
                             <tr>
                                <td><%# Eval("galleryId") %></td>
                                <td><%# Eval("projectName") %></td>
                                <td>
                                    <img src='../galleryimage/<%# Eval("galleryImage") %>' height="100px" width="100px" />
                                </td>
                                <td><%# Eval("galleryTitle") %></td>
                                <td>
                                   
                                        <a href="admin_gallery_edit.aspx?gId=<%# Eval("galleryId") %>"  class="btn btn-warning"  ><i class="fas fa-fw fa-pen-square"></i> Edit </a>
                                        <a> 
                                          <asp:Button CommandArgument='<%# Eval("galleryId") %>' CssClass="btn btn-danger  " ID="btnDelete" OnClick="btnDelete_Click" runat="server" Text="Delete" />
                                        </a>
                                  
                                </td>
                            </tr>
                        </ItemTemplate>
                      <FooterTemplate>
                            <tfoot>
                            <tr>
                                <th>Gallery Id</th>
                                <th>Project Id</th>
                                <th>Gallery Image</th>
                                <th>Gallery Title</th>
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

