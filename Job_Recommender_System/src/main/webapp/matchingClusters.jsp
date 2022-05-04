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
<h2>Job Opportunities</h2>
<%
String userid=request.getParameter("userid").toString().trim();
JobReg obj=new JobReg();
List<JobReg> lst=obj.getJobDetails3(userid);
if(lst.size()==0)
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
	<th>Company
	<th>SSC Percentage
	<th>HSC Percentage
	<th>Overall Percentage
	<th>Age Limit
	<th>Minimum Experience
	<th>Previous Required Designation
	<th>Salary
	<th>Working City
	<th>Bond 
	<th>Designation
	<th>Required Courses
	<th>Interview Date
	 
	<th>Contact No
	<th>Contact Person
	</tr>
	<%
	for(int i=0;i<lst.size();i++)
	{
		%>
		
		<tr>
		<td><%=lst.get(i).getCompany() %></td>
		<td><%=lst.get(i).getSscpercent() %></td>
		<td><%=lst.get(i).getHscpercent() %></td>
		<td><%=lst.get(i).getOtherpercent() %></td>
		<td><%=lst.get(i).getAgelim() %></td>
		<td><%=lst.get(i).getMinexp() %></td>
		<td><%=lst.get(i).getPrevdesig() %></td>
		<td><%=lst.get(i).getSal() %></td>
		<td><%=lst.get(i).getWcity() %></td>
		<td><%=lst.get(i).getBond1() %></td>
		<td><%=lst.get(i).getDesig() %></td>
		<td><%=lst.get(i).getReqcourse() %></td>
		<td><%=lst.get(i).getIntdt() %></td>
	 
		<td><%=lst.get(i).getMobile() %></td>
		<td><%=lst.get(i).getContactper() %></td>
		
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