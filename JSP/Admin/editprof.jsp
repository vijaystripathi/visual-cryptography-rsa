<%@ page import="com.user.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	String admin=Utility.parse1(request.getAttribute("admin"));
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
					<form id="login" action="<%=request.getContextPath() %>/EditProfile1">
					<input type="hidden" name="admin" value="<%=admin %>"></input>
					<input type="hidden" name="no" value="2"></input>
					<input type="hidden" name="id" value="<%=id %>"></input>
					
					<br></br>
					<div id="a1" style="position: absolute;top: 30px;left: 100px;">
					
					 <table id="login" align="center">
					<tr>
			     			<td colspan="7" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Edit Admin Profile</b></font></td>
			     	</tr>
			     	<tr>
			     			<td colspan="7" align="center"><hr size="5" color="#336633"></hr></td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     		<td>Admin ID No</td>
			     		<td>:</td>
			     		<td>
			     			<p><input class="field" type="text" name="" value="<%=id %>" readonly="readonly"></input></p>
			     		</td>
			     		<td>Admin Name</td>
			     		<td>:</td>
			     		<td>
			     			<p><input class="field" type="text" name="name" value="<%=name %>"></p>
			     		</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>&nbsp;</td>
			     	</tr>
			     	
			     	
			     	
			     	<tr>
			     		<td>Admin User Id </td>
			     		<td>:</td>
			     		<td>
			     			<p><input class="field" type="text" name="" value="<%=adminid %>" readonly="readonly"></input></p>
			     		</td>
			     		<td>Admin Mail ID </td>
			     		<td>:</td>
			     		<td><p><input class="field" type="text" name="email" value="<%=email %>"></input></p></td>
			     	</tr>
			     	
			     	
			     	<tr>
			     		<td>&nbsp;</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Admin Cell N0  </td>
			     		<td>:</td>
			     		<td><p><input class="field" type="text" name="phone" value="<%=phone %>"></input> </p></td>
			     		<td>Admin Address  </td>
			     		<td>:</td>
			     		<td><p><input class="field" type="text" name="add" value="<%=add %>"></input></p></td>
			     	</tr>
			     
					</table>
					</div>
					<br>
					<div align="center" style="position: absolute;top: 290px;left: 300px;">
						
						<input type="image" value="submit" src="<%=request.getContextPath()%>/Images/update1.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/update1.png'" class="gradientbuttons" width="35%" height="10%"/>
					</div>
					
					</form>
				<%
			}
		%>
</body>
</html>