
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<form method="post" action="updateInfo">

<div class="container" style="background-color:lightBlue;"> 
	<div class="form-group">
      
      <input type="hidden" class="form-control"  name="employeeId" value= "${fact.employeeId}">
    </div>
    <div class="form-group">
      <label >EmployeeName:</label>
      <input type="text" class="form-control" name="employeeName" value="${fact.employeeName}">
    </div>
    
    <div class="form-group">
      <label >salary:</label>
      <input type="text" class="form-control"  name="salary" value="${fact.salary}">
    </div>
    
    <div class="form-group">
      <label >Email:</label>
      <input type="text" class="form-control"  name="emailId" value="${fact.emailId}">
  </div>
  <div class="form-group">
      <label >Password:</label>
      <input type="text" class="form-control"  name="password" value="${fact.password}">
  </div>
 
 <button type="submit" class="btn btn-primary">Submit</button>
 
  

</div>


</form>
</body>
</html>