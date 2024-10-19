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
    
   <script>alert('Hash Values Sent Sucessfully..!')</script>
}  
<%}
if(request.getParameter("msg1")!=null){%>

 <script>alert('User Registration Failed..!')</script>
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
      <li><a href="index.html">HOME</a></li>
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
       
     <center>   
       <p align="justify">
    <p><font color="black" size="5"> Data User Registration </font></p><br/>
    
    <form name="myform" action="userregact.jsp" method="post" onsubmit="return validateform()">
    <table align="center" width="321">
    <tr>
    <td width="191" height="43"><font color="black">User Name </td>
    <td width="218"><input name="username" required="" placeholder="User Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Password </td>
    <td width="218"><input type="password" name="password" required="" placeholder="Password" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Email ID</td>
    <td><input name="email" required="" placeholder="Email ID"/></td>
    </tr>

    <tr>
    <td height="43"><font color="black">Date Of Birth</td>
    <td><input type="date" name="dob" style="text-align:right" required="" ></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Select Gender</td>
    <td><select name="gender" style="width:170px;" required="">
    <option>--Select--</option>
    <option>MALE</option>
    <option>FEMALE</option>
    </select></td>
    </tr>
    <tr>
    <td height="65"><font color="black">Address</td>
    <td><textarea name="address" rows="3" cols="20" required=""></textarea></td>
    </tr> 
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input name="mobile" id="txtphoneno" required="" placeholder="Mobile Number"/></td>
    </tr>  

    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="REGISTER" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>     
        
     </center>   
        
        
        
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