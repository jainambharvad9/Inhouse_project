<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_gallery_add.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <h1 class="text-center" >Gallery Add</h1>

     <div class="container my-5">
        <form class="form-group" runat="server">
            <h2>Gallery</h2>
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label1" runat="server" Text="Project Id">Project Id</asp:Label>
                       <asp:DropDownList ID="projectId" CssClass="form-control" placeholder="Project Id"  runat="server" >

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
                        
                    </div>
                </div>
            </div>
            <br />


            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label8" runat="server" Text="Gallery Title">Gallery Title</asp:Label>
                        <asp:TextBox ID="galleryTitle" class="form-control" placeholder="Gallery Title" runat="server" ></asp:TextBox>

                    </div>
                </div>

            </div>


          
            <br />
           
            <div class="col-3">
                <asp:Button class="btn btn-primary w-100 py-3" ID="btngallery" type="submit" runat="server" Text="Add" OnClick="btngallery_Click" />
            </div>
        </form>
    </div>
</asp:Content>

