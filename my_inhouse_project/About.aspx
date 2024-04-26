<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <!-- Header Start -->
    <div class="container-fluid header bg-white p-0">
        <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
            <div class="col-md-6 p-5 mt-lg-5">
                <h1 class="display-5 animated fadeIn mb-4">About Us</h1>
                <nav aria-label="breadcrumb animated fadeIn">
                    <ol class="breadcrumb text-uppercase">
                        <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                        <li class="breadcrumb-item text-body active" aria-current="page">About</li>
                    </ol>
                </nav>
            </div>
            <div class="col-md-6 animated fadeIn">
                <img class="img-fluid" src="img/4.4.jpeg" alt="">
            </div>
        </div>
    </div>
    <!-- Header End -->





    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img position-relative overflow-hidden p-5 pe-0">
                        <img class="img-fluid w-100" src="img/2.2.jpeg">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <h1 class="mb-4">#1 Place To Find The Perfect Property</h1>
                    <p class="mb-4">Discover properties strategically located in the heart of Ahmedabad, ensuring convenience, connectivity, and proximity to essential amenities. Your dream home is just a click away in the most sought-after neighborhoods.</p>
                    <p><i class="fa fa-check text-primary me-3"></i>Unmatched Variety</p>
                    <p><i class="fa fa-check text-primary me-3"></i>Prime Locations</p>
                    <p><i class="fa fa-check text-primary me-3"></i>Visual Excellence</p>
                    <a class="btn btn-primary py-3 px-5 mt-3" href="property-list.aspx">Read More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

    <!-- details-->
    <div class="container">
        <p>
            <span class="a-title">Welcome to our INHOUSE Where Dreams Find Home</span><br />
            <br />
            <span class="a-pro">Our Visions:</span><br />
            Embark on a journey with us as we redefine living spaces. Our vision is to create homes that transcend expectations, blending innovation with comfort.<br />
            <br />
            <span class="a-pro">Prime Locations, Vibrant Living:</span><br />
            Explore the neighborhoods that inspire our developments. From bustling city centers to tranquil suburbs, we select prime locations for your vibrant lifestyle.<br />
            <br />
            <span class="a-pro">Client-Centric Approach:</span><br />
            Your satisfaction is our priority. Experience a client-centric approach that ensures personalized assistance and a seamless journey from inquiry to possession.<br />
            <br />
            <span class="a-pro">Innovation in Design:</span><br />
            Step into the future of living with our innovative designs. Each property tells a unique story of architectural brilliance and aesthetic finesse.<br />
            <br />
            <span class="a-pro">Meet the Team:</span><br />
            Get to know the faces behind [Your Real Estate Project Name]. Our dedicated team is committed to turning your homeownership dreams into reality.<br />
            <br />
            <span class="a-pro">Sustainability Matters:</span><br />
            Discover our commitment to sustainability. Our projects integrate eco-friendly practices, creating homes that are not just beautiful but environmentally responsible.<br />
            <br />
        </p>
    </div>
    <!-- details-->

    <!-- Call to Action Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="bg-light rounded p-3">
                <div class="bg-white rounded p-4" style="border: 1px dashed rgba(0, 185, 142, .3)">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                            <img class="img-fluid rounded w-100" src="img/call-to-action.jpg" alt="">
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                            <div class="mb-4">
                                <h1 class="mb-3">Contact With Our Customer Advisor</h1>
                                <p>Connect effortlessly with our dedicated team. Swift responses, personalized assistance—your inquiries matter. Contact us today</p>
                            </div>
                            <a href="tel:9998173929" class="btn btn-primary py-3 px-4 me-2"><i class="fa fa-phone-alt me-2"></i>Make A Call</a>
                            <!-- <a href="" class="btn btn-dark py-3 px-4"><i class="fa fa-calendar-alt me-2"></i>Get Appoinment</a>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Call to Action End -->


    <!-- Team Start 
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Property Agents</h1>
                    <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-1.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Full Name</h5>
                                <small>Designation</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-2.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Full Name</h5>
                                <small>Designation</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-3.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Full Name</h5>
                                <small>Designation</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item rounded overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="img/team-4.jpg" alt="">
                                <div class="position-absolute start-50 top-100 translate-middle d-flex align-items-center">
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">Full Name</h5>
                                <small>Designation</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        Team End -->

</asp:Content>

