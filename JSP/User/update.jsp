<%@ page import="com.data.dao.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
	<link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	String user = request.getParameter("user");
	Vector <String> v=User.getUpd(user);
	User.changeStatus(user);
	for(int i=0;i<v.size();i++)
	{%>
		<li>
			<%=v.get(i) %>
		</li>
	<%}
%>
</body>
</html>