<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<style>
body {
  background: #555;
}

.content {
  max-width: 500px;
  margin: auto;
  background: white;
  padding: 10px;
  
  
}

  
}
</style>

<div class="content" 
style="width: 500px; height:400px; background-color:lightBlue;"> 
<h4 align = "center" style="color:Purple;">Please login or sign up</h4>
<p style="color:red;">
 ${fact}
 ${regMsg1}</p>
 <img src="images/login.png"  style="height: 100px" class="center">
 
  <form  action="auth" method="post" >
  

    <div class="form-group">
      <label >Enter your Email</label>
      <input type="text" class="form-control"  placeholder="Email" name="email">
    </div>
     <div class="form-group">
      <label >Enter your password</label>
      <input type="text" class="form-control"  placeholder="Password" name="password">
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
      <a href="Register" >
      <button type="button" class="btn btn-info">Sign Up</button>
   </a>
    <a href="forgetPassword" >
      <button type="button" class="btn btn-info">ForgetPassword</button>
   </a>
  </form>
  
</div>


</body>
</html>