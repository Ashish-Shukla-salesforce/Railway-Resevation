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
        body{ background-image:url("https://ak7.picdn.net/shutterstock/videos/18556007/thumb/1.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
    </style>
    <div class="container">
    <div class="row col-md-8 col-md-offset-2 custyle">
          <div class="panel-heading">
                        <div class="panel-title"><center><h1>Book Ticket</h1></center></div>
                        <div style="float:right; font-size:150%; position: relative; top:-20px"></div>
                    </div> 
        <div class="panel-body">
            <form method="post" action="passengerpage.jsp">
    <table class="table table-striped custab">
<thead>
    
        <tr>
            <th>From Station</th>
            <th>To Station</th>
            <th>Train No.</th>
            <th>Train Name</th>
            <th>Arrival</th>
            <th>Departure</th>
            <th>Arrival at last station</th>
            <th>Fare AC1</th>
            <th>Fare AC2</th>
            <th>Fare AC3</th>
            <th>Fare SL</th>
            <th>Fare GN</th>
            <th>Fare CC</th>
            <th>Fare 2S</th>
            <th class="text-center">Book</th>
            
        </tr>
    </thead>
    <%
       String fromtr=request.getParameter("from");
            String totr=request.getParameter("to");
            
        conn.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="select * from trains where from_station='"+fromtr+"' and to_station='"+totr+"'";
            ResultSet rs=st.executeQuery(s);
            while(rs.next())
            {
        
%>
    <tr>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(73)%></td>
        <td><%=rs.getString(14)%></td>
        <td><%=rs.getString(15)%></td>
        <td><%=rs.getString(16)%></td>
        <td><%=rs.getString(17)%></td>
        <td><%=rs.getString(18)%></td>
        <td><%=rs.getString(19)%></td>
        <td><%=rs.getString(20)%></td>
        <td><form method="post" action="showResult.jsp">
                <input type="hidden" value=<%=rs.getString(1)%> name="tno">
                <input type="submit" name="con" class="btn btn-info btn-xs" value="Book"></form>
               
        </td>
   
            </tr>
            <%
            }
            %>
    </table>
            </form>
    </div>
</div>
    </div>
    </body>
</html>