<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | ArogyaSoft</title>

    <!-- Bootstrap & Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>

    <style>
        body {
            font-family: 'Poppins', 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #2980b9 0%, #6dd5fa 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-card {
            background-color: #ffffff;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            padding: 40px 30px;
            width: 100%;
            max-width: 420px;
        }

        .login-card h3 {
            font-weight: 700;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 25px;
        }

        .form-control {
            border-radius: 50px;
            padding: 12px 20px;
        }

        .btn-primary {
            background-color: #1abc9c;
            border: none;
            border-radius: 50px;
            padding: 12px;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #16a085;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }

        .login-footer {
            text-align: center;
            margin-top: 15px;
            color: #7f8c8d;
        }

        .login-footer a {
            color: #2980b9;
            font-weight: 600;
        }

        .login-footer a:hover {
            text-decoration: underline;
        }

        .brand-logo {
            display: block;
            margin: 0 auto 20px;
            width: 90px;
        }
    </style>
</head>
<body>

    <div class="login-card">
        <img src="images/arogyasoft-logo.png" alt="ArogyaSoft Logo" class="brand-logo">
        <h3>Welcome Back 👋</h3>

        <form action="loginAction" method="post">
            <div class="form-group">
                <label for="username">Email or Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your email or username" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <button type="submit" class="btn btn-primary btn-block mt-3">
                <i class="fas fa-sign-in-alt"></i> Login
            </button>

            <div class="login-footer">
                <p class="mt-3 mb-1">Forgot your password? <a href="#">Reset here</a></p>
                <p>Don’t have an account? <a href="register.jsp">Register</a></p>
            </div>
        </form>
    </div>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
