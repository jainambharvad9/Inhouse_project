<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_gallery_edit.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <form class="form-group" runat="server">

        <h1>Gallery Edit</h1>

        <div class="container my-5">
            <h2>Gallery</h2>
            <asp:Repeater ID="readp" runat="server" OnItemDataBound="readp_ItemDataBound">
                <ItemTemplate>

                 
                    <div class="row">
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:Label for="name" ID="Label1" runat="server" Text="Project Id">Project Name</asp:Label>
                                <asp:DropDownList ID="projectId"  runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:Label for="name" ID="Label4" runat="server" Text="Gallery Image">Gallery Image</asp:Label>
                                <asp:FileUpload ID="galleryImage" class="form-control" runat="server" />
                                <asp:HiddenField ID="oldImg" runat="server" Value='<%# Eval("galleryImage") %>'/>
                            </div>
                        </div>
                    </div>
                    <br />


                    <div class="row">
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:Label for="name" ID="Label8" runat="server" Text="Gallery Title">Gallery Title</asp:Label>
                                <asp:TextBox ID="galleryTitle" CssClass="form-control" placeholder="Gallery Title" runat="server" Text='<%# Eval("galleryTitle") %>'></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="col-3">
                        <asp:Button class="btn btn-primary w-100 py-3" ID="btngallery" type="submit" runat="server" Text="Update" OnClick="btngallery_Click" />
                    </div>

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>

