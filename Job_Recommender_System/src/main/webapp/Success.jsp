<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="DefaultTop.jsp"></jsp:include>
<div class="container">
<%
if(request.getParameter("type").toString().trim().equals("Reg"))
{
	%><h2>Your Registration Done Successfully....</h2>
	<br/>
	<a href="index.jsp">Home</a>
<%}
else if(request.getParameter("type").toString().trim().equals("JReg"))
{
	%><h2>Job Details Registered Successfully....</h2>
	<br/>
	<a href="admin.jsp">Home</a>
<%
}
else if(request.getParameter("type").toString().trim().equals("Edu"))
{
	%><h2>Education Details Registered Successfully....</h2>
	<br/>
	<a href="RegEdu.jsp">Home</a>
<%
}
else if(request.getParameter("type").toString().trim().equals("Job"))
{
	%><h2>New Job Opening Details Registered Successfully....</h2>
	<br/>
	<a href="ViewJobs.jsp">Home</a>
<%
}
%>
</div>
</body>
</html>