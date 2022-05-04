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
<div class="container">
  <div class="jumbotron"> 

     
<div class="row">

<div class="col-md-12"> <h2>New Openings Registration</h2>
   <div class="form-group"> 
    <form method="post" name="frm" action="JobRegistration">
<table class="tblform">
<tr>
<td>Company</td>
<td>
<textarea  name="txtcompany" required class="form-control"></textarea>
</td>
</tr>
<tr>
<td>Minimum SSC Percentage</td>
<td>
<input name="txtssc" required class="form-control"   type="number" placeholder="35.0"  min="35" max="100" oninvalid="this.setCustomValidity('Only Number upto two decimal places are allowed!!')"/>
</td>
</tr>

<tr>
<td>Minimum HSC Percentage</td>
<td>
<input name="txthsc" required class="form-control"   type="number" placeholder="35.0"  min="35" max="100" oninvalid="this.setCustomValidity('Only Number upto two decimal places are allowed!!')"/>
</td>
</tr>
<tr>
<td>Overall Percentage</td>
<td>
<input name="txtoverall" required class="form-control"   type="number" placeholder="35.0"   min="35" max="100" oninvalid="this.setCustomValidity('Only Number upto two decimal places are allowed!!')"/>
</td>
</tr>
<tr>
<td>Age Limit</td>
<td>
<input type="number" name="txtagelimit" min="21" max="50" step="1" value="50"  class="form-control"/>
</td>
</tr>
<tr>
<td>Minimum Experience in (years)</td>
<td>
<input type="number" name="txtminexp" min="0" max="30" step="1" value="0"  class="form-control"/>
</td>
</tr>
<tr>
<td>Previous Designation</td>
<td>
<input type="text"  name="txtprevdesig" required class="form-control"/>
</td>
</tr>
<tr>
<td>Job Designation</td>
<td>
<input type="text"  name="txtdesig" required class="form-control"/>
</td>
</tr>
<tr>
<td>Bond</td>
<td>
<input type="text"  name="txtbond" required class="form-control"/>
</td>
</tr>
<tr>
<td>Salary/Annum in Lacs</td>
<td>
<input name="txtsal" required class="form-control"   placeholder="1.0"    oninvalid="this.setCustomValidity('Only Number upto two decimal places are allowed!!')"/>
</td>
</tr>
<tr>
<td>Working City </td>
<td>
<select name="wcity" required class="form-control">
<option value=""><--Select--></option>
<option value="Chennai">Chennai</option>
<option value="Hyderabad">Hyderabad</option>
<option value="Pune">Pune</opion>
<option value="Bangalore">Bangalore</option>
<option value="Kolkata">Kolkata</option>
<option value="Mumbai">Mumbai</option>
<option value="Nagpur">Nagpur</option>
</select>
</td>
</tr>
<tr>
<tr>
<td>Required Courses</td>
<td>
 
</td>
</tr>
<tr>
<td>Course</td>
<td>
<table class="chkstyle">
<tr><td>


<input type="checkbox" name="txtcourse"  value="SSC"  class="form-check-input"  checked>SSC</input>
</td><td><input type="checkbox" name="txtcourse" value="HSC" class="form-check-input" checked>HSC</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="BCA">BCA</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="MCA">MCA</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="MCM">MCM </input>

</td></tr><tr><td><input type="checkbox" name="txtcourse"  class="form-check-input" value="MBA(Computer)">MBA(Computer)</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="MSCIT">MSCIT</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="TALLY">TALLY</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="ITI in computers">ITI in Computers </input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="Phd">Phd</input>
</td></tr><tr><td><input type="checkbox" name="txtcourse" class="form-check-input" value="BE(IT)">BE(IT)</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="BE(CSE)">BE(CSE)</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="MSc(Computer)">MSc(Computer)</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="Bsc(Computer)">BSc(Computer)</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="Asp.Net Certification">Asp.net Certification</input>
</td></tr><tr><td><input type="checkbox" name="txtcourse" class="form-check-input" value="Java Certification">Java Certification</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="PHP Certification">PHP Certification</input>
</td><td><input type="checkbox" name="txtcourse" class="form-check-input" value="Python Certification">Python Certification</input>
 </table>
</td>
</tr>
<tr>
<td>Interview Date & time </td>
<td>
<input type="date" name="txtdttm"   class="form-control"/>
</td>
</tr>
<tr>
<td>Mobile</td>
<td>
<input type="text"  name="txtmobile" required class="form-control"/>
</td>
</tr>
<tr>
<td>Contact Person</td>
<td>
<input type="text"  name="txtcontact" required class="form-control"/>
</td>
</tr>
 <tr>
 <td colspan="2">
 <input type="submit" value="Submit" class="btn btn-primary"/>
 </td>
 </tr>
</table></form>
 
</div></div>
 
</div>
</div>
<%}
catch(Exception ex)
{
	
} %>

</div>
</body>
</html>