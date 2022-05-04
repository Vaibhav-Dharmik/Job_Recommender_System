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
<div class="container"><div class="jumbotron"> <h2>User Registration</h2><br/>
 <form method="post" name="frm" action="Registration"  enctype="multipart/form-data">
     
<div class="row">

<div class="col-md-6">
   <div class="form-group"><center>
   
<table class="tblform">
<tr>
<td>Name</td>
<td>
<input type="text" name="name" required class="form-control"/>
</td>
</tr>
<tr>
<td>Userid </td>
<td>
<input type="text" name="userid" required class="form-control"/>
</td>
</tr>
<tr>
<td>Mobile</td>
<td>
<input type="text" name="mobile" required class="form-control"/>
</td>
</tr>
<tr>
<td>Email</td>
<td>
<input type="text" name="email" required class="form-control"/>
</td>
</tr>
<tr>
<td>DOB</td>
<td>
<input type="date" name="dob" required class="form-control"/>
</td>
</tr>
<tr>
<td>Gender</td>
<td>
<input type="radio" name="gender" value="Male"   checked="true" required >Male</input>
<input type="radio" name="gender" value="Female"  required>Female</input>
</td>
</tr>
<tr>
<td>Address</td>
<td>
<textarea name="addr" required class="form-control"></textarea>
</td>
</tr>
<tr>
<td>city</td>
<td>
<input name="city" type="text" required class="form-control"/>

</td>
</tr>
</table></div>
</div>

<div class="col-md-6">
<div class="form-group">

<table>
<tr>
<td>Previous/Current Employer</td>
<td>
<input type="text" name="prevComp" required class="form-control"/>
</td>
</tr>
<tr>
<td>Previous/Current Job Designation </td>
<td>
<input type="text" name="prevDesig" required class="form-control"/>
</td>
</tr>
<tr>
<td>Previous/Current Salary</td>
<td>
<input  name="prevSal" value="0" required class="form-control"   type="number" placeholder="1.0" step="0.01" min="0" max="100" oninvalid="this.setCustomValidity('Only Number upto two decimal places are allowed!!')"/>
</td>
</tr>
 
<tr>
<td>Experience</td>
<td>
<input type="number" name="exp" required class="form-control"/>
<input type="hidden" name="Sal" value="0"/>
</td>
</tr>
<tr>
<td>Resume</td>
<td>
<input type="file" name="file" required class="form-control"/>
</td>
</tr>
 
<tr>
<td>Preferred Job City</td>
<td>
<select name="prefcity" required class="form-control">
<option value=""><--Select--></option>
<option value="Chennai">Chennai</option>
<option value="Hyderabad">Hyderabad</option>
<option value="Pune">Pune</opion>
<option value="Bangalore">Bangalore</option>
<option value="Kolkata">Kolkata</option>
<option value="Mumbai">Mumbai</option>
<option value="Nagpur">Nagpur</option>
</select>
 <input type="hidden" name="bond" value="yes"/>

<tr>
<td>Password</td>
<td>
<input type="password" name="pass" required class="form-control"/>
</td>
</tr><tr>
<td colspan="2">
<input type="submit" value="Submit" class="btn btn-primary"/>
</td>
</table></div>
 
</div>
</div></form>
</div></div>
</body>
</html>