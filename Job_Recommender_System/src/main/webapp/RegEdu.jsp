<%@page import="job.beans.EduReg"%>
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
<div class="container">
  <div class="jumbotron"> 

     
<div class="row">

<div class="col-md-6"> <h2>Education Details Registration</h2>
   <div class="form-group"> 
    <form method="post" name="frm" action="EduRegistration" enctype="multipart/form-data">
<table class="tblform">
<tr>
<td>Course</td>
<td>
<select name="txtcourse" required class="form-control">
<option value=""><--Select--></option>
<option value="SSC">SSC</option>
<option value="HSC">HSC</option>
<option value="BCA">BCA</option>
<option value="MCA">MCA</option> 
<option value="MSCIT">MSCIT</option>
<option value="TALLY">TALLY</option>
<option value="ITI in computers">ITI in Computers</option>   
<option value="MBA(Computer)">MBA Computers</option>
<option value="MCM">MCM</option>
<option value="Phd">PhD</option>
<option value="BE(IT)">BE(IT)</option>
<option value="ME(IT)">ME(IT)</option>
<option value="BE(CSE)">BE(CSE)</option>
<option value="MSc(Computer)">MSc(Computer)</option>
<option value="Bsc(Computer)">Bsc(Computer)</option> 
<option value="Asp.Net Certification">Asp.Net Certification</option>     
<option value="Java Certification">Java Certification</option>
<option value="PHP Certification">PHP Certification</option>
<option value="Python Certification">Python Certification</option>                       
</select>
</td>
</tr>
<tr>
<td>Passing Year </td>
<td>
<input type="number" name="txtpassingyr" min="1970" max="<%=((new Date().getYear())+1900) %>" step="1" value="<%=((new Date().getYear())+1900) %>"  class="form-control"/>
</td>
</tr>
<tr>
<td>Percentage</td>
<td>
<input name="txtpercent" required class="form-control"   type="number" placeholder="35.0" step="0.01" min="35" max="100" oninvalid="this.setCustomValidity('Only Number upto two decimal places are allowed!!')"/>
</td>
</tr>
<tr>
<td>University/College/Institute/Board</td>
<td>
<textarea  name="txtuni" required class="form-control"></textarea>
</td>
</tr>
 <tr><td>Certificate</td>
       <td>
       <input type="file" name="file" class="form-control"/>
       </td>
	<tr>
 <tr>
 <td colspan="2">
 <input type="submit" value="Submit" class="btn btn-primary"/>
 </td>
 </tr>
</table></form>
 
</div></div>
<div class="col-md-6">
<h2>Registered Courses</h2>
<%
EduReg obj=new EduReg();
List<EduReg> lst=obj.getEduDetails(session.getAttribute("userid").toString().trim());
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
	<th>Course
	<th>Passing Year
	<th>Percentage %
	<th>University
	<th>Certificate</th>
	</tr>
	<%
	for(int i=0;i<lst.size();i++)
	{
		%>
		
		<tr>
		<td><%=lst.get(i).getCourse() %></td>
		<td><%=lst.get(i).getPassingyr() %></td>
		<td><%=lst.get(i).getPercent() %></td>
		<td><%=lst.get(i).getUniversity() %></td>
		<td><a href="Uploads/<%=lst.get(i).getPath() %>" target="_blank">Certificate</a></td>
		</tr>
		<% 
	}
	%>
	</table>
	
	
	<%
}
}
catch(Exception ex)
{
	
}
%>
</div>
</div>
</div>


</div>
</body>
</html>