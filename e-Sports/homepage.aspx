<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="e_Sports.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">

    <div class="mb-3">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-100" src="Img/tour1.png" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="Img/tour2.png" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="Img/tour3.jpg" alt="Third slide">
            </div>
              <div class="carousel-item">
              <img class="d-block w-100" src="Img/tour4.jpg" alt="Third slide">
            </div>
              <div class="carousel-item">
              <img class="d-block w-100" src="Img/tour5.jpg" alt="Third slide">
            </div>
              <div class="carousel-item">
              <img class="d-block w-100" src="Img/tour6.jpg" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
    </div>

    <%--<hr style="background-color:white;" />--%>

    <div class="container-fluid" style="color:#F1F4F6">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <center>
                    <img src="Img/home3.jpg" alt="Not Found" style="height:45vh;width=45vw;padding:5px;" />
                </center>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12" style="padding-top:10%;">
                <center>
                    <h3>Collaboration</h3>
                    <pre style="color:#F1F4F6;">Grab a opportunity of e-sports collab.
Here, You get large number of
Tornament event.
                    </pre>
                </center>    
            </div>
        </div>
    </div>

    <%--<hr style="background-color:white;" />--%>

    <div class="container-fluid" style="color:#F1F4F6">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12" style="padding-top:10%;">
                <center>
                    <h3>Play More Tournament</h3>
                    <pre style="color:#F1F4F6;">Get more tournament Events.
Here, You get large number of
Tornament event.
                    </pre>
                </center>    
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <center>
                    <img src="Img/home2.jpg" alt="Not Found" style="height:250px;width:380px;padding:5px;" />
                </center>
            </div>
        </div>
    </div>

    <div class="container-fluid" style="color:#F1F4F6">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <center>
                    <img src="Img/home4.jpg" alt="Not Found" style="height:45vh;width:45vw;padding:5px;" />
                </center>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12" style="padding-top:10%;">
                <center>
                    <h3>Expand Your Organization</h3>
                    <pre style="color:#F1F4F6;">Get more tournament player.
Here,grab large number of
Tornament player.
                    </pre>
                </center>    
            </div>
        </div>
    </div>





</asp:Content>
