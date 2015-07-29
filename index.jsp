
<%@ page import="com.user.util.*" %>
<html>
<meta charset="utf-8" />

<head>

<title>Image_VC_RSA</title>
<link href="CSS/style.css" rel="stylesheet" />
<link href="CSS/popup.css" rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/CSS/login.css" type="text/css" />


 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script src="jquery.toastmessage.js" type="text/javascript"></script>
    <link href="jquery.toastmessage.css" rel="stylesheet" type="text/css" />
</head>

<body background="Images/background.jpg">
<%!

	String signoutstatus="";
%>

<%
	signoutstatus=request.getParameter("signoutstatus");
System.out.println("signoutstatus "+signoutstatus);
%>
<%!

	String loginstatus="",passstatus="",mergeSatus="",mergingStatus="",share1_file="",share2_file="";
%>

<%
	loginstatus=request.getParameter("loginstatus");
	passstatus=(String)request.getAttribute("passstatus");
	mergeSatus=(String)request.getAttribute("mergeSatus");
	mergingStatus=(String)request.getAttribute("mergingStatus");
%>
<IMG SRC="Images/J2EE_Top copy.jpg" width=100% height="15%" BORDER="0" ALT="">


<div class="TabMenu" id="label" style="position: absolute;top: 120px;left: 800px;"><span> 
<img src="<%=request.getContextPath() %>/Images/administrator.png" height="30" width="30" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
<a href="#overlay" id="button1"><font style="color: #FFFF99;"><b>Admin</b></font></a> </span> <span> &nbsp;&nbsp;
<img src="<%=request.getContextPath() %>/Images/user.png" height="30" width="30" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp;&nbsp; <a href="#overlay_signup" id="button1"><font style="color: #FFFF99;"><b>User</b></font></a> </span> 
</div>

<!-- Admin Login Pop Up -->


<div id="overlay">

<div id="popup"> <a href="">
<img class="close_button" src="Images/close.png" /></a>

<form class="login" action="<%=request.getContextPath()%>/Login" method="post">

<center><label><font style="font-family: Monotype Corsiva;font-size: 35px;color:#DAA520 ;">Admin Login</font></label></center>
<br>
<label><font style="color: #336633;">Admin Id</font></label>&nbsp;&nbsp;
 <input type="text" tabindex="1" class="input" placeholder="Admin Id" name="name" required ><br>
<br>

<label><font style="color: #336633;">Password</font></label> <input
	type="password" class="input" tabindex="2" name="pass" placeholder="Password" required><br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" id="" value="submit" src="<%=request.getContextPath()%>/Images/login.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/login.png'" class="gradientbuttons" width="20%" height="10%">
</form>
</div>

</div>

<!-- User Login Pop Up -->

<div id="overlay_signup">
<div id="popup" >
<a href=""><img class="close_button" src="Images/close.png" /></a> 

<form class="login" action="<%=request.getContextPath()%>/UserLogin" method="post">
<center><label><font style="font-family: Monotype Corsiva;font-size: 35px;color:#DAA520;">User Login</font></label></center>
<br>
<label><font style="color: #336633;">User Id</font></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" tabindex="1" class="input" name="name" placeholder="User Id" required><br><br>

<label><font style="color: #336633;">Password</font></label> 
<input type="password" class="input" tabindex="2" name="pass" placeholder="Password" required><br><br><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" id="" value="submit" src="<%=request.getContextPath()%>/Images/login.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/login.png'" class="gradientbuttons" width="20%" height="10%">&nbsp;&nbsp;&nbsp;&nbsp;
<a href="#overlay_gallary" id="" ><font style="font-family: Arial;font-size: 20px;color:#336633;">New User</font></a>


</form>
</div>
</div>


<!-- User Register Pop Up -->

<div id="overlay_gallary">
<div id="popup" style="height: 450px; width: 600px; padding: 10px;">

<a href=""><img class="close_button" src="Images/close.png" /></a> 

<form class="login1" action="<%=request.getContextPath()%>/Register" method="post">


<div style="position: absolute;top: 40px;left: 50px;">
<table>
<tr><td align="center" colspan="5">
<label><font style="font-family: Monotype Corsiva;font-size: 35px;color: #DAA520;">User Registration</font></label>
</td></tr>

