
<%@page import="com.user.util.Utility"%><html>
<head>

</head>

<%
	int no=Utility.parse(request.getParameter("no"));
    String fileExtension = (String) session.getAttribute("file_ext");
%>

<body onload="startTimer()">


<form id="login" action="<%=request.getContextPath() %>/SelectType"
	 method="post">

<div class="tab"
	style="position: absolute; top: 100px; left: 180px; width: 400px;">

<table id="login">
	<tr>
		<td colspan="3" align="center"><font
			style="font-family: Arial; font-size: 20px; color: black;"><b>Select Image Type</b></font></td>
	</tr>

	<tr>
		<td colspan="3" align="center">
		<hr size="5" color="#336633"></hr>
		</td>
	</tr>

	<tr>
	
		<td><select name="type" required="yes" width="90px" style="">

			<option>Select Type</option>


			<option  value="BlackImage" >BlackImage</option>

			<option value="ColorImage">ColorImage</option>


		</select></td>
	</tr>



</table>
<br>
<br>
<input class="gradientbuttons" type="submit" name="submit"
	value="Ok" style="position: absolute; top: 150px; left: 100px;" />
</div>

</form>


</body>
</html>