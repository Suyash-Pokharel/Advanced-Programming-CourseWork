<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Register - Airline Management</title>
  
    
    <!-- External CSS -->
    <link rel="stylesheet" href="${cssPath}">
</head>
<body>
  <div class="auth-container">
    <div class="auth-left">
      <img src="${pageContext.request.contextPath}/images/auth-banner.jpg" alt="Airline Banner">
    </div>
    <div class="auth-right">
      <div class="auth-form-container">
        <h2>Create Account</h2>
        
        
        
        <form action="${pageContext.request.contextPath}/register" method="post" class="auth-form">
          <div class="form-group">
            <input type="text" name="fullname" placeholder="Full Name" required>
          </div>
          <div class="form-group">
            <input type="email" name="email" placeholder="Email Address" required>
          </div>
          <div class="form-group">
            <input type="tel" name="phone" placeholder="Phone Number" required>
          </div>
          <div class="form-group">
            <input type="password" name="password" placeholder="Password" required>
          </div>
          <div class="form-group">
            <input type="password" name="confirm_password" placeholder="Confirm Password" required>
          </div>
          
          <button type="submit" class="btn btn-primary">Register</button>
          
          <div class="auth-footer">
            Already have an account? <a href="${pageContext.request.contextPath}/login">Login here</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>