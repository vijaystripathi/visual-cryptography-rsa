
<%@page import="com.user.util.Utility"%><html>
<head>
	
</head>

<script type="text/javascript">
	function showImg()
	{
		var image = document.getElementById("img");
		var dropd = document.getElementById("dd");
		img.src = dropd.value;	
	};
	function radio_check(type)
	{
		if(type=="dec_key")
		{
			document.getElementById("dec_key").style.display = "block";
			document.getElementById("ext_key").style.display = "none";
		}
		if(type=="ext_key")
		{
			document.getElementById("ext_key").style.display = "block";
			document.getElementById("dec_key").style.display = "none";
		}
		if(type=="both")
		{
			document.getElementById("ext_key1").style.display = "block";
			document.getElementById("ext_key").style.display = "none";
			document.getElementById("dec_key").style.display = "block";
		}
	};
</script>

<%
	int no=Utility.parse(request.getParameter("no"));
	int no1=Utility.parse(request.getParameter("no1"));
	String fileExtension = (String) session.getAttribute("file_ext");
%>

<body onload="startTimer()">

<%
	if(no == 0)
	{
		
%>

<form id="login" action="<%=request.getContextPath() %>/DecryptImage" enctype="multipart/form-data" method="post">
		
			<div class="tab" style="position:absolute;top:50px;left:130px;width:450px;height: 150px">
			     
			     <table id="login">
			     	<tr>
			     			<td colspan="3" align="center">Browse Image File For Decryption</td>
			     	</tr>
			     	
			     	<tr>
			     			<td colspan="3" align="center"><hr></td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Decryption Image</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="file" name="file" style="width:250px"></input>
			     		</td>
			     	</tr>
			     	
			     	<tr>
			     			
			     			<td colspan="3" align="center">
			     				<input type="radio" name="type" onClick="radio_check(value);" value="dec_key" required="yes">Encrypt Image</input>
								<input type="radio" name="type" onClick="radio_check(value);" value="ext_key" required="yes">Extract Data</input>
								<input type="radio" name="type" onClick="radio_check(value);" value="both" required="yes">Both Encrypt And Extract Data</input>
			     			</td>
			     	</tr>
			     	
					<div id="dec_key" style="display:none;position: absolute;top: 170px;left: 80px;width: 450px;">
			     		Decryption Key : <input class="field" type="text" name="decryption_key" style="width:250px";></input>
					</div>
					
					<div id="ext_key" style="display:none;position: absolute;top: 170px;left: 55px;width: 450px;">
			     		Data Extraction Key : <input class="field" type="text" name="extraction_key" style="width:250px";></input>
					</div>
					
					<div id="ext_key1" style="display:none;position: absolute;top: 215px;left: 55px;width: 450px;">
			     		Data Extraction Key : <input class="field" type="text" name="extraction_key" style="width:250px";></input>
					</div>
					
			     </table>
			     
				<input class="gradientbuttons" type="submit" value="Decrypt Image" style="position:absolute;top:-45px;left:425px;"/>
			</div>
			
</form>
<%
if(no1 == 1)
{
%>
<div class="error" id="message" style="position:absolute;top:10px;left:150px">	
			<p>Opp's,Something Went Wrong Try Again !!!! </p>
</div>	

<%
} 
%>

<%
	}
	else if(no == 1)
	{
		
%>
<div class="tab" style="position:absolute;top:50px;left:130px;width:450px;">
    
    <form action="<%=request.getContextPath()%>/HideData">
    <input class="gradientbuttons" type="submit" name="action" value="Cancel" style="position:absolute;top:-45px;left:450px;"/>
    <input type="hidden" name="act" value="HideData" />
    
	<table id="login">
		<tr>
				<td colspan="3" align="center">
					<font color="green" size="5">Image Decrepted Successfully.....</font>
				</td>
		</tr>
		<tr></tr>
		<tr>
				<td align="center">
						<img alt="" src="<%=request.getContextPath()%>/Files/Decryption/enc_img.<%=fileExtension%>" width="200px" height="200px">
						<br>
						Encrypted Image
				</td>
				<td width="11px"></td>
				<td align="center">
						<img alt="" src="<%=request.getContextPath()%>/Files/Decryption/dec_img.<%=fileExtension%>" width="200px" height="200px">
						<br>
						Decrypted Image
				</td>
		</tr>
		<tr height="20px">
		</tr>
<%
if(no1 == 1)
{
	String extData = (String)session.getAttribute("ext_data");
%>

<tr>
				<td >
					<font color="blue" size="5">Extracted Text Data </font>
				</td>
				
				<td>:</td>
				<td>
					<font  size="5"><%=extData %></font>
				</td>
</tr>

<%
}
%>			
		
	</table>
   </form>
</div>
<%
	}
	else if(no == 2)
	{
		String extData = (String)session.getAttribute("ext_data");
%>

<div class="tab" style="position:absolute;top:50px;left:130px;width:400px;">

<form action="<%=request.getContextPath()%>/HideData">
    <input class="gradientbuttons" type="submit" name="action" value="Cancel" style="position:absolute;top:-45px;left:400px;"/>
</form>
<table id="login">
		
		<tr>
			    <td colspan="3" align="center">
			     	<font color="green" size="5">Data Extraction Informarion </font>
			     </td>
	    </tr>
			     	
     	<tr>
     			<td colspan="3" align="center"><hr></td>
     	</tr>
		
		<tr>
				<td >
					<font color="blue" size="5">Extracted Text Data </font>
				</td>
				
				<td>:</td>
				<td>
					<font  size="5"><%=extData %></font>
				</td>
		</tr>
</table>		

</div>
<%
	}
%>
</body>
</html>