
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conn.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
    body#LoginForm{ background-image:url("https://newsd.in/wp-content/uploads/2017/02/Railway-Station-Wallpapers-10-1.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}

.form-heading { color:#fff; font-size:23px;}
.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.login-form .form-group {
  margin-bottom:10px;
}
.login-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.login-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}
.forgot {
  text-align: left; margin-bottom:30px;
}
.botto-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.login-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}

    
</style>
    </head>
    <body id="LoginForm">
       <div class="container">
<h1 class="form-heading">login Form</h1>
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>Admin Login</h2>
   <p>Please enter your username and password</p>
   </div>
    <form id="Login" method="post" action="index.jsp">
         <div class="form-group">


             <select class="form-control" name="zID">
                 <option> Select your zone_id</option>
                 <%
                 conn.DBConnect db1=new DBConnect();
                 Connection con1=db1.getConnect();
                 Statement st1=con1.createStatement();
                 String s1="select zone_id from zone";
                 ResultSet rs1=st1.executeQuery(s1);
                 while(rs1.next())
                 {
                 %>
                 <option>
                     <%=rs1.getString(1)%>
                 </option>
                 <%
                 }
                 %>
             </select>
                </div>

        <div class="form-group">


            <input type="text" class="form-control" id="inputEmail" name="uname" placeholder="UserName">

        </div>

        <div class="form-group">

            <input type="password" class="form-control" id="inputPassword" name="pass" placeholder="Password">

        </div>
        <div class="forgot">
        <a href="reset.html">Forgot password?</a>
</div>
        <button type="submit" name="log" class="btn btn-primary">Login</button>

    </form>
    </div>
<p class="botto-text"> Designed by Ashish Shukla</p>
</div></div></div>
<%
                 if (request.getParameter("log")!=null)
                 {
                     String zID=request.getParameter("zID");
                     String uname=request.getParameter("uname");
                     String pass=request.getParameter("pass");
                     DBConnect db=new DBConnect();
                     Connection con=db.getConnect();
    Statement st=con.createStatement();
    String s="select * from admin where zone_id='"+zID+"' and username='"+uname+"' and password='"+pass+"'";
    ResultSet rs=st.executeQuery(s);
    if(rs.next())
    {
        HttpSession hs=request.getSession();
        hs.setAttribute("zID",zID);
        hs.setAttribute("uname",uname);
        response.sendRedirect("adminhome.jsp");
    }
    else
    {
         out.println("<script>alert('Invalid Username or password');</script>");
         response.sendRedirect("index.jsp");
    }
                 }
 %>
</body>
</html>
