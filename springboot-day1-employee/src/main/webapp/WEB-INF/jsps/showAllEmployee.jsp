<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<title>All users</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<h1 style="color:Tomato;">Information table </h1>
<body>
<div class="container">
       ${updateMsg}
       
  <table class="table table-bordered" >
    <thead>
    <br></br>
      <tr style="background-color:lightBlue;">
        <th>Id</th>
        <th>EmployeeName</th>
        <th>Salary</th>
        <th> EMAIL<div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sort
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="ascendingServlet">Ascending</a></li>
      <li><a href="descendingServlet">Descending</a></li>
     
    </ul>
  </div>
</div></th>

		<th>Password</th>
        <th>ACTION</th>
       
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${listOfUsers}" var="usr">
      <tr style="background-color:lightyellow;">
        <td>${usr.employeeId }</td>
        <td>${usr.employeeName }</td>
        <td>${usr.salary }</td>
        <td>${usr.emailId }</td> 
        <td>${usr.password }</td> 
        
        <td><a href="deleteServlet?employeeId=${usr.employeeId}"><button type="button" class="btn btn-info">Delete</button></a>
       
         <a href="fetchupdateServlet?employeeId=${usr.employeeId}"><button type="button" class="btn btn-info">Update</button></a>
        </td> 
              
        
      </tr>
     </c:forEach>
      
    </tbody>
  </table> 
  
  
   <a href="logoutServlet" >
      <button type="button" class="btn btn-info">LogOUT</button>
   </a> 
  
  
</div>


</body>
</html>