<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="testimonial.aspx.cs" Inherits="_Default" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">



    <!-- Header Start -->
    <div class="container-fluid header bg-white p-0">
        <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
            <div class="col-md-6 p-5 mt-lg-5">
                <h1 class="display-5 animated fadeIn mb-4">Testimonial</h1>
                <nav aria-label="breadcrumb animated fadeIn">
                    <ol class="breadcrumb text-uppercase">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item text-body active" aria-current="page">Testimonial</li>
                    </ol>
                </nav>
            </div>
            <div class="col-md-6 animated fadeIn">
                <img class="img-fluid" src="img/header.jpg" alt="">
            </div>
        </div>
    </div>
    <!-- Header End -->

    <script runat="server">
        readRepeater rr;
    </script>


    <!-- Testimonial Start -->

    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h1 class="mb-3">Our Clients Say!</h1>
                <p>Discover what our clients are saying. Real stories, genuine experiences—your satisfaction is our greatest endorsement. Read reviews now!</p>
            </div>

            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">

                <asp:Repeater ID="test" runat="server">
                    <ItemTemplate>
                        <div class="testimonial-item bg-light rounded p-3">

                            <div class="bg-white border rounded p-4">

                                <p><%# Eval("testComm") %></p>
                                <div class="d-flex align-items-center">
                                    <img class="img-fluid flex-shrink-0 rounded" src="img/testimonial-2.png" style="width: 45px; height: 45px;">
                                    <div class="ps-3">
                                        <h6 class="fw-bold mb-1"><%# Eval("userName") %></h6>
                                        <h5 class="mb-1">
                                            <%# getStrars(Convert.ToInt32(Eval("testStar").ToString())) %>

                                        </h5>
                                        <small><%# Eval("projectName") %></small>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
            </div>

        </div>


    </div>


    <!-- Testimonial End -->

</asp:Content>

