<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <!-- <script>
	function validateForm() {
	  var x = document.forms["registerpage"]["usrname"].value;
	  var y = document.forms["registerpage"]["pswd"].value;
	  var z = document.forms["registerpage"]["name"].value;
	  var w = document.forms["registerpage"]["email"].value;
	  
	  if (x == "" || x == null|| x == "" || y == null || y == "" || z == null || z == "" || w == null || w == "") {
	    alert("Check for the missing fields");
	    return false;
  }
}
</script> -->
</head>
<body>

<div class="container"  style="width: 500px; height: 500px; background-color:lightBlue;"> 
${regMsg2}
	<h3 align = "center" style="color:Purple;">Create your profile</h3>
	<h5 align = "center" style="color:Purple;">Please provide the valid information</h5>
  <form name = "registerpage" action="registerEmployee" method="post" required>
 
    <div class="form-group">
      <label >EmployeeName:</label>
      <input type="text" class="form-control"   name="employeeName">
    </div>
    <div class="form-group">
      <label >Salary:</label>
      <input type="text" class="form-control" name="salary">
    </div>
    
    <div class="form-group">
      <label >EmailId:</label>
      <input type="text" class="form-control"  name="emailId">
    </div>
    
    <div class="form-group">
      <label >Password</label>
      <input type="text" class="form-control"  name="password">
    </div>
    
    <button type="submit" class="btn btn-primary">Register</button>
  </form>
</div>
</body>
</html>