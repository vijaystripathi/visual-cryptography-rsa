<%@ page import="com.user.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	String admin=Utility.parse1(request.getAttribute("admin"));
	System.out.println("Admin cvcvfdf :"+admin);
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int no=Utility.parse(request.getParameter("no"));
	int id=0;
	String adminid="",name="",add="",email="",phone="";
	if(no==0)
	while(rs.next())
	{
		id=rs.getInt(1);
		adminid=rs.getString(4);
		name=rs.getString(2);
		add=rs.getString(5);
		email=rs.getString(7);
		phone=rs.getString(6);
	}
%>
<head>
	
</head>
<body onload="startTimer()">
		<%
			if(no==1)
			{
				%>
					<div class="error" id="message">	
						<p>Opp's,Seems something went wrong ..!</p>
					</div>
				<%
			}
			if(no==0)
			{
				%>
				<form action="EditProfile1" method="get">
				<input type="hidden" name="name" value="<%=admin %>">
					<input type="hidden" name="no" value="<%=1%>">
					<div align="right">
					
					<input type="image" value="submit" src="<%=request.getContextPath()%>/Images/edit.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/edit.png'" class="gradientbuttons" width="10%" height="10%"/>
						
					</div>
					<br></br>
					<div id="a1" style="position: absolute;top: 50px;left: 150px;">
					
					<table id="login" align="center">
					<tr>
			     			<td colspan="7" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Admin Profile</b></font></td>
			     	</tr>
			     	<tr>
			     			<td colspan="7" align="center"><hr size="5" color="#336633"></hr></td>
			     			
			     	</tr>
			     	<tr><td>&nbsp;&nbsp;</td></tr>
			     	<tr>
			     		<td>User Id No</td>
			     		<td>:</td>
			     		<td>
			     			<p><%=id %></p>
			     		</td>
			     		<td>&nbsp;&nbsp;</td>
			     		<td>Admin Name</td>
			     		<td>:</td>
			     		<td>
			     			<p><%=name %></p>
			     		</td>
			     	</tr>
			     	
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td>Admin ID </td>
			     		<td>:</td>
			     		<td>
			     			<p><%=adminid %></p>
			     		</td>
			     		<td>&nbsp;&nbsp;</td>
			     		<td>Admin Mail ID </td>
			     		<td>:</td>
			     		<td><p><%=email %></p></td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	
			     	<tr>
			     		<td>Admin Cell N0  </td>
			     		<td>:</td>
			     		<td><p><%=phone %> </p></td>
			     		<td>&nbsp;&nbsp;</td>
			     		<td>Admin Address  </td>
			     		<td>:</td>
			     		<td><p><%=add %></p></td>
			     	</tr>
			    
			     	
			     	</table>
					
					</div></form>
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