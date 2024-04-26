<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="property-list.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <form runat="server">
        <!-- Header Start -->
        <div class="container-fluid header bg-white p-0">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5 mt-lg-5">
                    <h1 class="display-5 animated fadeIn mb-4">Property List</h1>
                    <nav aria-label="breadcrumb animated fadeIn">
                        <ol class="breadcrumb text-uppercase">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-body active" aria-current="page">Property List</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-md-6 animated fadeIn">
                    <img class="img-fluid" src="img/header.jpg" alt="">
                </div>
            </div>
        </div>
        <!-- Header End -->


        <div class="container-fluid bg-primary mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;">
            <div class="container">
                <div class="row g-2">
                    <div class="col-md-10">
                        <div class="row g-2">
                           
                            <div class="col-10">
                                <div class="form-floating">
                                    <asp:DropDownList ID="projectType" CssClass="form-control" placeholder="Project Type" runat="server">
                                        <asp:ListItem Value="1">ALL Property</asp:ListItem>
                                        <asp:ListItem Value="Home">Home</asp:ListItem>
                                        <asp:ListItem Value="Villa">Villa</asp:ListItem>
                                        <asp:ListItem Value="Apartment">Apartment</asp:ListItem>
                                        <asp:ListItem Value="Townhouse">Townhouse</asp:ListItem>
                                    </asp:DropDownList>
                                    <label for="name">Please Select Type</label>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-2">
                        <asp:Button class="btn btn-dark border-0 w-100 py-3" Text="Search" ID="btnSearch" runat="server" OnClick="btnSearch_Click" />
                    </div>
                </div>
            </div>
        </div>


        <!-- Property List Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-0 gx-5 align-items-end">
                    <div class="col-lg-6">
                        <div class="text-start mx-auto mb-5 wow slideInLeft" data-wow-delay="0.1s">
                            <h1 class="mb-3">Property Listing</h1>
                            <p>Explore exquisite properties in prime Ahmedabad locations. Luxury living, unmatched amenities, and your dream home awaits!</p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-start text-lg-end wow slideInRight" data-wow-delay="0.1s">
                        <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                            <li class="nav-item me-2">
                                <a class="btn btn-outline-primary" data-bs-toggle="pill" href="#tab-2">For Sell</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <asp:Repeater ID="readpro" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href="property-type.aspx?id=<%# Eval("projectId") %>">
                                                    <img class="img-fluid" src='../projectimage/<%# Eval("projectImage") %>' alt=""></a>
                                                <div class="bg-primary rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">For Sell</div>
                                                <div class="bg-white rounded-top text-primary position-absolute start-0 bottom-0 mx-4 pt-1 px-3"><%# Eval("projectType") %></div>
                                            </div>
                                            <div class="p-4 pb-0">
                                                <h5 class="text-primary mb-3"><%# Eval("projectPrice") %></h5>
                                                <a class="d-block h5 mb-2" href=""><%# Eval("projectName") %></a>
                                                <p><i class="fa fa-map-marker-alt text-primary me-2"></i><%# Eval("projectAdd") %></p>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-ruler-combined text-primary me-2"></i><%# Eval("projectBa") %></small>
                                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-bed text-primary me-2"></i>3 Bed</small>
                                                <small class="flex-fill text-center py-2"><i class="fa fa-bath text-primary me-2"></i>2 Bath</small>
                                            </div>
                                        </div>
                                    </div>

                                </ItemTemplate>
                            </asp:Repeater>
                            <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Property List End -->

    </form>
</asp:Content>

