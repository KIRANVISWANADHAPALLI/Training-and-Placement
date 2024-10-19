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
                   <li><a href="index.html">Home</a></li>
                   <li><a href="admin.jsp">Admin </a></li>
                   <li class="current "><a href="user.jsp">User</a></li>
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
        
        
        
    <center>   
       <p align="justify">
    <p><font color="black" size="5">  User Registration </font></p><br/>
    
     <form name="myform" action="Upload" method="post" enctype="multipart/form-data">
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
    <td height="43"><font color="black">Date_Of_Birth</td>
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
    <td height="43"><font color="black">Branch</td>
    <td><select name="branch" style="width:170px;" required="">
    <option>--Select--</option>
    <option>IT</option>
    <option>CSE</option>
    </select></td>
    </tr>
    
    <tr>
    <td height="65"><font color="black">Aggregate</td>
    <td><textarea name="aggregate" rows="3" cols="20" required=""></textarea></td>
    </tr> 
    
    
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input name="mobile" id="txtphoneno" required="" placeholder="Mobile Number"/></td>
    </tr>  

    <tr>
    <td height="43"><font color="black">Resume</td>
    <td><input type="file" name="file" id="txtphoneno" required="" /></td>
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