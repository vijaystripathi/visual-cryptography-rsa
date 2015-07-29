<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Image_VC_RSA</title>
<meta name="keywords" content="HTML, CSS, Design Gallery, CSS Template, Free Download, Website Layout" />
<meta name="description" content="Beautiful Design Gallery, CSS Template, Free Download" />
<link href="<%=request.getContextPath()%>/templatemo_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
<!--
javascript:window.history.forward(-1);

// -->
</script>


</head>
<body>

<%
HttpSession s = request.getSession();
String id = (String)request.getAttribute("admin");
String name = (String)request.getAttribute("Name");

System.out.println("Admin Name :"+name);

%>
<IMG SRC="Images/J2EE_Top copy.jpg" width=100% height="60%" BORDER="0" ALT="" >
<!--  Free CSS Templates from www.templatemo.com -->
	
    
		<div class="templatemo_container">
        
        	<div id="templatemo_header">
        	<p style="color: red;position: absolute;left: 900px;">Welcome, <%=name%></p>
            </div>
            
           
            	<div id="templatemo_content_white_top">
                	<div id="templatemo_menu">
        				<ul>
                            <li><a href="<%=request.getContextPath() %>/AdminProfile?name=<%=id%>"  class="current" target="action">Admin Profile</a></li>
                            <li><a href="<%=request.getContextPath() %>/UserList?submit=get"" target="action">User List</a></li>
                            <li><a href="<%=request.getContextPath() %>/ChangePass1?name=<%=id%>&no=1&id=<%=id %>" target="action">Change Password</a></li>
                                           
                            <li><a href="<%=request.getContextPath()%>/SignOut?no=1" class="lastmenu">LogOut</a></li>            
                        </ul>
				</div>
                </div>
                <div id="templatemo_content_white_middle">
                	<div class="templatemo_post_area">
                    <iframe style="width: 750px;height: 350px;border-color: red;" align="top" name="action" >
                    
                    
                    </iframe>
                    	
                    </div><!-- End Of Post Area -->
                </div><!-- End Of Content Middle -->
           
        </div><!-- End Of Container --> 
    
	
        	
                <div id="templatemo_content_white_blue_joint">
                </div>
                
               
               
             
               
           
        
    <!--  Download CSS Templates from www.templatemo.com -->  
	
</body>
</html>