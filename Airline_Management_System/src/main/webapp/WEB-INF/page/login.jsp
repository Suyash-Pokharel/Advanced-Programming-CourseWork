<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login - Dawn Airlines</title>

    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- Corrected CSS Link -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
    <div class="container">
        <!-- Left Image Section -->
        <div class="left">
            <img src="${pageContext.request.contextPath}/Image/kathmandu.jpg" alt="Banner">
        </div>

        <!-- Right Login Form -->
        <div class="right">
            <h2>Login to Your Account</h2>

            <form action="${pageContext.request.contextPath}/login" method="post">
                <input type="email" name="email" placeholder="Email Address" value="${rememberedEmail}" required />
                
                <input type="password" name="password" placeholder="Password" required />

                <div class="checkbox-row">
                    <label>
                        <input type="checkbox" name="remember" checked /> Remember me
                    </label>
                    <a href="#">Forgot password?</a>
                </div>

                <div class="buttons">
                    <button type="submit" class="login-btn">Login</button>
                    <a href="${pageContext.request.contextPath}/register">
                        <button type="button" class="signup-btn">Signup</button>
                    </a>
                </div>

                <!-- Social login icons -->
                <div class="social">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-x-twitter"></i></a>
                    <a href="#"><i class="fab fa-whatsapp"></i></a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
