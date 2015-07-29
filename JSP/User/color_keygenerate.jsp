<%@page import="com.user.util.Utility"%>
<%@page import="java.sql.ResultSet"%>

<head>
	
<script type="text/javascript">



</script>
</head>
<body onload="startTimer()">
<%
    
    int no=Utility.parse(request.getParameter("no"));

	String fileName="",share1="",share2="",blue_img="";
	fileName = request.getParameter("fileName").toString();
	System.out.println("File Name :"+fileName);
	share1 = request.getAttribute("share1").toString();
	share2 =  request.getAttribute("share2").toString();
	
	System.out.println("No :"+no);

%>	

<form action="<%=request.getContextPath()%>/EncryptImage">
<div align="right" style="position:absolute;top:80px;left:600px" >

	<input type="submit" name="submit" value="Encrypt Share1" class="gradientbuttons"/><br><br><br>
	<input type="submit" name="submit" value="Encrypt Share2" class="gradientbuttons"  /><br><br><br>
	<input type="submit" name="submit" value="Save Encypt_Share1" class="gradientbuttons" /><br><br><br>
	<input type="submit" name="submit" value="Save Encypt_Share2" class="gradientbuttons" /><br><br><br>
	<input type="submit" name="submit" value="Save Key" class="gradientbuttons"  />
	<input type="hidden" name="fileName" value="<%=fileName%>">
	<input type="hidden" name="share_1" value="<%=share1%>">
	<input type="hidden" name="share_2" value="<%=share2%>">
	
</div>

<div id="a3" align="right" style="position:absolute;top:30px;left:10px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="1px" cellspacing="1px" width="550px;">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#000000" style="font-style: bold" size="5">Visual Cryptography Process</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th>OriginalImage</th>
			<th>Shares</th>
			
			
			
		</tr>


		<tr align="center" width="250px;" height="150">
			
			<td>&nbsp;&nbsp;
				<img alt="" src="<%=request.getContextPath()%>/Files/InputImage/<%=fileName%>" width="200px" height="120px">
			</td>
			
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<img alt="" src="<%=request.getContextPath()%>/Files/VCShares/<%=share1%>" width="200px" height="120px">
				<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<img alt="" src="<%=request.getContextPath()%>/Files/VCShares/<%=share2%>" width="200px" height="120px">
			</td>
			
					
		</tr>

  	 </table>
  	
   </div>
 </form>
   
  

<%
	if(Utility.parse(request.getParameter("no"))==1)
	{
		%>
			<div class="success" id="message" style="position:absolute;top:-10px;left:50px;color: red;font-size: 20px;">	
				<p>Share 1 Image Encrypted successfully ..!</p>
			</div>
		<%
	}
	if(Utility.parse(request.getParameter("no"))==2)
	{
		%>
			<div class="error" id="message" style="position:absolute;top:-10px;left:50px;color: red;font-size: 20px;">	
				<p>Opps,Something Went Wrong! Try Again....</p>
			</div>
		<%
	}
	
	if(Utility.parse(request.getParameter("no"))==3)
	{
		%>
			<div class="success" id="message" style="position:absolute;top:-10px;left:50px;color: red;font-size: 20px;">	
				<p>Share 2 Image Encrypted successfully ..!</p>
			</div>
		<%
	}
	if(Utility.parse(request.getParameter("no"))==5)
	{
		%>
			<div class="success" id="message" style="position:absolute;top:-10px;left:50px;color: red;font-size: 20px;">	
				<p>Encrypted Share 1 Image Saved successfully ..!</p>
			</div>
		<%
	}
	if(Utility.parse(request.getParameter("no"))==4)
	{
		%>
			<div class="error" id="message" style="position:absolute;top:-10px;left:50px;color: red;font-size: 20px;">	
				<p>Opps,Something Went Wrong! Try Again....</p>
			</div>
		<%
	}
	
	
	
%>
</body>
</html>


