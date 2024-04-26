<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_project_add.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <h1 class="text-center" >Project Add</h1>

     <div class="container my-5">
        <form class="form-group" runat="server">
            <h2>Project</h2>
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label1" runat="server" Text="Project Name">Project Name</asp:Label>
                        <asp:TextBox ID="projectName" class="form-control" placeholder="Project Name" runat="server" ></asp:TextBox>

                    </div>
                </div>
            </div>
             <br />
           
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label3" runat="server" Text="Project Price">Project Price</asp:Label>
                        <asp:TextBox ID="projectPrice" class="form-control" placeholder="Project Price" runat="server"></asp:TextBox>

                    </div>
                </div>
            </div>
             <br />


            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label8" runat="server" Text="Project Discription">Project Discription</asp:Label>
                        <asp:TextBox ID="projectDiscrip"  CssClass="form-control" placeholder="Project Discription" runat="server" ></asp:TextBox>

                    </div>
                </div>

            </div>


            

            <br />
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label9" runat="server" Text="Project Type">Project Type</asp:Label>
                        <asp:DropDownList ID="projectType"  CssClass="form-control" placeholder="Project Type" runat="server">
                            <asp:ListItem Value="Home" >Home</asp:ListItem>
                            <asp:ListItem Value="Villa" >Villa</asp:ListItem>
                            <asp:ListItem Value="Apartment" >Apartment</asp:ListItem>
                            <asp:ListItem Value="Townhouse" >Townhouse</asp:ListItem>
                        </asp:DropDownList>
                        
                    </div>
                </div>
            </div>
             <br />
                <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label4" runat="server" Text="Project Image">Project Image</asp:Label>
                       <asp:FileUpload ID="projectImage"  CssClass=" custom-file" runat="server" />
                        
                    </div>
                </div>
            </div>
            <br />
          
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label10" runat="server" Text="Project City">Project City</asp:Label>
                        <asp:TextBox ID="projectCity" CssClass="form-control" runat="server" placeholder="Project City"></asp:TextBox>

                    </div>
                </div>
            </div>
            <br />

               <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label2" runat="server" Text="Project Area">Project Area</asp:Label>
                        <asp:TextBox ID="projectArea" CssClass="form-control" runat="server" placeholder="Project Area"></asp:TextBox>

                    </div>
                </div>
            </div>
            <br />
               <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label5" runat="server" Text="Project Address">Project Address</asp:Label>
                        <asp:TextBox ID="projectAdd" CssClass="form-control" TextMode="MultiLine" runat="server" placeholder="Project Address"></asp:TextBox>

                    </div>
                </div>
            </div>
            <br />

               <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label6" runat="server" Text="Project Contact Person">Project Contact Person</asp:Label>
                        <asp:TextBox ID="projectConper" CssClass="form-control" runat="server" placeholder="Project Contact Person"></asp:TextBox>

                    </div>
                </div>
            </div>
            <br />

               <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label7" runat="server" Text="Project Contact No.">Project Contact No.</asp:Label>
                        <asp:TextBox ID="projectConno" CssClass="form-control"  runat="server" placeholder="Project Contact No."></asp:TextBox>

                    </div>
                </div>
            </div>
            <br />

               <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label11" runat="server" Text="Project Built Area">Project Built Area</asp:Label>
                        <asp:TextBox ID="projectBa" CssClass="form-control" runat="server" placeholder="Project Built Area"></asp:TextBox>

                    </div>
                </div>
            </div>
            <br />

            

            <div class="col-3">
                <asp:Button class="btn btn-primary w-100 py-3" ID="btnproject" type="submit" runat="server" Text="Add" OnClick="btnproject_Click" />
            </div>
        </form>
    </div>


</asp:Content>

