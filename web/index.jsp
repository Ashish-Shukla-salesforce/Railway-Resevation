<%@page import="java.sql.ResultSet"%>
<%@page import="conn.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Full Slider - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full-slider.css" rel="stylesheet">
        
    </head>
    <body>
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Indian Railways</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
            <%
                String userid=null;
            HttpSession hs=request.getSession();
            if(hs.isNew())
            {
            
            
            %>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">SignUp/Login</a>
            </li>
            <%
            }
            else
            {
                userid=hs.getAttribute("userid").toString();
                %>
                <li class="nav-item">
              <a class="nav-link" href="logout.jsp">Logout</a>
            </li>
            <%
            }
            %>
          </ul>
        </div>
      </div>
    </nav>

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('Images/railway3.jpg')">
            <div class="carousel-caption d-none d-md-block">
              
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('Images/railway2.jpeg')">
            <div class="carousel-caption d-none d-md-block">
             
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('Images/railway4.jpg')">
            <div class="carousel-caption d-none d-md-block">
              
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

    <!-- Page Content -->
    <section class="py-5">
       
      <div class="container">
            
        <div class="row">  
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                   <a href="bookingticket.jsp"><img class="card-img-top" src="Images/Ticket Railway.jpg" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#"></a>
                        </h4>
                        <h5> Train Ticket</h5>
                        <p class="card-text"></p>
                    </div>
                    <div class="card-footer">
                        <h6>
                            <form method="post" action="index.jsp">
    
                        </h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card h-100">
                   <a href="pnr.jsp"><img class="card-img-top" src="Images/downloadpnr.png" alt=""></a>
                    <div class="card-body">
                        <h4 class="card-title">
                            <a href="#"></a>
                        </h4>
                        <br><br><br>
                        <h5> PNR Enquiry</h5>
                        <p class="card-text"></p>
                    </div>
                    <div class="card-footer">
                        <h6>
                            <form method="post" action="index.jsp">
    
                        </h6>
                    </div>
                </div>
            </div>
                                
        </div>
      </div>
    </section>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
    </body>
</html>

