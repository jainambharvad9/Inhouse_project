<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" AutoEventWireup="true" CodeFile="view-property.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .order-logo,
        .cart-image {
            width: 14%;
        }

        .order-header {
            background-color: rgb(231, 231, 231);
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 3.5rem auto;
            padding: .7rem;
        }

        .order-content {
            margin: 1rem;
        }

            .order-content .content {
                display: flex;
                justify-content: space-between;
            }

        .table th {
            color: #000 !important;
        }

        .status {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .step {
            flex: 1;
            text-align: center;
            position: relative;
        }

            .step::before {
                content: attr(data-step);
                width: 2.5rem;
                height: 2.5rem;
                background-color: #646464;
                border: 2px solid #fff;
                border-radius: 50%;
                display: block;
                margin: 0 auto 10px auto;
                line-height: 2.5rem;
                color: #fff;
            }

            .step.placed::after {
                width: 50%;
            }

            .step:nth-child(1):before {
                background-color: #000 !important;
            }

            .step:nth-child(1) span {
                color: #000 !important;
            }




            .step.shipped::after {
                width: 100%;
            }

            .step.placed::after {
                width: 50%;
            }

            .step.delivered::after {
                width: 50%;
            }

            .step.placed::after,
            .step.shipped::after,
            .step.delivered::after {
                content: "";
                height: 2px;
                background-color: #ccc;
                position: absolute;
                top: 14px;
                left: -50%;
                z-index: -1;
            }

            .step.placed::after {
                left: 50%;
                background-color: #000;
            }

            .step.shipped::after {
                left: 0%;
            }

            .step.delivered::after {
                left: 0%;
            }

            .step.delivered::after {
                width: 50%;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">



    <div class="container-fluid order">
        <div class="order-content">
            <div class="content">
                <span style="margin-bottom: .5rem;">
                    <span style="color: #000; font-weight: 900;">Client Name : </span>
                    <span><%# userName %></span>
                </span>
                <span style="margin-bottom: .5rem;">
                    <span style="color: #000; font-weight: 900;">Booking Id : </span>
                    <span><%# bookingId %> </span>
                </span>
            </div>
            <div class="content">
                <span style="margin-bottom: .5rem;">
                    <span style="color: #000; font-weight: 900;">Client Contact Number : </span>
                    <span><%# userNumber %></span>
                </span>
                <span style="margin-bottom: .5rem;">
                    <span style="color: #000; font-weight: 900;">Booking Date : </span>
                    <span><%# bookingDate %></span>
                </span>
            </div>
            <div class="content">
                <span style="margin-bottom: .5rem;">
                    <span style="color: #000; font-weight: 900;">Client Address : </span>
                    <span><%# userAdd %></span>
                </span>
                <span style="margin-bottom: .5rem;">
                    <span style="color: #000; font-weight: 900;">Payment Status : </span>
                    <span>Face To Face</span>
                </span>
                <!--  </div><a href="" onclick="window.print()" class="button">Print</a>-->
            </div>
            <div class="table-responsive">
            <table class="table">

                <thead>
                    <tr>
                        <th class="text-center" colspan="6" style="padding: 1rem; background-color: #eaeaea;">Property Details
                        </th>
                    </tr>
                    <tr>
                        <th>Project Id</th>
                        <th>Property</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%# projectId %></td>
                        <td class="d-flex">
                            <img src='../projectimage/<%# projectImage %>' class="image-fluid cart-image" height="150px" width="100px" />
                            <p class="text-justify" style="text-align: justify;">
                                <%# projectDiscrip %>
                            </p>
                        </td>
                        <td><%# projectPrice %></td>
                    </tr>
                </tbody>
            </table>
                </div>
        </div>

    </div>
    <script>
        var styleEl = document.head.appendChild(document.createElement("style"));
        if ("shipped" == "") {
            styleEl.innerHTML = ".step:nth-child(2):before{background-color: #000!important}.step:nth-child(2) span{color: #000!important}.step.shipped::after{background-color: #000!important}";
        }
        if ("delivered" == "") {
            styleEl.innerHTML = ".step:nth-child(2):before{background-color: #000!important}.step:nth-child(2) span{color: #000!important}.step.shipped::after{background-color: #000!important}.step:nth-child(3):before{ background-color: #000!important }.step:nth-child(3) span{ color: #000!important }.step.delivered::after{background-color: #000!important}";
        }
    </script>
</asp:Content>

