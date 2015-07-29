<%@ page import="com.user.util.*" %>
<html>
<head>
	<%
		String user=Utility.parse1(request.getAttribute("user"));
		int no=Utility.parse(request.getParameter("no"));
		int id=Utility.parse(request.getParameter("id"));
	%>
	
</head>
<body onload="startTimer()">
	<form id="login" action="<%=request.getContextPath() %>/ChangePass2">
		<input type="hidden" name="user" value="<%=user %>"></input>
		<input type="hidden" name="id" value="<%=id %>"></input>
		<input type="hidden" name="no" value="2"></input>
		
		<br></br>
	<div id="a1" style="position: absolute;top: 40px;left: 200px;">
	
	 <table id="login" align="center">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Change Password</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td colspan="3" align="center"><hr size="5" color="#336633"></hr></td>
			     	</tr>
			     	
			     	<tr>
			     		<td>User Id</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="user_id" value="<%=user %>" readonly="readonly">
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td>Current Password</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="password" name="pass" required="yes"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td>New Password </td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="password" name="npass"  required="yes"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	
			     	<tr>
			     		<td>Confirm new password</td>
			     		<td>:</td>
			     		<td><input class="field" type="password" name="cpass"  required="yes"></input></td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     	<td colspan="3" align="center">
			     	<input type="image" value="submit" src="<%=request.getContextPath()%>/Images/change_pass.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/change_pass.png'" class="gradientbuttons" />
			     	
			     	</td>
			     	</tr>
			     </table>
		
	</div>
	</form>
<%
if(no==1)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
			<p>Opp's,your current password is wrong ..!</p>
		</div>
	<%
}
if(no==2)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
			<p>Opp's,your new password do not match with confirm password ..!</p>
		</div>
	<%
}
if(no==3)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color:red;font-size: 20px;">	
			<p>Opp's,Seems something went wrong....!</p>
		</div>
	<%
}
if(no==4)
{
	%>
		<div class="error" id="message" style="position: absolute;top: -10px;color: red;font-size: 20px;">	
			<p>Your Password Updated Successfully...!</p>
		</div>
	<%
}
%>	
	
</body>
</html>