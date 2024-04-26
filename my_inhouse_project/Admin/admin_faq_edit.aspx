<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_faq_edit.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <form class="form-group" runat="server">
        <h1>Faq Edit</h1>

        <div class="container my-5">

            <h2>Faq</h2>
            <asp:Repeater ID="readp" runat="server" OnItemDataBound="readp_ItemDataBound">
                <ItemTemplate>
                    <div class="row">
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:Label for="name" ID="Label1" runat="server" Text="Project Id">Project Id</asp:Label>
                                <asp:DropDownList ID="projectId"  class="form-control" runat="server" placeholder="Project Id">
                                </asp:DropDownList>

                            </div>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:Label for="name" ID="Label3" runat="server" Text="Faq Question">Faq Question</asp:Label>
                                <asp:TextBox ID="faqQue" Text='<%# Eval ("faqQue") %>' class="form-control" placeholder="Faq Question" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <br />


                    <div class="row">
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:Label for="name" ID="Label8" runat="server" Text="Faq Anshar">Faq Answer </asp:Label>
                                <asp:TextBox ID="faqAns" Text='<%# Eval ("faqAns") %>' class="form-control" runat="server" placeholder="Faq Answer"></asp:TextBox>

                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-6">
                            <div class="form-floating">
                                <asp:Label for="name" ID="Label2" runat="server" Text="Faq Anshar">Faq Note </asp:Label>
                                <asp:TextBox ID="faqNote" Text='<%# Eval ("faqNote") %>' class="form-control" runat="server" placeholder="Faq Note"></asp:TextBox>

                            </div>
                        </div>

                    </div>
                    <br />
                    <div class="col-3">
                        <asp:Button class="btn btn-primary w-100 py-3" ID="btnfaq" type="submit" runat="server" OnClick="btnfaq_Click" Text="Update" />
                    </div>


                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</asp:Content>

