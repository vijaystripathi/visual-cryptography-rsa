
<%@page import="com.user.util.Utility"%><html>
<head>
	
</head>

<%
	int no=Utility.parse(request.getParameter("no"));
    String fileExtension = (String) session.getAttribute("file_ext");
%>

<body onload="startTimer()">

<%
	if(no == 0)
	{
%>

<form id="login" action="<%=request.getContextPath() %>/ColorEncryptImage" enctype="multipart/form-data" method="post">
		
			<div class="tab" style="position:absolute;top:80px;left:180px;width:400px;">
			     
			     <table id="login">
			     	<tr>
			     			<td colspan="3" align="center"><font style="font-family:Arial;font-size: 20px;color:black;"><b>Browse Image For Color Visual Cyptographic Process</b></font></td>
			     	</tr>
			     	
			     	<tr>
			     			<td colspan="3" align="center"><hr size="5" color="#336633"></hr></td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Select Image</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="file" name="file" style="width:250px"></input>
			     		</td>
			     	</tr>
			     	
			     	
			     	
			     </table>
			     <br><br>
				<input class="gradientbuttons" type="submit" name="submit" value="VC Process" style="position:absolute;top:150px;left:100px;"/>
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