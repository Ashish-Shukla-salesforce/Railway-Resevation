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
  <style>
        body{ background-image:url("https://www.pv-magazine.com/wp-content/uploads/2019/01/IndiantraincrBelurAshokFlickr-1200x900.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
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
<div class="container">
     <div class="row">
         <div class="col-lg-offset-10"></div>
         <div class="row col-md-8 col-md-offset-2 custyle">
    <div class="jumbotron">
        <div class="panel-heading">
            <center><h1>Add Train</h1></center>
        </div>
        <div class="panel-body">
            <form method="post" action="addtrain.jsp">
                  <input type="text" class="form-control" name="tno" placeholder="Enter train no."><br>
                  <input type="text" class="form-control" name="tname" placeholder="Enter train name">
                  <input type="text" class="form-control" name="fstation" placeholder="Enter from_station name">
                  <input type="text" class="form-control" name="tstation" placeholder="Enter last_station name">
                  <input type="text" class="form-control" name="arr" placeholder="Enter arrival time of train at initial station">
                  <input type="text" class="form-control" name="dep" placeholder="Enter departure time">
                  <input type="text" class="form-control" name="days" placeholder="Enter running days">
                  <input type="text" class="form-control" name="break1" placeholder="Enter first break journey">
                  <input type="text" class="form-control" name="break2" placeholder="Enter second break journey">
                  <input type="text" class="form-control" name="break3" placeholder="Enter third break journey">
                  <input type="text" class="form-control" name="break4" placeholder="Enter fourth break journey">
                  <input type="text" class="form-control" name="break5" placeholder="Enter fifth break journey">
                  <input type="text" class="form-control" name="fare1" placeholder="Enter fare of AC1">
                  <input type="text" class="form-control" name="fare2" placeholder="Enter fare of AC2">
                  <input type="text" class="form-control" name="fare3" placeholder="Enter fare of AC3">
                  <input type="text" class="form-control" name="fareS" placeholder="Enter fare of Sleeper">
                  <input type="text" class="form-control" name="fareG" placeholder="Enter fare of General">
                  <input type="text" class="form-control" name="fareCC" placeholder="Enter fare of Chair Car">
                  <input type="text" class="form-control" name="fare2S" placeholder="Enter fare of Second Seating">
                  <input type="text" class="form-control" name="arr1" placeholder="Enter arrival time for first break station">
                  <input type="text" class="form-control" name="dep1" placeholder="Enter departure time for first break station">
                  <input type="text" class="form-control" name="arr2" placeholder="Enter arrival time for second break station">
                  <input type="text" class="form-control" name="dep2" placeholder="Enter departure time for second break station">
                  <input type="text" class="form-control" name="arr3" placeholder="Enter arrival time for third break station">
                  <input type="text" class="form-control" name="dep3" placeholder="Enter departure time for third break station">
                  <input type="text" class="form-control" name="arr4" placeholder="Enter arrival time for fourth break station">
                  <input type="text" class="form-control" name="dep4" placeholder="Enter departure time for fourth break station">
                  <input type="text" class="form-control" name="arr5" placeholder="Enter arrival time for fifth break station">
                  <input type="text" class="form-control" name="dep5" placeholder="Enter departure time for fifth break station">
                  <input type="text" class="form-control" name="arr6" placeholder="Enter arrival time for last station">
                  <input type="text" class="form-control" name="fareone1" placeholder="Enter fare of AC1 for minimum one station">
                  <input type="text" class="form-control" name="fareone2" placeholder="Enter fare of AC2 for minimum one station">
                  <input type="text" class="form-control" name="fareone3" placeholder="Enter fare of AC3 for minimum one station">
                  <input type="text" class="form-control" name="fareoneS" placeholder="Enter fare of Sleeper for minimum one station">
                  <input type="text" class="form-control" name="fareoneG" placeholder="Enter fare of General for minimum one station">
                  <input type="text" class="form-control" name="fareoneC" placeholder="Enter fare of Chair Car for minimum one station">
                  <input type="text" class="form-control" name="fareone2S" placeholder="Enter fare of Second Seating for minimum one station">
                  <input type="text" class="form-control" name="faretwo1" placeholder="Enter fare of AC1 for two stations">
                  <input type="text" class="form-control" name="faretwo2" placeholder="Enter fare of AC2 for two stations">
                  <input type="text" class="form-control" name="faretwo3" placeholder="Enter fare of AC3 for two stations">
                  <input type="text" class="form-control" name="faretwoS" placeholder="Enter fare of Sleeper for two stations">
                  <input type="text" class="form-control" name="faretwoG" placeholder="Enter fare of General for two stations">
                  <input type="text" class="form-control" name="faretwoC" placeholder="Enter fare of Chair Car for two stations">
                  <input type="text" class="form-control" name="faretwo2S" placeholder="Enter fare of Second Seating for two stations">
                  <input type="text" class="form-control" name="farethree1" placeholder="Enter fare of AC1 for three stations">
                  <input type="text" class="form-control" name="farethree2" placeholder="Enter fare of AC2 for three stations">
                  <input type="text" class="form-control" name="farethree3" placeholder="Enter fare of AC3 for three stations">
                  <input type="text" class="form-control" name="farethreeS" placeholder="Enter fare of Sleeper for three stations">
                  <input type="text" class="form-control" name="farethreeG" placeholder="Enter fare of General for three stations">
                  <input type="text" class="form-control" name="farethreeC" placeholder="Enter fare of Chair Car for three stations">
                  <input type="text" class="form-control" name="farethree2S" placeholder="Enter fare of Second Seating for two stations">
                  <input type="text" class="form-control" name="farefour1" placeholder="Enter fare of AC1 for four stations">
                  <input type="text" class="form-control" name="farefour2" placeholder="Enter fare of AC2 for four stations">
                  <input type="text" class="form-control" name="farefour3" placeholder="Enter fare of AC3 for four stations">
                  <input type="text" class="form-control" name="farefourS" placeholder="Enter fare of Sleeper for four stations">
                  <input type="text" class="form-control" name="farefourG" placeholder="Enter fare of General for four stations">
                  <input type="text" class="form-control" name="farefourC" placeholder="Enter fare of Chair Car for four stations">
                  <input type="text" class="form-control" name="farefour2S" placeholder="Enter fare of Second Seating for four stations">
                  <input type="text" class="form-control" name="farefive1" placeholder="Enter fare of AC1 for five stations">
                  <input type="text" class="form-control" name="farefive2" placeholder="Enter fare of AC2 for five stations">
                  <input type="text" class="form-control" name="farefive3" placeholder="Enter fare of AC3 for five stations">
                  <input type="text" class="form-control" name="farefiveS" placeholder="Enter fare of Sleeper for five stations">
                  <input type="text" class="form-control" name="farefiveG" placeholder="Enter fare of General for five stations">
                  <input type="text" class="form-control" name="farefiveC" placeholder="Enter fare of Chair Car for five stations">
                  <input type="text" class="form-control" name="farefive2S" placeholder="Enter fare of Second Seating for five stations">
                  <input type="text" class="form-control" name="faresix1" placeholder="Enter fare of AC1 for six stations">
                  <input type="text" class="form-control" name="faresix2" placeholder="Enter fare of AC2 for six stations">
                  <input type="text" class="form-control" name="faresix3" placeholder="Enter fare of AC3 for six stations">
                  <input type="text" class="form-control" name="faresixS" placeholder="Enter fare of Sleeper for six stations">
                  <input type="text" class="form-control" name="faresixG" placeholder="Enter fare of General for six stations">
                  <input type="text" class="form-control" name="faresixC" placeholder="Enter fare of Chair Car for six stations">
                  <input type="text" class="form-control" name="faresix2S" placeholder="Enter fare of Second Seating for six stations">
                  <input type="text" class="form-control" name="noofseats1" placeholder="Enter number of seats for AC1">
                  <input type="text" class="form-control" name="noofseats2" placeholder="Enter number of seats for AC2">
                  <input type="text" class="form-control" name="noofseats3" placeholder="Enter number of seats for AC3">
                  <input type="text" class="form-control" name="noofseatsS" placeholder="Enter number of seats for Sleeper">
                  <input type="text" class="form-control" name="noofseatsG" placeholder="Enter number of seats for General">
                  <input type="text" class="form-control" name="noofseatsC" placeholder="Enter number of seats for Chair Car">
                  <input type="text" class="form-control" name="noofseats2S" placeholder="Enter number of seats for Second Seating">
                <input type="submit" name="add" value="Add train" class="btn btn-lg btn-success btn-block">
            </form>
        </div></div>
    </div></div></div>
    <%
        String tNo="";
        HttpSession hs=request.getSession();
       
        if(request.getParameter("add")!=null)
        {
       
             tNo=request.getParameter("tno");
            String tname=request.getParameter("tname");
            String fstation=request.getParameter("fstation");
            String tstation=request.getParameter("tstation");
            String dep=request.getParameter("dep");
            String arr=request.getParameter("arr");
            String days=request.getParameter("days");
            String break1=request.getParameter("break1");
            String break2=request.getParameter("break2");
            String break3=request.getParameter("break3");
            String break4=request.getParameter("break4");
            String break5=request.getParameter("break5");
            String fare1=request.getParameter("fare1");
            String fare2=request.getParameter("fare2");
            String fare3=request.getParameter("fare3");
            String fareS=request.getParameter("fareS");
            String fareG=request.getParameter("fareG");
            String fareC=request.getParameter("fareC");
            String fare2S=request.getParameter("fare2S");
            String arr1=request.getParameter("arr1");
            String dep1=request.getParameter("dep1");
            String arr2=request.getParameter("arr2");
            String dep2=request.getParameter("dep2");
            String arr3=request.getParameter("arr3");
            String dep3=request.getParameter("dep3");
            String arr4=request.getParameter("arr4");
            String dep4=request.getParameter("dep4");
            String arr5=request.getParameter("arr5");
            String dep5=request.getParameter("dep5");
            String fareone1=request.getParameter("fareone1");
            String fareone2=request.getParameter("fareone2");
            String fareone3=request.getParameter("fareone3");
            String fareoneS=request.getParameter("fareoneS");
            String fareoneG=request.getParameter("fareoneG");
            String fareoneC=request.getParameter("fareoneC");
            String fareone2S=request.getParameter("fareone2S");
            String faretwo1=request.getParameter("faretwo1");
            String faretwo2=request.getParameter("faretwo2");
            String faretwo3=request.getParameter("faretwo3");
            String faretwoS=request.getParameter("faretwoS");
            String faretwoG=request.getParameter("faretwoG");
            String faretwoC=request.getParameter("faretwoC");
            String faretwo2S=request.getParameter("faretwo2S");
            String farethree1=request.getParameter("farethree1");
            String farethree2=request.getParameter("farethree2");
            String farethree3=request.getParameter("farethree3");
            String farethreeS=request.getParameter("farethreeS");
            String farethreeG=request.getParameter("farethreeG");
            String farethreeC=request.getParameter("farethreeC");
            String farethree2S=request.getParameter("farethree2S");
            String farefour1=request.getParameter("farefour1");
            String farefour2=request.getParameter("farefour2");
            String farefour3=request.getParameter("farefour3");
            String farefourS=request.getParameter("farefourS");
            String farefourG=request.getParameter("farefourG");
            String farefourC=request.getParameter("farefourC");
            String farefour2S=request.getParameter("farefour2S");
            String farefive1=request.getParameter("farefive1");
            String farefive2=request.getParameter("farefive2");
            String farefive3=request.getParameter("farefive3");
            String farefiveS=request.getParameter("farefiveS");
            String farefiveG=request.getParameter("farefiveG");
            String farefiveC=request.getParameter("farefiveC");
            String farefive2S=request.getParameter("farefive2S");
            String faresix1=request.getParameter("faresix1");
            String faresix2=request.getParameter("faresix2");
            String faresix3=request.getParameter("faresix3");
            String faresixS=request.getParameter("faresixS");
            String faresixG=request.getParameter("faresixG");
            String faresixC=request.getParameter("faresixC");
            String faresix2S=request.getParameter("faresix2S");
            String arr6=request.getParameter("arr6");
            String noofseats1=request.getParameter("noofseats1");
            String noofseats2=request.getParameter("noofseats2");
            String noofseats3=request.getParameter("noofseats3");
            String noofseatsS=request.getParameter("noofseatsS");
            String noofseatsG=request.getParameter("noofseatsG");
            String noofseatsC=request.getParameter("noofseatsC");
            String noofseats2S=request.getParameter("noofseats2S");
            conn.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="insert into trains(train_nos,train_names,departure,arrival,from_station,to_station,running_days,break1,break2,break3,break4,break5,fareAC1,fareAC2,fareAC3,fareSL,fareGN,fareCC,fare2S,arrival1,departure1,arrival2,departure2,arrival3,departure3,arrival4,departure4,arrival5,departure5,fareAC1onestation,fareAC2onestation,fareAC3onestation,fareSLonestation,fareGNonestation,fareCConestation,fareAC1twostation,fareAC2twostation,fareAC3twostation,fareSLtwostation,fareGNtwostation,fareCCtwostation,fare2Stwostation,fare2Sonestation,fareAC1threestation,fareAC2threestation,fareAC3threestation,fareSLthreestation,fareGNthreestation,fareCCthreestation,fare2Sthreestation,fareAC1fourstation,fareAC2fourstation,fareAC3fourstation,fareSLfourstation,fareGNfourstation,fareCCfourstation,fare2Sfourstation,fareAC1fivestation,fareAC2fivestation,fareAC3fivestation,fareSLfivestation,fareGNfivestation,fareCCfivestation,fare2Sfivestation,fareAC1sixstation,fareAC2sixstation,fareAC3sixstation,fareSLsixstation,fareGNsixstation,fareCCsixstation,fare2Ssixstation,arrival6,NoOfSeatsAC1,NoOfSeatsAC2,NoOfSeatsAC3,NoOfSeatsSL,NoofSeatsGN,NoOfSeatsCC,NoOfSeats2S) values('"+tNo+"','"+tname+"','"+dep+"','"+arr+"','"+fstation+"','"+tstation+"','"+days+"','"+break1+"','"+break2+"','"+break3+"','"+break4+"','"+break5+"','"+fare1+"','"+fare2+"','"+fare3+"','"+fareS+"','"+fareG+"','"+fareC+"','"+fare2S+"','"+arr1+"','"+dep1+"','"+arr2+"','"+dep2+"','"+arr3+"','"+dep3+"','"+arr4+"','"+dep4+"','"+arr5+"','"+dep5+"','"+fareone1+"','"+fareone2+"','"+fareone3+"','"+fareoneS+"','"+fareoneG+"','"+fareoneC+"','"+faretwo1+"','"+faretwo2+"','"+faretwo3+"','"+faretwoS+"','"+faretwoG+"','"+faretwoC+"','"+faretwo2S+"','"+fareone2S+"','"+farethree1+"','"+farethree2+"','"+farethree3+"','"+farethreeS+"','"+farethreeG+"','"+farethreeC+"','"+farethree2S+"','"+farefour1+"','"+farefour2+"','"+farefour3+"','"+farefourS+"','"+farefourG+"','"+farefourC+"','"+farefour2S+"','"+farefive1+"','"+farefive2+"','"+farefive3+"','"+farefiveS+"','"+farefiveG+"','"+farefiveC+"','"+farefive2S+"','"+faresix1+"','"+faresix2+"','"+faresix3+"','"+faresixS+"','"+faresixG+"','"+faresixC+"','"+faresix2S+"','"+arr6+"','"+noofseats1+"','"+noofseats2+"','"+noofseats3+"','"+noofseatsS+"','"+noofseatsG+"','"+noofseatsC+"','"+noofseats2S+"')";
            int x=st.executeUpdate(s);
            if(x>0)
            {
                out.println("<script>alert('Train Inserted');</script>");
            }
        }
    %>
    
    <div class="container">
    <div class="row col-md-8 col-md-offset-2 custyle">
    <table class="table table-striped custab">
    <thead>
    
        <tr>
            <th>Train Number</th>
            <th>Train Name</th>
            <th>Delete</th>
             <th class="text-center">Action</th>
            
        </tr>
    </thead>
    <%
       conn.DBConnect db=new DBConnect();
            Connection con=db.getConnect();
            Statement st=con.createStatement();
            String s="select * from trains where train_nos='"+tNo+"'";
            ResultSet rs=st.executeQuery(s);
            while(rs.next())
            {
        
%>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><form method="post" action="addtrain.jsp">
                <input type="hidden" name="tno">
                <input type="submit" name="del" value="Delete"></form></td>
    <%
String status=rs.getString(7);
        
        %>
                <td class="text-center">
<form method="post" action="addtrain.jsp">
    <input type="hidden" value=<%=rs.getString(1)%> name="tno">
    <input type="submit" name="act" class="btn btn-info btn-xs" value="Active">
</form>
                
                <form method="post" action="addtrain.jsp">
    <input type="hidden" value=<%=rs.getString(1)%> name="tno">
    <input type="submit" name="act" class="btn btn-danger btn-xs" value="Inactive">
</form>
                </td>
            </tr>
            <%
            }
            %>
    </table>
    </div>
</div>
    <%
    if(request.getParameter("del")!=null)
    {
         tNo=request.getParameter("tno");
        conn.DBConnect db1=new DBConnect();
            Connection con1=db1.getConnect();
            Statement st1=con1.createStatement();
            String ss="update trains set status='inactive' where train_nos='"+tNo+"'";
            int x=st1.executeUpdate(ss);
            if(x>0)
            {
                response.sendRedirect("addtrain.jsp");
            }
            
            
        
    }    
    
    
    
    %>
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
