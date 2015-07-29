<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signout Page</title>

</head>
<body>
<%
System.out.println("Sign Out Page ");

	session.removeAttribute("user_id");
	session.removeAttribute("user_name");
	session.removeAttribute("user_code");
	session.removeAttribute("user_pwd");
	session.invalidate();
%>

	<jsp:forward page="index.jsp">
	
	<jsp:param name="signoutstatus" value="success" />
	
	</jsp:forward>
</body>
</html>