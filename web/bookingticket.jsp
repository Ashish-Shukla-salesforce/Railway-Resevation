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
    
    <br><br><br><br><br><br>
    <div class="container" style="margin-left:30%;min-height: 600px;">
     <div class="row">
         <div class="col-lg-offset-20"></div>
         <div class="row col-md-10 col-md-offset-8 custyle">
   <div class="panel panel-info" style="min-height:200px;width: 40%">
                    <div class="panel-heading">
                        <div class="panel-title"><center><h1>Book Ticket</h1></center></div>
                        <div style="float:right; font-size:150%; position: relative; top:-20px"></div>
                    </div> 
        <div class="panel-body">
            <form method="post" action="showResult.jsp">
                <select style="font-size:20px;" name="from">
                 <option>From Station</option>
                 <%
                 conn.DBConnect db1=new DBConnect();
                 Connection con1=db1.getConnect();
                 Statement st1=con1.createStatement();
                 String s1="select * from trains";
                 ResultSet rs1=st1.executeQuery(s1);
                 while(rs1.next())
                 {
                 %>
                 <option>
                     <%=rs1.getString(5)%>
                 </option>
                 <option>
                     <%=rs1.getString(9)%>
                 </option>
                 <option>
                     <%=rs1.getString(10)%>
                 </option>
                 <option>
                     <%=rs1.getString(11)%>
                 </option>
                 <option>
                     <%=rs1.getString(12)%>
                 </option>
                 <option>
                     <%=rs1.getString(13)%>
                 </option>
                 <%
                 }
                 %>
             </select>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <select style="font-size:20px" name="to">
                 <option>To Station</option>
                 <%
                 conn.DBConnect db2=new DBConnect();
                 Connection con2=db2.getConnect();
                 Statement st2=con2.createStatement();
                 String s2="select * from trains";
                 ResultSet rs2=st2.executeQuery(s1);
                 while(rs2.next())
                 {
                 %>
                 <option>
                     <%=rs2.getString(9)%>
                 </option>
                 <option>
                     <%=rs2.getString(10)%>
                 </option>
                 <option>
                     <%=rs2.getString(11)%>
                 </option>
                 <option>
                     <%=rs2.getString(12)%>
                 </option>
                 <option>
                     <%=rs2.getString(13)%>
                 </option>
                 <option>
                     <%=rs2.getString(6)%>
                 </option>
                 <%
                 }
                 %>
             </select>
             <br><br><br>
                  
                <input type="submit" name="add" value="Find Train" class="btn btn-lg btn-success btn-block">
            </form>
        </div></div>
    </div></div></div>
    
         <div class="form-group">


            
                </div>
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
    
    </body>
</html>

    
