<%@ Page Title="" Language="C#" MasterPageFile="~/inhouse.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .container.profile {
            border: 1px solid #ff0000;
            margin-top: 5rem;
            margin-bottom: 5rem;
            padding: 5rem;
        }

        .profile-header {
            display: flex;
            align-items: center;
        }

        .profile-img {
            width: 7.9rem;
            height: 7.9rem;
            border-radius: 50%;
            object-fit: contain;
            border: 1px solid #ffaaaa;
        }

        .username {
            margin-left: 1rem;
            font-weight: 700;
            text-transform: capitalize;
            font-size: 1.7rem;
        }

        .table {
            margin-top: 3rem !important;
        }

        /* .table>:not(caption)>*>* {
                border-bottom-width: 0px;
            } */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
        <form runat="server">

     
          
            <div class="container profile border border-success bg-primary text-white">
               
                <span class="profile-header text-white">
                    <img src="Admin/img/undraw_profile.svg" class="img-fluid profile-img">
                    <p class="username text-white"><%# userName  %></p>
                </span>


                  
                <table class="table text-white">


                    <tr>
                        <td style="font-weight: 600;">User Id</td>
                        <td>:&nbsp;&nbsp;&nbsp;&nbsp;<%#  usersId %></td>
                    </tr>
                    <tr>
                        <td style="font-weight: 600;">Email</td>
                        <td>:&nbsp;&nbsp;&nbsp;&nbsp;<%# userEmail %></td>
                    </tr>

                </table>
                      
                <span class="d-flex">
                    <a href="update-profile.aspx" class="btn btn-warning"><i class="fas fa-fw fa-pen-square"></i>
                        Edit</a>
                    <a href="logout.aspx" class="btn btn-danger mx-2"><i class="fas fa-fw fa-arrow-right"></i>
                        Log Out</a>
                </span>
                <p style="margin: 2rem 0rem; font-weight: bold; font-size: 1.5rem;">Your Booking</p>
                <table class="table text-white" style="border-bottom-width: 1px !important;">
                    <tr>
                        <th>Date</th>
                        <th>Property Name</th>
                        <th>Action</th>
                    </tr>
                    <tr>
                        <td><%# bookingDate %></td>
                        <td><%# projectName %></td>
                       <td> <asp:Button CommandArgument='<%# bookingId %>' runat="server" ID="btndelete" Text="Cancel"  CssClass="btn btn-danger" OnClick="btndelete_Click" />
                           <a  href="view-property.aspx?id=<%# projectId %>" class="btn btn-info"> Detail  </a>
                       </td>
                    </tr>

                </table>

            </div>
       


    </form>
</asp:Content>

