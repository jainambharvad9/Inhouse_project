<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="property-type.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

   
    <style>
        /* Style the tab */
        .tab {
            float: left;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
            width: 30%;
            height: 300px;
        }

            /* Style the buttons inside the tab */
            .tab button {
                display: block;
                //color: black;
                padding: 22px 16px;
                width: 100%;
                border: none;
                outline: none;
                text-align: left;
                cursor: pointer;
                transition: 0.3s;
                font-size: 17px;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: #00B98E;
                }

                /* Create an active/current "tab button" class */
                .tab button.active {
                    //background-color: #ccc;
                }

        /* Style the tab content */
        .tabcontent {
            float: left;
            padding: 0px 12px;
            width: 70%;
            border-left: none;
            height: 415px;
            overflow-y: scroll;
        }

        .amediv img {
            height: 150px;
            width: 180px;
            padding: 19px;
            margin: 10px 10px;
            border: 4px solid #0b6ab2;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">




    <asp:Repeater ID="rpd" runat="server" OnItemDataBound="rpd_ItemDataBound">
        <ItemTemplate>

            <div class="carousel-inner p-2 ">
                <!-- Header Start -->
                <div class="container-fluid header bg-white p-0">

                    <div class="row">
                        <div class="col-sm-12">
                            <img class="" width="100%" src='../projectimage/<%# Eval("projectImage") %>' alt="">
                        </div>
                    </div>

                </div>
                <!-- Header End -->
            </div>
            <h1 class="section-title" style="font-size: 60px; text-align: center"><%# Eval("projectName") %></h1>
            <!-- tabs   -->

            <div class=" container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="tab">
                            <button class="tablinks btn btn-primary" onclick="openCity(event, 'prodis')" form="" id="defaultOpen">About Project</button>
                            <button class="tablinks" onclick="openCity(event, 'ame')" form="">Amenities</button>
                            <button class="tablinks" onclick="openCity(event, 'loc')" form="">Location</button>
                            <button class="tablinks" onclick="openCity(event, 'gal')" form="">Gallery</button>
                            <button class="tablinks" onclick="openCity(event, 'rev')" form="">Review</button>
                            <button class="tablinks" onclick="openCity(event, 'book')" form="">Booking</button>
                        </div>

                        <div id="prodis" class="tabcontent">
                            <h3>About Project</h3>
                            <hr size="8" style="color: var(--primary);" width="200" />
                            <p style="text-align: justify; font-size: medium"><%# Eval("projectDiscrip") %></p>
                            <p><%# Eval("projectAdd") %></p>
                        </div>

                        <div id="ame" class="tabcontent">
                            <h3>Amenities</h3>
                            <hr size="8" style="color: var(--primary);" width="200" />
                            <div class="amediv">


                                <img src="amenimg/1.jpg" style="margin-left: 20px" height="100px" width="100px" />
                                <img src="amenimg/2.png" style="margin-left: 20px" height="100px" width="100px" />
                                <img src="amenimg/3.png" style="margin-left: 20px" height="100px" width="100px" />
                                <img src="amenimg/4.png" style="margin-left: 20px" height="100px" width="100px" />
                                <img src="amenimg/5.png" style="margin-left: 20px" height="100px" width="100px" />
                                <img src="amenimg/6.png" style="margin-left: 20px" height="100px" width="100px" />
                                <img src="amenimg/7.png" style="margin-left: 20px" height="100px" width="100px" />
                                <img src="amenimg/8.png" style="margin-left: 20px" height="100px" width="100px" />

                            </div>
                        </div>

                        <div id="loc" class="tabcontent">
                            <h3>Location</h3>
                            <hr size="8" style="color: var(--primary);" width="200" />

                            <div class="col-md-12 ">
                                
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2182.1942014298784!2d72.54251835207585!3d23.097148456196408!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e832241bdd015%3A0x845a563b2848b3b8!2sAristo%20Bliss!5e0!3m2!1sen!2sin!4v1704710491895!5m2!1sen!2sin"
                                        frameborder="0" style="min-height: 350px; border: 0;" allowfullscreen="" aria-hidden="false"
                                        tabindex="0" width="100%"></iframe>
                            </div>
                        </div>

                        <div id="gal" class="tabcontent">
                            <h3>Gallery</h3>
                            <hr size="8" style="color: var(--primary);" width="200" />
                            <asp:Repeater ID="gallery" runat="server">
                                <ItemTemplate>

                                    <img src="galleryimage/<%# Eval("galleryImage") %>" style="margin-left: 20px" height="200px" width="200px" />
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <form  runat="server">

                            <div id="rev" class="tabcontent">
                                <h2>Review</h2>
                                <hr size="8" style="color: var(--primary);" width="200" />
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-floating">
                                            <asp:TextBox ID="testComm" class="form-control" placeholder="Comment" runat="server" ToolTip="Comment"></asp:TextBox>
                                            <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="testComm" ErrorMessage="Please Enter Your Comment"></asp:RequiredFieldValidator>-->
                                            <label for="name">Comment</label>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="row ">
                                    <div class="col-6">
                                        <div class="form-floating">

                                            <asp:DropDownList ID="testStar" CssClass="form-control" placeholder=" Give You Rating " runat="server">
                                                <asp:ListItem Value="0">   Give You Rating   </asp:ListItem>
                                                <asp:ListItem Value="1">   1 Star   </asp:ListItem>
                                                <asp:ListItem Value="2">   2 Star   </asp:ListItem>
                                                <asp:ListItem Value="3">   3 Star   </asp:ListItem>
                                                <asp:ListItem Value="4">   4 Star   </asp:ListItem>
                                                <asp:ListItem Value="5">   5 Star   </asp:ListItem>
                                            </asp:DropDownList>
                                            <label for="name">Give You Rating </label>
                                            <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="testStar" ErrorMessage="Please Select Star"></asp:RequiredFieldValidator>-->
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="col-6">
                                    <asp:Button class="btn btn-primary w-25  py-3" ID="btnreview" type="submit" runat="server" Text="Send Review" OnClick="btnreview_Click" />

                                </div>
                            </div>

                            <div id="book" class="tabcontent">
                                <h3>Booking</h3>
                                <hr size="8" style="color: var(--primary);" width="200" />
                                <div class="container my-5">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-floating">

                                                <asp:TextBox ID="bookingDate" CssClass="form-control" placeholder="Birth Of Date" TextMode="Date" runat="server" />
                                                <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="bookingDate" ErrorMessage="Please Enter Your Booking Date"></asp:RequiredFieldValidator>-->
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="bookingRemark" class="form-control" runat="server" placeholder="Remark"></asp:TextBox>
                                                <label for="name">Remark</label>
                                                <!--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="bookingRemark" ErrorMessage="Please Enter Remark"></asp:RequiredFieldValidator>-->
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-3">
                                        <asp:Button class="btn btn-primary w-100 py-3" ID="bookpro" type="submit" runat="server" OnClick="bookpro_Click" Text="Book" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- end tab -->
        </ItemTemplate>
    </asp:Repeater>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
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

    <script>
        function openCity(evt, cityName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(cityName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        // Get the element with id="defaultOpen" and click on it
        document.getElementById("defaultOpen").click();
    </script>
</asp:Content>

