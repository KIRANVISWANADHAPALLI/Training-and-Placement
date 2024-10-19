<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="placementcell.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
     
<head>
     <title>Home</title>
     <meta charset="utf-8">
     <meta name = "format-detection" content = "telephone=no" />
     <link rel="stylesheet" href="styles.css">
     <link rel="stylesheet" href="css/camera.css">
     <script src="js/jquery.js"></script>
     <script src="js/jquery-migrate-1.1.1.js"></script>
     <script src="js/script.js"></script> 

     <script src="js/camera.js"></script>
     <!--[if (gt IE 9)|!(IE)]><!-->
     <script src="js/jquery.mobile.customized.min.js"></script>
     <!--<![endif]-->
    <script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
     <script  src="js/jquery.touchSwipe.min.js"></script>
     <script>

     
  $(document).ready(function(){
      jQuery('#camera_wrap').camera({
        loader: false,
        pagination: true ,
        thumbnails: false,
        height: '42.79569892473118%',
        caption: false,
        navigation: false,
        fx: 'mosaic'
      });
      
    });
    
    
    $(window).load (
    function(){$('.carousel1').carouFredSel({auto: false, prev: '.prev',next: '.next', width: 220, items: {
      visible : {min: 1,
       max: 3
},
height: 'auto',
 width: 220,

    }, responsive: true, 
    
    scroll: 1, 
    
    mousewheel: false,
    
    swipe: {onMouse: true, onTouch: true}});
    
    } );  
    
    
    
     </script>
     
     </head>
     <body>
     <header> 

<!--==============================header=================================-->
 <div class="container_12">
  <div class="grid_12">
   <h2><font color="white"><a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Training and Placement </a></h2>
      </div>
      </div>
  <div class="menu_block">
  <div class="container_12">
    <div class="grid_12">
        <nav class="horizontal-nav full-width horizontalNav-notprocessed">
            <ul class="sf-menu">
                   <li class="current "><a href="userhome.jsp">Home</a></li>
                   <li><a href="user_viewdrives.jsp">View Drives </a></li>
                   <li><a href="index.html">Logout</a></li>
                 </ul>
        </nav>
            <div class="clear"></div>
      </div></div>
  </div>
     <div class="clear"></div>
</header>
<div class="container_12"><div class="grid_12 page">
<div class="slider_wrapper">

     
      <div id="camera_wrap" class="">
        <div data-src="images/4.jpg">
          <div class="caption fadeIn">
                    </div>
      
        </div>
        <div data-src="images/3.png">
           <div class="caption fadeIn">
            </div>
        </div>
        <div data-src="images/2.png">
           <div class="caption fadeIn">
            </div>
        </div>
       
    
      </div>
  </div>
  <div class="clear"></div>
</div></div>
<!--=======content================================-->
 <div class="content">
   <div class="container_12">
    <div class="grid_12 page">

   
       <p><center><font size="5" color="black">View Drives </font></center></p><br/>
   <style>
        th{
            color: #50aac3;
        }
         tr{
            color: black;
        }
        
        td{
            text-align: center;
        }
        
      
table, th, td {
    border: 1px solid black;
}

        
    </style>
     
    
    <% 
        
        
 String email = session.getAttribute("email").toString();
 String branch = session.getAttribute("branch").toString();
 
try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from drive where department='"+branch+"'");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr>
        
        <th>Company Name</th>
        <th>Email</th>
        <th>Drive Date</th>
        <th>Department</th>
        <th>Address</th>
        <th>Mobile</th>
        <th>Request</th>
        
     
     
 </tr>

<%
       
	while(rs.next()){
            %><tr>
                <th><font color="black"><%=rs.getString(2)%></th>
                <th><font color="black"><%=rs.getString(3)%></th>
                <th><font color="black"><%=rs.getString(4)%></th>
                <th><font color="black"><%=rs.getString(5)%></th>
                <th><font color="black"><%=rs.getString(6)%></th>
                <th><font color="black"><%=rs.getString(7)%></th>
                <td><a href="user_viewdrives1.jsp?id=<%=rs.getInt(1)%>&companyname=<%=rs.getString("companyname")%>&email=<%=rs.getString("email")%>&drive=<%=rs.getString("drive")%>&department=<%=rs.getString("department")%>&address=<%=rs.getString("address")%>&mobile=<%=rs.getString("mobile")%>"><font color="#0d637d" size="3">Request</font></a> </td>
      
              
         
        </tr>
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        
        <br><br><br>
         <hr>      
    
  </div>
</div>
</div>
<div class="met_txt"> <a></a></div>
<!--==============================footer=================================-->
<footer>   
  <div class="container_12">
      <div class="grid_12">
      <div class="copy">  
     
       </div>
    </div>
</div>  
</footer>
     <script src="js/superfish.js"></script>
     <script src="js/jquery.equalheights.js"></script>
     <script src="js/jquery.mobilemenu.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
</body>

</html>