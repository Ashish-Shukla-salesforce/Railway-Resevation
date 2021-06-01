<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conn.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
          <a class="navbar-brand" href="#"><font size="5">Indian Railways</font></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp"><font size="4">Home</font>
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><font size="4">About</font></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><font size="4">Services</font></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.html"><font size="4">Contact</font></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.jsp"><font size="4">SignUp/Login</font></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
         <style>
        body{ background-image:url("https://images.unsplash.com/photo-1540804236945-b6ae24bfe0a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
    </style>

<div class="container">    
        <div id="loginbox" style="margin-top:200px;" class="mainbox col-md-6 col-md-offset-2 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title"><center><h1>PNR Enquiry</h1></center></div>
                        <div style="float:right; font-size:120%; position: relative; top:-10px"></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 30px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                         <input type="text" class="form-control" name="pno" placeholder="Enter your PNR no."><br>                                      
                                    </div>
                                
                            
                                    

                                
                


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                        <button type="submit" id="btn-login" href="ticketpage.html" class="btn btn-success" name="add">PNR Status</button>                                        

                                    </div>
                                </div>


                               
                            </form>     



                        </div>                     
                    </div>  
        </div>
                
         </div> 
    

    </body>
</html>
