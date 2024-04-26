<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmaster.master" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <!-- Main Content -->
    <div id="content">

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                <!-- <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>-->
            </div>

            <!-- Content Row -->
            <div class="row">

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        Total (Property)
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <asp:Label runat="server" ID="lblproperty">

                                        </asp:Label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-house-user fa-2x text-gray-300"></i>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                        Total (Booking)
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <asp:Label runat="server" ID="lblbook">

                                        </asp:Label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-book fa-2x text-gray-300"></i>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-info shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                        Total (users)
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <asp:Label runat="server" ID="lbluser">

                                        </asp:Label>
                                    </div>



                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending Requests Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-warning shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                        Total (Photos.)
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">
                                        <asp:Label runat="server" ID="lblphoto">
                                        </asp:Label>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-photo-video fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Content Row -->
            <div class="row">

                <!-- Pie Chart -->
                <div class="col-xl-4 col-lg-5">
                    <div class="card shadow mb-4">
                        <!-- Card Header - Dropdown -->
                        <div
                            class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Propertys</h6>
                            <div class="dropdown no-arrow">
                                <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                    aria-labelledby="dropdownMenuLink">
                                    <div class="dropdown-header">Dropdown Header:</div>
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </div>
                        </div>
                        <!-- Card Body -->
                        <div class="card-body">
                            <div class="chart-pie pt-4 pb-2">
                                <canvas id="myPieChart"></canvas>
                            </div>
                            <input type="hidden" value="<%= new ConnectionClass().allScalar("select count(*) from projects where projectType = 'Apartment'").ToString() %>" id="Apartment" />
                            <input type="hidden" value="<%= new ConnectionClass().allScalar("select count(*) from projects where projectType = 'Villa'").ToString() %>" id="Villa" />
                            <input type="hidden" value="<%= new ConnectionClass().allScalar("select count(*) from projects where projectType = 'Home'").ToString() %>" id="Home" />
                            <input type="hidden" value="<%= new ConnectionClass().allScalar("select count(*) from projects where projectType = 'Townhouse'").ToString() %>" id="Townhouse" />
                            <div class="mt-4 text-center small">
                                <span class="mr-2">
                                    <i class="fas fa-circle text-primary"></i>Apartment
                                </span>
                                <span class="mr-2">
                                    <i class="fas fa-circle text-success"></i>Villa
                                </span>
                                <span class="mr-2">
                                    <i class="fas fa-circle text-info"></i>Home
                                </span>
                                <span class="mr-2">
                                    <i class="fas fa-circle text-danger"></i>Townhouse
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-8 mb-4">

                    <!-- Approach -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Development Approach</h6>
                        </div>
                        <div class="card-body">
                            <p> <span class="text-primary"<b>"InHouse"</b></span> is envisioned as an innovative real estate project that prioritizes modern living and sustainability. The development approach for this project involves a holistic strategy integrating architectural excellence, smart technology, and environmental consciousness.</p>
                            <p class="mb-0"><b><span class="text-primary">1</span>:Market Research: </b>Begin with a thorough market analysis to understand the needs and preferences of potential buyers or renters in the target demographic.</p>
                            <p class="mb-0"><b><span class="text-primary">2</span>:Smart Technology Integration:</b> Implement cutting-edge home automation systems to enhance convenience and efficiency. Focus on features like smart lighting, security, and climate control, creating a connected and futuristic living experience.</p>
                            <p class="mb-0"><b><span class="text-primary">3</span>:Architectural Design:</b> Collaborate with renowned architects to design contemporary and functional living spaces.</p>
                            <p class="mb-0"><b><span class="text-primary">4</span>:Environmental Sustainability:</b> Prioritize green building practices, incorporating renewable energy sources, efficient waste management, and eco-friendly landscaping. Obtain relevant certifications to highlight the project's commitment to sustainability.</p>
                        </div>
                    </div>

                </div>



            </div>


            <div class="row">

                <!-- Pie Chart -->


                <div class="col-lg-12 mb-4">

                    <!-- Approach -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Latest Booking</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <asp:Repeater ID="rp6" runat="server">
                                    <HeaderTemplate>
                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>Booking Id</th>
                                                    <th>User Id</th>
                                                    <th>Project Id</th>
                                                    <th>Booking Date</th>
                                                    <th>Booking Remark</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("bookingId") %></td>
                                            <td><%# Eval("userName") %></td>
                                            <td><%# Eval("projectName") %></td>
                                            <td><%# DateTime.Parse(Eval("bookingDate").ToString()).ToString("dd-MM-yyyy") %></td>
                                            <td><%# Eval("bookingRemark") %></td>


                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        <tfoot>
                                            <tr>
                                                <th>Booking Id</th>
                                                <th>User Id</th>
                                                <th>Project Id</th>
                                                <th>Booking Date</th>
                                                <th>Booking Remark</th>

                                            </tr>
                                        </tfoot>
                                        </tbody>
                    </table>
                                    </FooterTemplate>




                                </asp:Repeater>
                            </div>
                        </div>
                    </div>

                </div>



            </div>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
</asp:Content>

