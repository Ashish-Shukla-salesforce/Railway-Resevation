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
                  <input type="text" class="form-control" name="uid" placeholder="Enter User Id"><br>
                  <input type="text" class="form-control" name="pno" placeholder="Enter number of passengers">
                  <input type="text" class="form-control" name="p1" placeholder="Enter name of first passenger">
                  <input type="text" class="form-control" name="p2" placeholder="Enter name of second passenger">
                  <input type="text" class="form-control" name="p3" placeholder="Enter name of third passenger">
                  <input type="text" class="form-control" name="p4" placeholder="Enter name of fourth passenger">
                  <input type="text" class="form-control" name="p5" placeholder="Enter name of fifth passenger">
                  <input type="text" class="form-control" name="age" placeholder="Enter ages of passengers sequentially">
                  <input type="text" class="form-control" name="gen" placeholder="Enter gender of passengers sequentially">
                  <input type="text" class="form-control" name="boa" placeholder="Enter boarding station">
                  <input type="text" class="form-control" name="cla" placeholder="Enter class you are travelling">
                  <input type="text" class="form-control" name="mob" placeholder="Enter Mobile Number">
                  <input type="text" class="form-control" name="email" placeholder="Enter email address">
                   <input type="text" class="form-control" name="add" placeholder="Enter permanent address">
                  <input type="text" class="form-control" name="adhaar" placeholder="Enter adhaar number ">
                   <input type="text" class="form-control" name="fare" placeholder="Enter total fare according to class chosen(fare*no.of passengers">
                     <input type="submit" name="book" value="" action="bookedticket.jsp"class="btn btn-lg btn-success btn-block">
            </form>
        </div></div>
    </div></div></div>
    <%
       
        HttpSession hs=request.getSession();
       
        if(request.getParameter("book")!=null)
        {
       
            String uid=request.getParameter("uid");
            String pno=request.getParameter("pno");
            String p1=request.getParameter("p1");
            String p2=request.getParameter("p2");
            String p3=request.getParameter("p3");
            String p4=request.getParameter("p4");
            String p5=request.getParameter("p5");
            String age=request.getParameter("age");
            String gen=request.getParameter("gen");
            String boa=request.getParameter("boa");
            String cla=request.getParameter("cla");
            String mob=request.getParameter("mob");
            String email=request.getParameter("email");
            String add=request.getParameter("add");
            String adhaar=request.getParameter("adhaar");
             String tot=request.getParameter("fare");
             conn.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="insert into booking(user_id,class,boarding,no_of_passengers,passenger1,passenger2,passenger3,passenger4,passenger5,mobile,email,address,gender_sequentially,aadhar_no,total_fare,Age_sequentially('"+uid+"','"+cla+"','"+boa+"','"+pno+"','"+p1+"','"+p2+"','"+p3+"','"+p4+"','"+p5+"','"+mob+"','"+email+"','"+add+"','"+gen+"','"+adhaar+"','"+tot+"','"+age+"')";
             ResultSet rs=st.executeQuery(s);
            while(rs.next())
            {
        
%>
<tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(8)%></td>
        <td><%=rs.getString(9)%></td>
        <td><%=rs.getString(10)%></td>
        <td><%=rs.getString(11)%></td>
        <td><%=rs.getString(12)%></td>
        <td><%=rs.getString(13)%></td>
        <td><%=rs.getString(21)%></td>
        <td><%=rs.getString(17)%></td>
        <td><%=rs.getString(7)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(14)%></td>
        <td><%=rs.getString(15)%></td>
        <td><%=rs.getString(16)%></td>
        <td><%=rs.getString(18)%></td>
        <td><%=rs.getString(19)%></td>
</tr>
          <%
            }
            %>
</body>
</html>