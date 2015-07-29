<%@ page import="java.sql.*" %>
<%@ page import="com.user.util.*" %>
<html>

<head>
	
</head>
<%
	ResultSet rs=(ResultSet)Utility.parse2(request.getAttribute("rs"));
%>
<body onload="startTimer()">
<form action="<%=request.getContextPath() %>/UserList">
<div align="right">
	<input type="image" value="Edit" name="submit" src="<%=request.getContextPath()%>/Images/edit.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/edit.png'" class="gradientbuttons" width="10%" height="10%"/>
	&nbsp;&nbsp;&nbsp;&nbsp;
	
	<input type="image" value="Delete" name="submit" src="<%=request.getContextPath()%>/Images/delete.png" alt="submit Button" onMouseOver="this.src='<%=request.getContextPath()%>/Images/delete.png'" class="gradientbuttons" width="10%" height="10%"/>
	
</div>
<div style="position: absolute;top: 50px;left: 50px;">
	<table id="results" class="tab" border="1" bordercolor="#336633">
	<tr>
		<th>Select</th>
		<th>ID</th>
		<th>Name</th>
		<th>Gender</th>
		<th>Add</th>
		<th>City</th>
		<th>E-Mail</th>
		<th>Contact No</th>
	</tr>
	<%
	if(rs!=null)
		while(rs.next())
		{%>
			<tr>
				<td><input name="chk" type="checkbox" value="<%=rs.getInt(1) %>"></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><%=rs.getString(7) %></td>
						<td><%=rs.getString(8) %></td>
						<td><%=rs.getString(9) %></td>
			</tr>
		<%}
	%>
</table></div>
</form>
<div id="pageNavPosition" style="cursor:hand"></div>
<script type="text/javascript"><!--
        var pager = new Pager('results', 5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
<%
	if(Utility.parse(request.getParameter("no"))==1)
    {%>
    	<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color: red;">	
    		<p>User Added Successfully.....!</p>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==-1)
	{%>
		<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color: red;">	
			<p>Opp's something went wrong.....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==2)
	{%>
		<div class="error" id="message" style="position:absolute;top:-10px;font-size: 20px;color: red;">	
			<p>Opp's select atleast one.....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==3)
	{%>
		<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color: red;">	
			<p>User Deleted Successfully.....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==4)
	{%>
		<div class="error" id="message" style="position:absolute;top:-10px;font-size: 20px;color: red;">	
			<p>Opp's Select only one user to edit....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==5)
	{%>
		<div class="success" id="message" style="position:absolute;top:-10px;font-size: 20px;color: red;">	
			<p>User Updated Successfully....!</p>
		</div>			
	<%}
%>		
</body>
</html>