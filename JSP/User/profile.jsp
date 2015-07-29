<%@ page import="com.user.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	String user=Utility.parse1(request.getAttribute("user"));
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int no=Utility.parse(request.getParameter("no"));
	int id=0;
	String userid="",name="",gender="",add="",email="",phone="",city="";
	if(no==0)
	while(rs.next())
	{
		id=rs.getInt(1);
		userid=rs.getString(2);
		name=rs.getString(4);
		gender=rs.getString(5);
		add=rs.getString(6);
		city=rs.getString(7);
		email=rs.getString(8);
		phone=rs.getString(9);
	}
%>
<head>
	<link href="CSS/profile.css" rel="stylesheet" />
	
</head>
<body onload="startTimer()">
		<%
			if(no==1)
			{
				%>
					<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
						<p>Opp's,Seems something went wrong ..!</p>
					</div>
				<%
			}
			if(no==0)
			{
				%>
					<form action="EditProfile2" method="get">
					<input type="hidden" name="name" value="<%=user %>">
					<input type="hidden" name="no" value="<%=1%>">
					<div align="right">
					<input type="image" value="submit" src="<%=request.getContextPath()%>/Images/edit.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/edit.png'" class="gradientbuttons" width="10%" height="10%"/>
					</div><br>
					<div style="position: absolute;top: 50px;left: 150px;">
					 <table id="login" align="center">
					<tr>
			     			<td colspan="7" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>User Profile</b></font></td>
			     	</tr>
			     	<tr>
			     			<td colspan="7" align="center"><hr size="5" color="#336633"></hr></td>
			     	</tr>
			     	
			     	<tr>
			     		<td>User Id No</td>
			     		<td>:</td>
			     		<td>
			     			<p><%=id %></p>
			     		</td>
			     			<td>&nbsp;&nbsp;</td>
			     		<td>User Name</td>
			     		<td>:</td>
			     		<td>
			     			<p><%=name %></p>
			     		</td>
			     	</tr>
			     	
			     	
			     	<tr>
			     		<td>&nbsp;</td>
			     	</tr>
			     	
			     	
			     	<tr>
			     		<td>User ID </td>
			     		<td>:</td>
			     		<td>
			     			<p><%=userid %></p>
			     		</td>
			     			<td>&nbsp;&nbsp;</td>
			     		<td>User Mail ID </td>
			     		<td>:</td>
			     		<td><p><%=email %></p></td>
			     	</tr>
			     	
			     	
			     	<tr>
			     		<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>User Cell N0  </td>
			     		<td>:</td>
			     		<td><p><%=phone %> </p></td>
			     			<td>&nbsp;&nbsp;</td>
			     		<td>User Address  </td>
			     		<td>:</td>
			     		<td><p><%=add %></p></td>
			     	</tr>
			     
			     		<tr><td>&nbsp;</td>  	</tr>	
			     
			     	
			     	<tr>
			     		<td>User City </td>
			     		<td>:</td>
			     		<td><p><%=city %></p></td>
			     	</tr>
			     	
			     	</table></div></form>
					
				<%
				if(Utility.parse(request.getParameter("no1"))==1)
				{
					%>
						<div class="success" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
							<p>Your profile updated successfully ..!</p>
						</div>
					<%
				}
			}
		%>
</body>
</html>