<%@page import="com.user.util.Utility"%>
<%@page import="java.sql.ResultSet"%>

<head>


</head>
<body onload="startTimer()">
<%
    HttpSession s = request.getSession();
    int no=Utility.parse(request.getParameter("no"));

	String fileName="",fileName1="",share1="",share2="",blue_img="";
	fileName = request.getAttribute("fileName1").toString();
	fileName1 = request.getAttribute("fileName2").toString();
	
	System.out.println("No :"+no+"File Name :"+fileName+"."+fileName1);

	
%>

<form action="<%=request.getContextPath()%>/MergeImage">
<div align="right" style="position: absolute; top: 150px; left: 620px">
<input type="submit" name="submit" value="Merge Images" class="gradientbuttons"/>
<input type="hidden" name="fileName" value="<%=fileName%>">
<input type="hidden" name="fileName1" value="<%=fileName1%>"></div>

<div id="a3" align="right" style="position: absolute; top: 30px; left: 20px; width: 600px; height: 300px;">

<p>
<table id="results" class="tab" border="1" cellpadding="1px" cellspacing="1px" width="600px">

	<tr>

		<td colspan="6" align="center"><font color="#000000"
			style="font-style: bold" size="5">Decryption Image</font></td>

	</tr>


	<tr>
		<th>Share1</th>
		<th>Share2</th>



	</tr>


	<tr align="center" style="width: 250px;height: 150px;">

		<td><img alt=""	src="<%=request.getContextPath()%>/Files/Decryption/<%=fileName%>"
			width="200px" height="120px"></td>



		<td><img alt="" src="<%=request.getContextPath()%>/Files/Decryption/<%=fileName1%>"
			width="200px" height="120px"></td>

	</tr>

</table>

</div>
</form>



<%
	if(Utility.parse(request.getParameter("no"))==1)
	{
		%>
<div class="success" id="message" style="position: absolute; top: -10px; left: 50px;color: red;font-size: 20px;">
<p>Decryption Process Done Successfully ..!</p>
</div>
<%
	}
	if(Utility.parse(request.getParameter("no"))==2)
	{
		%>
<div class="error" id="message" style="position: absolute; top: -10px; left: 50px;color: red;font-size: 20px;">
<p>Opps,Something Went Wrong! Try Again....</p>
</div>
<%
	}
	
	
	
%>
</body>
</html>


