
<%@page import="com.user.util.Utility"%><html>
<head>
	
</head>

<%
HttpSession s = request.getSession();
	int no=Utility.parse(request.getParameter("no"));
String id = (String)s.getAttribute("user");
    String fileExtension = (String) session.getAttribute("file_ext");
%>

<body onload="startTimer()">

<%
	if(no == 0)
	{
%>

<form id="login" action="<%=request.getContextPath() %>/DecryptImage" enctype="multipart/form-data" method="post">
		
			<div class="tab" style="position:absolute;top:50px;left:150px;width:500px;">
			     
			     <table id="login">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:Arial;font-size: 20px;color: black;"><b>Browse Image For Decryption Process</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td colspan="3" align="center"><hr size="5" color="#336633"></hr></td>
			     	</tr>
			     	
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     		<td>Select Share 1 Encrypted Image</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="file" name="file" style="width:250px"></input>
			     		</td>
			     	</tr>
			     	
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     		<td>Select Share 2 Encrypted Image</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="file" name="file1" style="width:250px"></input>
			     		</td>
			     	</tr>
			     	<tr><td>&nbsp;</td></tr>
			     	<tr>
			     		<td>Select Key File For Decryption</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="file" name="file2" style="width:250px"></input>
			     		</td>
			     	</tr>
			     	
			     	
			     </table>
			     
				<input class="gradientbuttons" type="submit" value="Decypt Process" style="position:absolute;top:250px;left:150px;"/>
			</div>
			
</form>

<%
	}
	else if(no == 1)
	{
		
%>
<div class="tab" style="position:absolute;top:50px;left:130px;width:450px;">
    
    <form action="<%=request.getContextPath()%>/HideData">
    <input class="gradientbuttons" type="submit" name="action" value="Cancel" style="position:absolute;top:-45px;left:350px;"/>
    <input class="gradientbuttons" type="submit" name="action" value="Hide Data" style="position:absolute;top:-45px;left:435px;"/>
    <input type="hidden" name="act" value="HideData" />
    
	<table id="login">
		<tr>
				<td colspan="3" align="center">
					<font color="green" size="5">Image Encrypted Successfully.....</font>
				</td>
		</tr>
		<tr></tr>
		<tr>
				<td align="center">
						<img alt="" src="<%=request.getContextPath()%>/Files/Encryption/in_img.<%=fileExtension%>" width="200px" height="200px">
						<br>
						Original Image
				</td>
				<td width="11px"></td>
				<td align="center">
						<img alt="" src="<%=request.getContextPath()%>/Files/Encryption/enc_img.<%=fileExtension%>" width="200px" height="200px">
						<br>
						Encrypted Image
				</td>
		</tr>
	</table>
   </form>
</div>
<%
	}
%>
</body>
</html>