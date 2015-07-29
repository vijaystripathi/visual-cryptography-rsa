
<%@page import="com.user.util.Utility"%><html>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/message.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/contact.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/login.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Resources/CSS/button.css" type="text/css"/>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/pagination.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Resources/JS/style.js"></script>
</head>

<%
	int no=Utility.parse(request.getParameter("no"));
    int no1=Utility.parse(request.getParameter("no1"));
%>

<body onload="startTimer()">

<%
	if(no == 0)
	{
%>

<form id="login" action="<%=request.getContextPath() %>/HideData"  method="post">
		
			<div class="tab" style="position:absolute;top:50px;left:130px;width:400px;">
			     
			     <table id="login">
			     	<tr>
			     			<td colspan="3" align="center">Hiding The Data Inside The Image</td>
			     	</tr>
			     	
			     	<tr>
			     			<td colspan="3" align="center"><hr></td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Text Data To Hide</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="textData" style="width:250px"></input>
			     		</td>
			     	</tr>
			     	
			     	<tr>
			     		<td>Hiding Key</td>
			     		<td>:</td>
			     		<td>
			     			<input class="field" type="text" name="hidingKey" style="width:250px"></input>
			     		</td>
			     	</tr>
			     	
			     </table>
			     <input type="hidden" name="act" value="HideDataAction" />
				 <input class="gradientbuttons" type="submit" name="action" value="Hide Data" style="position:absolute;top:-45px;left:375px;"/>
				 
			</div>
			
</form>

<%
if(no1 == 1)
{
	
%>

	<div class="error" id="message" style="position:absolute;top:10px;left:200px">	
			<p>Opp's,Something Went Wrong,Try Again !!!!!</p>
	</div>	

<%
}
	}//ending if(no == 0)
	else if(no == 1)
	{
		
%>

		<div class="success" id="message" style="position:absolute;top:10px;left:200px">	
    		<p>Data Hiding Process Done Successfully.....</p>
    	</div>	

<%
	}
%>
</body>
</html>