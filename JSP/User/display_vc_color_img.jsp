<%@page import="com.user.util.Utility"%>
<%@page import="java.sql.ResultSet"%>

<head>
	<script>
	function checkBoxAction(name)
	{
	    var elems = document.getElementsByName(name);
	    
	    for(i=0; i<elems.length; i++) 
	        {
	        elems[i].disabled = !elems[i].disabled;
	    }

	    
	}

	function check1()
	{

		document.getElementById('frm').addEventListener('change', function(e)
				{
				    var el = e.target;
				    var inputs = document.getElementById('frm').getElementsByTagName('input');

				    // If 'all' was clicked
				    if (el.id === 'share1') {

				        // If 'all' is checked
				       

				            // Loop through the other inputs and removed the check
				            for (var i = 1, input; input = inputs[i++]; ) {
				                input.checked = false;
				            }
				        
				    }

				    // If another has been clicked, remove the check from 'all'
				    else {
				        inputs[0].checked = false;
				    }
				}, false);
		
	}

	
	
</script>


</head>
<body onload="startTimer()">
<%
    HttpSession s = request.getSession();
    int no=Utility.parse(request.getParameter("no"));

	String fileName="",share1="",share2="",blue_img="";
	fileName = request.getAttribute("fileName").toString();
	share1 = request.getAttribute("share1").toString();
	share2 =  request.getAttribute("share2").toString();
	
	System.out.println("No :"+no+"share 1 :"+share1+"share 2 :"+share2);

%>	

<form action="<%=request.getContextPath()%>/ColorEncryptImage">
<div align="right" style="position:absolute;top:50px;left:600px" id="frm">

	<input type="submit" name="submit" value="Encrypt Share1" class="gradientbuttons" onchange=""/><br><br><br>
	<input type="submit" name="submit" value="Encrypt Share2" class="gradientbuttons" /><br><br><br>
	<input type="submit" name="submit" value="Save Encypt_Share1" class="gradientbuttons" /><br><br><br>
	<input type="submit" name="submit" value="Save Encypt_Share2" class="gradientbuttons" /><br><br><br>
	<input type="submit" name="submit" value="Save Key" class="gradientbuttons" />
	<input type="hidden" name="fileName" value="<%=fileName%>">
	<input type="hidden" name="share_1" value="<%=share1%>">
	<input type="hidden" name="share_2" value="<%=share2%>">
	
</div>

<div id="a3" align="right" style="position:absolute;top:30px;left:5px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="1px" cellspacing="1px" width="550px;" >
		
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
			
			<td >&nbsp;&nbsp;
				<img alt="" src="<%=request.getContextPath()%>/Files/InputImage/<%=fileName%>" width="200px" height="120px">
			</td>
			
			<td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
			<div class="success" id="message" style="position:absolute;top:-10px;left:50px;color:red;font-size: 20px;">	
				<p>VC Process Done successfully ..!</p>
			</div>
		<%
	}
	if(Utility.parse(request.getParameter("no"))==2)
	{
		%>
			<div class="error" id="message" style="position:absolute;top:-10px;left:50px;color:red;font-size: 20px;">	
				<p>Opps,Something Went Wrong! Try Again....</p>
			</div>
		<%
	}
	
	
	
%>
</body>
</html>


