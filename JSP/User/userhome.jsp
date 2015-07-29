<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Image_VC_RSA</title>
<meta name="keywords" content="HTML, CSS, Design Gallery, CSS Template, Free Download, Website Layout" />
<meta name="description" content="Beautiful Design Gallery, CSS Template, Free Download" />
<link href="templatemo_style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
<!--

javascript:window.history.forward(-1);
// -->
</script>

</head>
<%

String name = (String)session.getAttribute("Name");
String id = (String)session.getAttribute("user");

%>
<body>
<IMG SRC="Images/J2EE_Top copy.jpg" width=100% height="60%" BORDER="0" ALT="" >

<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_background_top">
    
		<div class="templatemo_container">
        
        	<div id="templatemo_header">
        	<p style="color: red;position: absolute;left: 900px;">Welcome, <%=name%></p>
            </div>
            
            <div class="templatemo_content">
            	<div id="templatemo_content_white_top">
                	<div id="templatemo_menu">
        				<ul>
                            <li><a href="<%=request.getContextPath() %>/UserProfile?name=<%=id%>"  class="current" target="action">User Profile</a></li>
                            <li><a href="<%=request.getContextPath() %>/JSP/User/select_type.jsp" target="action" >Encrypt</a></li>
                            <li><a href="<%=request.getContextPath()%>/JSP/User/compose_mail.jsp" target="action">Email</a></li>
                            <li><a href="<%=request.getContextPath()%>/JSP/User/browse_decrypt_img.jsp" target="action">Decrypt</a></li>  
                           
                            <li><a href="<%=request.getContextPath() %>/ChangePass2?name=<%=id%>&no=1&id=<%=id %>" target="action">ChangePass</a></li>                 
                            <li><a href="<%=request.getContextPath()%>/SignOut?no=1" class="lastmenu" >LogOut</a></li>            
                        </ul>
				</div>
                </div>
                <div id="templatemo_content_white_middle">
                	<div class="templatemo_post_area">
                    <iframe style="width: 750px;height: 380px;border-color: red;" align="top" name="action" >
                    
                    
                    </iframe>
                    	
                    </div><!-- End Of Post Area -->
                </div><!-- End Of Content Middle -->
            </div><!-- End Of Content -->
        </div><!-- End Of Container --> 
    </div><!-- End Of Background Top --> 
	<div id="templatemo_background_middle">
    	<div class="templatemo_container">
        	<div class="templatemo_content">
                <div id="templatemo_content_white_blue_joint">
                </div>
                
            </div>
        </div><!-- End Of Container --> 
    <!--  Download CSS Templates from www.templatemo.com -->  
	</div><!-- End Of Background Middle --> 
</body>
</html>