<tr><td>&nbsp;</td></tr>
<tr><td>

<label><font style="color: #336633;">User Id</font></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" tabindex="1" name="userid" class="input" placeholder="User Id" required>&nbsp;&nbsp;

<label><font style="color: #336633;">Password</font></label> &nbsp;&nbsp;
<input type="password" class="input" name="pwd" tabindex="2" placeholder="Password" required><br>

</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>

<label><font style="color: #336633;">User Name</font></label> 
<input type="text" tabindex="1" class="input" name="uname" placeholder="User Name" required>&nbsp;&nbsp;

<label><font style="color: #336633;">Gender</font></label> &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;Male<input name="gender" value="Male" type="radio" checked="true"/>
						&nbsp;&nbsp;&nbsp;Female<input name="gender" value="Female" type="radio"/>
						
	</td></tr>
		<tr><td>&nbsp;</td></tr>				

<tr><td>

<label><font style="color: #336633;">Address</font></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" tabindex="1" name="addr" class="input" placeholder="Address" required>&nbsp;&nbsp;

<label><font style="color: #336633;">City</font></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" class="input" tabindex="2" name="city" placeholder="City" required>

</td></tr>
<tr><td>&nbsp;</td></tr>

<tr><td>
<br>
<label><font style="color: #336633;">Email</font></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" tabindex="1" class="input" name="email" placeholder="Email" required>&nbsp;&nbsp;

<label><font style="color: #336633;">Phone</font></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" class="input" tabindex="2" name="phone" placeholder="Phone" required>

</td></tr>

<tr><td>&nbsp;</td></tr>

<tr><td align="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" id="" value="submit" src="<%=request.getContextPath()%>/Images/signup.jpg" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/signup.jpg'" class="gradientbuttons" width="20%" height="90%">

</td></tr>

</table>
</div>

</form>

</div>
</div>

<%
			if(Utility.parse(request.getParameter("no"))==5)
			{%>
				
				<div  style="position: absolute;top: 500px;left: 300px;color: #336633;font-size: 20px; ">	
		<script type="text/javascript">
		 $().toastmessage('showErrorToast', "Sorry this user id is already exists.....!");
		
		</script></div>		
			<%}

		%>
		
<%	
		int no=Utility.parse(request.getParameter("no"));
		if(no==1)
		{%>
		<div  style="position: absolute;top: 500px;left: 300px;color: #336633;font-size: 20px; ">	
		<script type="text/javascript">
		 $().toastmessage('showErrorToast', "Invalid Id and Password ...!");
		
		</script></div>
		
					
		<%}
		if(no==3)
		{%>
		
			<div  style="position: absolute;top: 500px;left: 300px;color: #336633;font-size: 20px; ">	
		<script type="text/javascript">
		 $().toastmessage('showErrorToast', "Opp's,Something went wrong ..!");
		
		</script></div>		
		<%}
		if(no==4)
		{%>
				
				<div  style="position: absolute;top: 500px;left: 300px;color: #336633;font-size: 20px; ">	
		<script type="text/javascript">
		 $().toastmessage('showSuccessToast', "You have registered successfully!");
		
		</script></div>		
		<%}
		
		if(no==6)
		{%>
			
				<div  style="position: absolute;top: 500px;left: 300px;color: #336633;font-size: 20px; ">	
		<script type="text/javascript">
		 $().toastmessage('showSuccessToast', "You have Logged Out Successfully!");
		
		</script></div>			
		<%
		}
		
		
	%>


<%
	if(signoutstatus==null)
	{
		
	}

	else if(signoutstatus.equals("success"))
	{
		%>
		<div style="top:500px;position: absolute;left: 100px;"><font color=red>Logged out Successfully!!!</font></div>
	
<%	
	session.removeAttribute("signoutstatus");
	}

%>
<%
	if(loginstatus==null)
	{
		
	}

	else if(loginstatus.equals("failed"))
	{
		%>
	<br><br><br>	
	<center><h4><font color=red>Login Failed, Invalid User!!!</font></h4></center>
<%
	}

%> 	 

</body>
</html>