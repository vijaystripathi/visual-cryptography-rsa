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
					<form id="login" action="<%=request.getContextPath() %>/EditProfile2">
					<input type="hidden" name="user" value="<%=user %>"></input>
					<input type="hidden" name="no" value="2"></input>
					<input type="hidden" name="id" value="<%=id %>"></input>
					<div id="a1">
					
					 <table id="login" align="center">
					<tr>
			     			<td colspan="7" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Update User Profile</b></font></td>
			     	</tr>
			     	<tr>
			     			<td colspan="7" align="center"><hr size="5" color="#336633"></hr></td>
			     	</tr>
			     	
			     	<tr>
			     		<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>User Id</td>
			     		<td>:</td>
			     		<td>
			     			<p><input class="field" type="text" name="uid" value="<%=userid %>" readonly="readonly"></input></p>
			     		</td>
			     		<td>User Name</td>
			     		<td>:</td>
			     		<td>
			     			<p><input class="field" type="text" name="name" value="<%=name %>"></p>
			     		</td>
			     	</tr>
			     	
			     	
			     	<tr>
			     		<td>&nbsp;</td>
			     	</tr>
			     	
			     	
			     	<tr>
			     		<td>User Gedner </td>
			     		<td>:</td>
			     		<td>
			     			<p><input class="field" type="text" name="gender" value="<%=gender %>"></input></p>
			     		</td>
			     		<td>User Mail ID </td>
			     		<td>:</td>
			     		<td><p><input class="field" type="text" name="email" value="<%=email %>"></input></p></td>
			     	</tr>
			     	
			     	
			     	<tr>
			     		<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>User Cell N0  </td>
			     		<td>:</td>
			     		<td><p><input class="field" type="text" name="phone" value="<%=phone %>"></input> </p></td>
			     		
			     		<td>User Address  </td>
			     		<td>:</td>
			     		<td><p><input class="field" type="text" name="add" value="<%=add %>"></input></p></td>
			     	</tr>
			     
			     		<tr><td>&nbsp;</td>
			     	</tr>	
			     
			     	
			     	<tr>
			     		<td>User City </td>
			     		<td>:</td>
			     		<td><p> <input class="field" type="text" name="city" value="<%=city %>"></input></p></td>
			     	</tr>
			     	
			     	</table>
					<br>
					
					</div>
					<div align="center">
						
						<input type="image" value="submit" src="<%=request.getContextPath()%>/Images/update1.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/update1.png'" class="gradientbuttons" width="10%" height="10%"/>
					</div>
					</form>
				<%
			}
		%>
</body>
</html>