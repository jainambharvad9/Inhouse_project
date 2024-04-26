<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

   <!-- Header Start -->
        <div class="container-fluid header bg-white p-0">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5 mt-lg-5">
                    <h1 class="display-5 animated fadeIn mb-4">Contact Us</h1> 
                        <nav aria-label="breadcrumb animated fadeIn">
                        <ol class="breadcrumb text-uppercase">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Pages</a></li>
                            <li class="breadcrumb-item text-body active" aria-current="page">Contact</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-md-6 animated fadeIn">
                    <img class="img-fluid" src="img/header.jpg" alt="">
                </div>
            </div>
        </div>
        <!-- Header End -->

    


        <!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Contact Us</h1>
                    <p>Reach out to us for any queries or assistance. Our team is ready to help you find your dream home.</p>
                </div>
                <div class="row g-4">
                    <div class="col-12">
                        <div class="row gy-4">
                            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.1s">
                                <div class="bg-light rounded p-3">
                                    <div class="d-flex align-items-center bg-white rounded p-3" style="border: 1px dashed rgba(0, 185, 142, .3)">
                                        <div class="icon me-3" style="width: 45px; height: 45px;">
                                            <i class="fa fa-map-marker-alt text-primary"></i>
                                        </div>
                                        <span>Aristo Bliss,Gota,Ahmedabad</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.3s">
                                <div class="bg-light rounded p-3">
                                    <div class="d-flex align-items-center bg-white rounded p-3" style="border: 1px dashed rgba(0, 185, 142, .3)">
                                        <div class="icon me-3" style="width: 45px; height: 45px;">
                                            <i class="fa fa-envelope-open text-primary"></i>
                                        </div>
                                        <span>imhousecontact@gmail.com</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay="0.5s">
                                <div class="bg-light rounded p-3">
                                    <div class="d-flex align-items-center bg-white rounded p-3" style="border: 1px dashed rgba(0, 185, 142, .3)">
                                        <div class="icon me-3" style="width: 45px; height: 45px;">
                                            <i class="fa fa-phone-alt text-primary"></i>
                                        </div>
                                        <span>+91 9752 676543</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <iframe class="position-relative rounded w-100 h-100"
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2182.1942014298784!2d72.54251835207585!3d23.097148456196408!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e832241bdd015%3A0x845a563b2848b3b8!2sAristo%20Bliss!5e0!3m2!1sen!2sin!4v1704710491895!5m2!1sen!2sin"
                            frameborder="0" style="min-height: 400px; border:0;" allowfullscreen="" aria-hidden="false"
                            tabindex="0"></iframe>
                    </div>
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.5s">
                            <p class="mb-4">Send Your Message.</p>
                            <form runat="server">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"  placeholder="Your Name"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox1" runat="server" ErrorMessage="Enter Your Name"></asp:RequiredFieldValidator>

                                            <label for="name">Your Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="TextBox2" runat="server"  class="form-control" placeholder="Your Email"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="Enter Your E-mail Address"></asp:RequiredFieldValidator>
                                            <label for="email">Your Email</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control"  placeholder="Subject"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" runat="server" ErrorMessage="Enter Your Subject"></asp:RequiredFieldValidator>

                                            <label for="subject">Subject</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Message" style="height: 150px" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" runat="server" ErrorMessage="Enter Message"></asp:RequiredFieldValidator>

                                            <label for="message">Message</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                      <asp:Button runat="server" Text="Send Message" class="btn btn-primary w-100 py-3" ID="sndbtn" OnClick="sndbtn_Click" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
        <!-- Contact End -->
</asp:Content>

