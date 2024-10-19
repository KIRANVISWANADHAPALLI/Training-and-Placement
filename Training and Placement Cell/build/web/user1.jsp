<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>A Novel Efficient Remote Data Possession</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script src="js/cufon-yui.js" type="text/javascript" charset="utf-8"></script>
<script src="js/Chaparral_Pro.font.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
</head>
     <%
if(request.getParameter("msg")!=null){%>
    
   <script>alert('User registration Success..!')</script>
}  

<%}
if(request.getParameter("msg1")!=null){%>

 <script>alert('User Login Failed..!')</script>
}
<%
}
%>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
    <br>
  <div class="shell">
    <h1>A Novel Efficient Remote Data Possession Checking Protocol in

Cloud Storage</h1>
    <div class="search">
      
    </div>
  </div>
</div>
<div id="navigation">
  <div class="shell">
    <ul>
      <li><a  href="index.html">HOME</a></li>
      <li><a href="owner.jsp">Data Owner</a></li>
      <li><a class="active" href="user.jsp">Data User</a></li>
      <li><a href="cloud.jsp">Cloud</a></li>
    </ul>
  </div>
</div>
<div id="featured">
  <div class="shell">
    <div class="slider-carousel">
      <ul>
        <li>
          <div class="info">
           <p> We
provide a new efficient RDPC protocol based on homomorphic
hash function. The new scheme is provably secure against forgery
attack, replace attack and replay attack based on a typical
security model. To support data dynamics, an operation record
table (ORT) is introduced to track operations on file blocks. We
further give a new optimized implementation for the ORT which
makes the cost of accessing ORT nearly constant. Moreover, we
make the comprehensive performance analysis which shows that
our scheme has advantages in computation and communication
costs. Prototype implementation and experiments exhibit that the
scheme is feasible for real applications. </p>
         </div>
          <div class="image"> <a href="#"><img src="css/images/1.png" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
        <li>
          <div class="info">
           <p>We
provide a new efficient RDPC protocol based on homomorphic
hash function. The new scheme is provably secure against forgery
attack, replace attack and replay attack based on a typical
security model. To support data dynamics, an operation record
table (ORT) is introduced to track operations on file blocks. We
further give a new optimized implementation for the ORT which
makes the cost of accessing ORT nearly constant. Moreover, we
make the comprehensive performance analysis which shows that
our scheme has advantages in computation and communication
costs. Prototype implementation and experiments exhibit that the
scheme is feasible for real applications.</p>
          </div>
          <div class="image"> <a href="#"><img src="css/images/2.jpg" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
     
      </ul>
    </div>
  </div>
</div>
<div id="main">
  <div class="shell">
    <div id="main-boxes">
       <center><p><font size="5" color="black">User Login </font></p><br/></center>
     
    <form action="useract.jsp" method="post">
    <center><table width="281" border="0" >

    <tr><td><font color="black"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email :</td><td><input type="text" name="username" required="" /></td></tr>
    <tr><td><font color="black"> Password :</td><td><input type="password" name="password" required="" /></td></tr>
    
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Login" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>
    <center><a href="userreg.jsp"><font color="black" style="font-size: 21px">Click Here for Registration </font></a> </center>  
              
    </div>
    
    
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="footer">
  <div class="shell">
    <p class="rf">Design by <a href="http://1000projects.org/" target="_blank">1000Projects</a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<script type="text/javascript">pageLoaded();</script>
<!-- END PAGE SOURCE -->
</body>
</html>