<%@ page import="com.user.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int id=0;
	String userid="",add="",cno="",city="",name="",email="";
	while(rs.next())
	{
		id=rs.getInt(1);
		userid=rs.getString(2);
		name=rs.getString(4);
		add=rs.getString(6);
		city=rs.getString(7);
		email=rs.getString(8);
		cno=rs.getString(9);
	}
%>
<head>
	
</head>
<body onload="startTimer()">
<div style="position:absolute;top:10px;left:100" class="c">	

	<table id="login">
	
			<h1 align="center" id="label"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Edit User</b></font></h1>
			<hr size="5" color="#336633"></hr>
			
			<form action="<%=request.getContextPath() %>/UserList">
			
			<input type="hidden" name="submit" value="Edit"></input>
			<input type="hidden" name="edit1" value="YES"></input>
			<input type="hidden" name="id" value="<%=id %>"></input>
			<br>
				<tr id="label">
					<td>User-ID</td>
					<td><input class="field" value="<%=userid %>" name="id" type="text" readonly/></td>
					<td>Address</td>
					<td><input class="field" value="<%=add %>" name="add" type="text" required="yes"/></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr id="label">
					<td>Contact No</td>
					<td><input class="field" value="<%=cno %>" name="cno" type="text" required="yes"/></td>
					<td>City</td>
					<td><input class="field" value="<%=city %>" name="city" type="text" required="yes"/></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr id="label">
					<td>Name</td>
					<td><input class="field" value="<%=name %>" name="name" type="text" required="yes"/></td>
					<td>Emai-ID</td>
					<td><input class="field" value="<%=email %>" name="email" type="text" required="yes"/></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				
				<tr>
					
					<td colspan="4" align="center">	<input type="image" value="submit" src="<%=request.getContextPath()%>/Images/update1.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/update1.png'" class="gradientbuttons" width="20%" height="40%"/></td>
				</tr>
		</form>
	</table>
</div>		
<%
if(Utility.parse(request.getParameter("no"))==1)
{%>
	<div class="error" id="message" style="position:absolute">	
		<p>Sorry this user id is already exists.....!</p>
	</div>			
<%}
%>
</body>
</html>