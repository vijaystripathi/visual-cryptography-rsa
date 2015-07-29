<%@ page import="com.user.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.data.dao.*" %>
<html>
<head>
	<link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h3>Users (Click on Image to See Group)</h3>
<%
	String user=Utility.parse1(request.getParameter("user"));
	DAOFactory factory=new DAOFactory();
	DAO dao=factory.getInstance("Admin");
	ResultSet rs=dao.getUsers();
	if(rs!=null)
		while(rs.next())
		{%>
			<a href="<%=request.getContextPath() %>/GroupDetails1?user=<%=rs.getString(2) %>"><img height="50" width="50" src="<%=request.getContextPath() %>/Resources/Images/user.png" style="padding-top:10px" title="<%=rs.getString(2) %>"></img></a>
			<p id="grp"><%=rs.getString(2) %></p>		
		<%
	}
	
	%>
		<br></br>
		<h3>Users in Group Of <%=user %></h3>
	<%
	rs=Admin.getGroup(user);
	if(rs!=null)
		while(rs.next())
		{%>
			<img height="50" width="50" src="<%=request.getContextPath() %>/Resources/Images/user.png" style="padding-top:10px" title="<%=rs.getString(3) %>"></img>
			<p id="grp"><%=rs.getString(3) %></p>		
		<%}
%>

</body>
</html>	