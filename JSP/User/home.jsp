<html>
<%
	String user=request.getAttribute("user").toString();
%>
<script language="JavaScript">
javascript:window.history.forward(-1);
</script>

<head>
	<link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/button.css" type="text/css"/>
</head>
<body>
<h5 style="position: absolute;top:-14px;">Welcome user [<%=user %>]</h5>
<div style="position:relative;top:0px;left:0px;">	
	<div align="right" class="gradientbuttons">
		//<a class="gradientlinks" href="<%=request.getContextPath() %>/Resources/JSP/User/compose_mail.jsp" target="afrm">Compose</a>
		//<a class="gradientlinks" href="<%=request.getContextPath() %>/Resources/JSP/User/browse_image.jsp" target="afrm">Encryption</a>
		//<a class="gradientlinks" href="<%=request.getContextPath() %>/Resources/JSP/User/browse_enc_image.jsp" target="afrm">Decryption</a>
		<a class="gradientlinks" href="<%=request.getContextPath() %>/GroupDetails?name=<%=user %>" target="afrm">Create Group</a>
		<a class="gradientlinks" href="<%=request.getContextPath() %>/UserProfile?name=<%=user %>" target="afrm">Show Profile</a>
		<a class="gradientlinks" href="<%=request.getContextPath() %>/">Sign Out&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
<br>
<iframe src="<%=request.getContextPath() %>/Resources/JSP/User/request-message.jsp?user=<%=user %>" height="30" width="100" id="req" scrolling="no" frameborder="0"></iframe>
<img src="<%=request.getContextPath() %>/Resources/Images/header.jpg"></img>	
</div>		
	
	
	<div style="position:absolute;top:180px;left:50px;">
		<iframe frameborder="0" scrolling="auto" name="afrm" height="470" width="850"></iframe>
	</div>
</body>
</html>