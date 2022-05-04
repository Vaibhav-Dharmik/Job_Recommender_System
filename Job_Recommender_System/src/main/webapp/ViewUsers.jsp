<%@page import="java.util.Vector"%>
<%@page import="job.beans.JobReg"%>
<%@page import="java.util.List"%>
<%@page import="job.*"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Top.jsp"></jsp:include>
<% try{ response.setHeader("Pragma", "No-cache");
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setDateHeader("Expires", -1);
if(session.getAttribute("userid")==null)
{
	response.sendRedirect("index.jsp");
}
%>
<div class="container-fluid">
   

     
<div class="row">
 
<div class="col-md-12">
<h2>Registered Users</h2>
<%
JobReg obj=new JobReg();
Vector vct=obj.getValue("select * from userdetails", 18);
if(vct.size()==0)
{
	%>
	<div class="norecord">No record Found!!</div>
	<%
}
else
{
	
	%>
	<table class="table table-bordered">
	
	<tr>
	<th>Name
	<th>Userid
	<th>Mobile
	<th>Email
	<th>Preferred City
	<th>Address
	<th>City
	<th>Previous Job
	<th>Previous Employer
	<th>Previous Salary/Annum (in lacs)
	<th>Expected Salary/Annum (in lacs)
	<th>Bond Preference
	<th>DOB
	
	 
	<th>Experience (in years)
	<th>Gender
	<th>Resume
	</tr>
	<%
	for(int i=0;i<vct.size();i=i+18)
	{
		%>
		
		<tr>
		<td><%=vct.elementAt(i+1) %></td>
		<td><%=vct.elementAt(i+2) %></td>
		<td><%=vct.elementAt(i+3) %></td>
		<td><%=vct.elementAt(i+4) %></td>
		<td><%=vct.elementAt(i+5) %></td>
		<td><%=vct.elementAt(i+6) %></td>
		<td><%=vct.elementAt(i+7) %></td>
		<td><%=vct.elementAt(i+8) %></td>
		<td><%=vct.elementAt(i+9) %></td>
		<td><%=vct.elementAt(i+10) %></td>
		<td><%=vct.elementAt(i+11) %></td>
		<td><%=vct.elementAt(i+12) %></td>
		<td><%=vct.elementAt(i+13) %></td>	
		
		<td><%=vct.elementAt(i+15) %></td>
		<td><%=vct.elementAt(i+16) %></td>
		<td><a href='Resumes/<%=vct.elementAt(i+17) %>' target="_blank">Resume</a></td>
		</tr>
		<% 
	}
	%>
	</table>
	
	
	<%
}}
catch(Exception ex)
{
	
}
%>
</div>
</div>
 


</div>
</body>
</html>