<html>
<%
	String admin=request.getAttribute("admin").toString();
%>
<script language="JavaScript">
javascript:window.history.forward(-1);
</script>

<head>
	<link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/button.css" type="text/css"/>
</head>
<body>

<div style="position:relative;top:0px;left:0px;">	
	<div align="right" class="gradientbuttons">
		<a class="gradientlinks" href="<%=request.getContextPath() %>/AdminProfile?name=<%=admin %>" target="afrm">Show Profile</a>
		<a class="gradientlinks" href="<%=request.getContextPath() %>/UserList?submit=get" target="afrm">User List&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
		<a class="gradientlinks" href="<%=request.getContextPath() %>/Resources/JSP/Admin/group-details.jsp" target="afrm">Group Details</a>
		<a class="gradientlinks" href="<%=request.getContextPath() %>/">Sign Out&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
<br>
<img src="<%=request.getContextPath() %>/Resources/Images/header.jpg"></img>
	
</div>
	
	
	<div style="position:absolute;top:180px;left:50px;">
		<iframe frameborder="0" scrolling="auto" name="afrm" height="470" width="850"></iframe>
	</div>
</body>
</html>