<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conn.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Simple Sidebar - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <style>
        body{ background-image:url("https://stmed.net/sites/default/files/styles/1600x1200/public/steam-train-wallpapers-32579-5372774.jpg?itok=WxwABObt"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
    </style>
    </head>
    <body>
        <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        Indian Railways
                    </a>
                </li>
                <li>
                    <a href="adminhome.jsp">Profile</a>
                </li>
                <li>
                    <a href="changepass.jsp">Change Password</a>
                </li>
                <li>
                    <a href="addtrain.jsp">Add/Remove Train</a>
                </li>
                <li>
                    <a href="pnrstatus.jsp">PNR Status Confirmation</a>
                </li>
                <li>
                    <a href="reguser.jsp">Registered Users</a>
                </li>
                 <li>
                    <a href="regpass.jsp">Bookings Registered</a>
                </li>
                <li>
                    <a href="logout.jsp">Log Out</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1></h1>
                        <p></p>
                        <a href="#menu-toggle" class="btn btn-default" id="menu-toggle">Slider</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->
<!---<div class="span3 well">
    <div class="container-fluid">
    <div class="row">
        <div class="col-lg-offset-8">
        </div>
        <div class="col-sm-8">
      <legend>New to WebApp? Sign up!</legend>
    <form accept-charset="UTF-8" action="" method="post">
		<input class="span3" name="name" placeholder="Full Name" type="text"> 
        <input class="span3" name="username" placeholder="Username" type="text">
        <input class="span3" name="password" placeholder="Password" type="password"> 
        <button class="btn btn-warning" type="submit">Sign up for WebApp</button>
    </form></div>
    </div></div></div>
    <!-- jQuery -->
   
    <div class="btn-toolbar">
  </div>
<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>S.No.</th>
          <th>PNR No.</th>
          <th>Train No.</th>
          <th>Class</th>
          <th>From Station</th>
          <th>To Station</th>
          <th>Boarding</th>
          <th>No. Of Passengers</th>
          <th>Passenger1</th>
          <th>Passenger2</th>
          <th>Passenger3</th>
          <th>Passenger4</th>
          <th>Passenger5</th><br>
          <th>Ages</th>
          <th>Gender</th>
          <th>Mobile</th>
          <th>E-mail</th>
          <th>Address</th>
          <th>Aadhar No.</th>
          <th style="width: 36px;"></th>
        </tr>
      </thead>
      <tbody>

    <%
        int i=0;
            HttpSession hs=request.getSession();
            //String custid=hs.getAttribute("cid").toString();
            conn.DBConnect db1=new DBConnect();
            Connection con=db1.getConnect();
            Statement st=con.createStatement();
            String s1="select * from booking";
            ResultSet rs1=st.executeQuery(s1);
            while(rs1.next())
            {
                
                i++;
                %>
        <tr>
          <td><%=i%></td>
          <td><%=rs1.getString(20)%></td>
          <td><%=rs1.getString(1)%></td>
          <td><%=rs1.getString(3)%></td>
          <td><%=rs1.getString(5)%></td>
          <td><%=rs1.getString(6)%></td>
          <td><%=rs1.getString(7)%></td>
          <td><%=rs1.getString(8)%></td>
          <td><%=rs1.getString(9)%></td>
          <td><%=rs1.getString(10)%></td>
          <td><%=rs1.getString(11)%></td>
          <td><%=rs1.getString(12)%></td>
          <td><%=rs1.getString(13)%></td>
          <td><%=rs1.getString(21)%></td>
          <td><%=rs1.getString(17)%></td>
          <td><%=rs1.getString(14)%></td>
          <td><%=rs1.getString(15)%></td>
          <td><%=rs1.getString(16)%></td>
          <td><%=rs1.getString(18)%></td>
        </tr>
        <%
      }
            %>
      </tbody>
    </table>
</div>
                
    </body>
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

</html>

