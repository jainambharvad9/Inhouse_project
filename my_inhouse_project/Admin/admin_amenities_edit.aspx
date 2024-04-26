<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_amenities_edit.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
      <form class="form-group" runat="server">
    <h1>Eminities Edit</h1>


     <div class="container my-5">
      
            <h2>Amenities Update </h2>
         <asp:Repeater ID="readrep" runat="server" OnItemDataBound="readp1_ItemDataBound" >
             
             <ItemTemplate>
              
             

            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label1" runat="server" Text="Project Id"> Project Id </asp:Label>
                        <asp:DropDownList ID="projectId" CssClass="form-control" runat="server" placeholder="Project Id">

                        </asp:DropDownList>

                    </div>
                </div>
            </div>           
             <br />
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label3" runat="server" Text="Amenities Details">Amenities Details</asp:Label>
                        <asp:TextBox ID="ameDetail" class="form-control" TextMode="MultiLine" placeholder="Amenities Details" runat="server" Text='<%# Eval("ameDetail") %>' ></asp:TextBox>
                    </div>
                </div>
            </div>
             <br />
            <div class="row">
                <div class="col-6">
                    <div class="form-floating">
                        <asp:Label for="name" ID="Label4" runat="server" Text="Amenities Image">Amenities Image</asp:Label>
                       <asp:FileUpload ID="ameImage" class="form-control" placeholder="Amenities Image" runat="server" />
                      <asp:HiddenField ID="oldImg" runat="server" Value='<%# Eval("ameImage") %>'/>
                        
                    </div>
                </div>
            </div>
            <br />
            
            <div class="col-3">
                <asp:Button class="btn btn-primary w-100 py-3" ID="ameUpdate" type="submit" runat="server" Text="Add" OnClick="ameUpdate_Click" />
            </div>
             </ItemTemplate>

         </asp:Repeater>
             
        
    </div>
    </form>
</asp:Content>

