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
        body{ background-image:url("https://wallpaperstock.net/bratislava---rail-station-wallpapers_27014_2560x1440.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}
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
