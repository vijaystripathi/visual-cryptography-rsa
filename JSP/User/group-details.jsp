<%@ page import="com.user.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.data.dao.*" %>
<html>
<head>
	<link href="<%=request.getContextPath() %>/Resources/CSS/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h3>Your Group(Click on Image to Remove)</h3>
<%
	String user=Utility.parse1(request.getAttribute("user"));
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	Vector<String> v=new Vector<String>();
	if(rs!=null)
		while(rs.next())
		{%>
			<a href="<%=request.getContextPath() %>/CreateGroup?task=delete&grp_in=<%=rs.getString(3) %>&grp_uid=<%=rs.getString(2) %>"><img height="50" width="50" src="<%=request.getContextPath() %>/Resources/Images/user.png" style="padding-top:10px" title="<%=rs.getString(3) %>"></img></a>
			<p id="grp"><%=rs.getString(3) %></p>		
		<%
		v.add(rs.getString(3));
		}
	v.add(user);
	rs=User.getUsers(v);
	%>
		<br></br>
		<h3>Add to Group(Click on Image to Add)</h3>
	<%
	if(rs!=null)
		while(rs.next())
		{if(!User.chkStatus(user,rs.getString(2)).equalsIgnoreCase("pending")){%>
			<a href="<%=request.getContextPath() %>/SendRequest?from=<%=user %>&to=<%=rs.getString(2) %>"><img height="50" width="50" src="<%=request.getContextPath() %>/Resources/Images/user.png" style="padding-top:10px" title="<%=rs.getString(2) %>"></img></a>
			<p id="grp"><%=rs.getString(2) %></p>		
		<%}}
%>

</body>
</html>	