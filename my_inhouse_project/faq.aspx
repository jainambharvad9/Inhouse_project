<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <!-- Header Start -->
    <div class="container-fluid header bg-white p-0">
        <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
            <div class="col-md-6 p-5 mt-lg-5">
                <h1 class="display-5 animated fadeIn mb-4">FAQ</h1>
                <nav aria-label="breadcrumb animated fadeIn">
                    <ol class="breadcrumb text-uppercase">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Services</a></li>
                        <li class="breadcrumb-item text-body active" aria-current="page">Faq</li>
                    </ol>
                </nav>
            </div>
            <div class="col-md-6 animated fadeIn">
                <img class="img-fluid" src="img/header.jpg" alt="">
            </div>
        </div>
    </div>
    <!-- Header End -->

    
            <div class="container-xxl wow fadeInUp" data-wow-delay="0.1s">
                <div class="container py-5">
                    <div class="row g-5">
    <asp:Repeater ID="readfaq" runat="server">
        <ItemTemplate>

                        <div class="col-6 wow fadeIn" data-wow-delay="0.3s">
                            <h4 class=" card-title text-primary display-6 "><b class=" text-primary "><%# Eval("faqId") %> </b>
                                <%# Eval("faqQue") %>  </h4>
                            <p class=" text-bg-danger " style="text-align: justify; font-size: 25px;">
                                <%# Eval("faqAns") %></p>
                            </p>
                            <p class="text-bg-danger  " style="text-align: justify; font-size: 25px;">
                                <b>Note:</b>  <%# Eval("faqNote") %>
                            </p>
                        </div>
                 

        </ItemTemplate>


    </asp:Repeater>
                           </div>
                </div>
            </div>
</asp:Content>

