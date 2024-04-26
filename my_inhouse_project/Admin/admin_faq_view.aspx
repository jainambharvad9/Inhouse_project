<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_faq_view.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <form runat="server">
    <h1 class="text-center">Faq View</h1>

    <!-- Begin Page Content -->
    <div class="container-fluid">


        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Faq DataTables</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:Repeater ID="rp4" runat="server">

                        <HeaderTemplate>

                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>Faq Id</th>
                                        <th>Project Name</th>
                                        <th>Faq Question</th>
                                        <th>Faq Answer</th>
                                          <th>Faq Note</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <FooterTemplate>
                            <tfoot>
                                <tr>
                                    <th>Faq Id</th>
                                    <th>Project Name</th>
                                    <th>Faq Question</th>
                                    <th>Faq Answer</th>
                                     <th>Faq Note</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            </tbody>
                    </table>
                        </FooterTemplate>

                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("faqId") %></td>
                                <td><%# Eval("projectName") %> </td>
                                <td><%# Eval("faqQue") %></td>
                                <td><%# Eval("faqAns") %></td>
                                <td><%# Eval("faqNote") %></td>
                                <td>
                                    
                                        <a href="admin_faq_edit.aspx?fId=<%# Eval("faqId") %>" class="btn btn-warning" ><i class="fas fa-fw fa-pen-square"></i>
                                            Edit
                                        </a>
                                        <a>
                                            <asp:Button CommandArgument='<%# Eval("faqId") %>' class="btn btn-danger  " ID="btnDelete"  runat="server" OnClick="btnDelete_Click" Text="Delete" />
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

