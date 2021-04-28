<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>welcome page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h1 style="color:Tomato;">Congratulation.Welcome to my page</h1>
	

	<div class="container">
  
            
  <table class="table table-bordered">
    <thead>
      <tr style="background-color:lightBlue;">
       <th>Id</th>
        <th>EmployeeName</th>
        <th>Salary</th>
        <th>Email</th>
        <th>Password</th>
      </tr>
    </thead>
    <tbody>
      <tr style="background-color:lightyellow;">
        <td>${fact.employeeId }</td>
        <td>${fact.employeeName }</td>
        <td>${fact.salary}</td>
        <td>${fact.emailId }</td>
        <td>${fact.password }</td>
      </tr>
      
    </tbody>
  </table>
  
   <a href=findAll >
      <button type="button" class="btn btn-info">Show all records</button>
   </a> 
  </div>
	
	
</body>
</html>