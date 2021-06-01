<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conn.DBConnect"%>
<html lang="en">
    <head>
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
    <style>
        body{ background-image:url("https://images.pexels.com/photos/1881868/pexels-photo-1881868.jpeg?cs=srgb&dl=indian-railway-journey-train-1881868.jpg&fm=jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
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
                    <a href="reguser.jsp">Registered Passengers</a>
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
     <div class="container">
    <div class="row col-md-8 col-md-offset-2 custyle">
         <div class="panel-heading">
            <center><h1>PNR Status</h1></center>
        </div>
    <table class="table table-striped custab">
<thead>
    
        <tr>
            <th>Train Number</th>
            <th>PNR No.</th>
            <th class="text-center">PNR Status</th>
             <th class="text-center">Quota</th>
            
        </tr>
    </thead>
    <%
       conn.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="select * from pnr";
            ResultSet rs=st.executeQuery(s);
            while(rs.next())
            {
        
%>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><form method="post" action="pnrstatus.jsp">
                <input type="hidden" value=<%=rs.getString(1)%> name="tno">
                <input type="submit" name="con" class="btn btn-info btn-xs" value="Confirm"></form>
                <form method="post" action="pnrstatus.jsp">
                 <input type="hidden" value=<%=rs.getString(1)%> name="tno">
                <input type="submit" name="wai" class="btn btn-danger btn-xs" value="Waiting"></form>
        </td>
    <%
String status=rs.getString(7);
        
        %>
                <td class="text-center">
<form method="post" action="pnrstatus.jsp">
    <input type="hidden" value=<%=rs.getString(1)%> name="tno">
    <input type="submit" name="act" class="btn btn-info btn-xs" value="HO">
</form>
                
                <form method="post" action="pnrstatus.jsp">
    <input type="hidden" value=<%=rs.getString(1)%> name="tno">
    <input type="submit" name="act" class="btn btn-info btn-xs" value="General">
</form>
                </td>
            </tr>
            <%
            }
            %>
    </table>
    </div>
</div>
   
    <!-- jQuery -->
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
<%
HttpSession hs=request.getSession();


%>
    </body>
</html>

