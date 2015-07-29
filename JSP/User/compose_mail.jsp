
<%@page import="com.user.util.Utility"%><html>
<head>
	
</head>

<%
	int no=Utility.parse(request.getParameter("no"));
%>

<body onload="startTimer()">

<%
	if(no == 0)
	{
%>
<div class="tab" style="position:absolute;top:30px;left:150px;width:420px;">


<form id="login" action="<%=request.getContextPath() %>/ComposeMail" enctype="multipart/form-data" method="post">
		
			     <table id="login">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Compose Your Mail</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td colspan="3" align="center"><hr size="5" color="#336633"></hr></td>
			     	</tr>
			     	
			     	<tr>
			     		<td>To</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="to" style="width:250px" required="yes"></input>
			     		</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Subject</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="subject" style="width:250px" required="yes"></input>
			     		</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Attach File</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="file" name="attached_file" style="width:250px" required="yes"></input>
			     		</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Message</td>
			     		<td>:</td>
			     		<td></td>
			     	</tr>
			     	
			     	<tr>
			     		<td colspan="3" align="right">
			     				<textarea rows="7" cols="28" name="msg"></textarea>
			     		</td>
			     	</tr>
			     	
			     </table>
			     
			     <input type="image" value="submit" src="<%=request.getContextPath()%>/Images/send_email.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/send_email.png'" class="gradientbuttons" width="20%" height="10%" style="position:absolute;top:200px;left:420px;"/>
			     
				
			
	</form>
</div>

<%
	}
	if(no == 1)
	{
		
%>

<div class="error" id="message" style="position:absolute;top:10px;left:150px">	
			<p>Opp's,Something Went Wrong Try Again !!!! </p>
</div>

<%
	}
%>
</body>
</html>