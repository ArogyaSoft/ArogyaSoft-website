<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About | ArogyaSoft</title>

    <!-- Bootstrap & Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <style>
        body {
            font-family: 'Poppins', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #2c3e50;
            background-color: #f9fafc;
        }

        .navbar {
            background: #ffffff;
            box-shadow: 0 3px 15px rgba(0,0,0,0.05);
        }

        .navbar-brand img {
            height: 50px;
        }

        .nav-link {
            color: #2c3e50 !important;
            font-weight: 500;
        }

        .nav-link:hover {
            color: #1abc9c !important;
        }

        .about-header {
            background: linear-gradient(135deg, #2980b9 0%, #6dd5fa 100%);
            color: #fff;
            padding: 100px 0;
            text-align: center;
        }

        .about-header h1 {
            font-weight: 700;
        }

        .about-section {
            padding: 60px 0;
        }

        .section-title {
            font-weight: 700;
            margin-bottom: 30px;
            position: relative;
        }

        .section-title::after {
            content: '';
            display: block;
            width: 60px;
            height: 4px;
            background: #1abc9c;
            margin: 10px auto;
            border-radius: 2px;
        }

        .about-icon {
            font-size: 40px;
            color: #1abc9c;
            margin-bottom: 20px;
        }

        .footer {
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 30px 0;
            margin-top: 60px;
        }

        .footer a {
            color: #1abc9c;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <img src="images/arogyasoft-logo.png" alt="ArogyaSoft Logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarArogya">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarArogya">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="service">Features</a></li>
                    <li class="nav-item active"><a class="nav-link" href="about-us">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
                    <li class="nav-item">
                        <a class="btn btn-primary ml-2" href="login" style="border-radius:50px; padding:5px 20px;">
                            <i class="fas fa-sign-in-alt"></i> Login
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <header class="about-header">
        <div class="container">
            <h1>About ArogyaSoft</h1>
            <p class="lead mt-3">Smart. Secure. Simplified Healthcare Management.</p>
        </div>
    </header>

    <!-- About Content -->
    <section class="about-section">
        <div class="container">
            <h2 class="text-center section-title">Who We Are</h2>
            <p class="text-center w-75 mx-auto">
                <strong>ArogyaSoft</strong> is an innovative health management software solution developed to streamline laboratory operations and patient management.
                We empower diagnostic centers, hospitals, and clinics to automate workflows, reduce manual errors, and enhance patient care using smart digital solutions.
            </p>

            <div class="row text-center mt-5">
                <div class="col-md-4">
                    <i class="fas fa-stethoscope about-icon"></i>
                    <h5>Our Mission</h5>
                    <p>To revolutionize healthcare management by providing efficient, secure, and user-friendly digital solutions for every healthcare institution.</p>
                </div>
                <div class="col-md-4">
                    <i class="fas fa-heartbeat about-icon"></i>
                    <h5>Our Vision</h5>
                    <p>To build a future where healthcare organizations operate seamlessly with technology that simplifies management and enhances patient experience.</p>
                </div>
                <div class="col-md-4">
                    <i class="fas fa-users about-icon"></i>
                    <h5>Our Values</h5>
                    <p>Innovation, Integrity, and Impact — we believe in building solutions that truly make a difference in people’s lives.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Why Choose Us -->
    <section class="bg-light py-5">
        <div class="container text-center">
            <h2 class="section-title">Why Choose ArogyaSoft?</h2>
            <div class="row">
                <div class="col-md-4">
                    <i class="fas fa-cogs about-icon"></i>
                    <h5>Automation & Efficiency</h5>
                    <p>Automate daily lab operations, patient management, and billing — reducing workload and boosting accuracy.</p>
                </div>
                <div class="col-md-4">
                    <i class="fas fa-shield-alt about-icon"></i>
                    <h5>Data Security</h5>
                    <p>Your data is protected with enterprise-grade security, ensuring confidentiality and compliance with medical standards.</p>
                </div>
                <div class="col-md-4">
                    <i class="fas fa-chart-line about-icon"></i>
                    <h5>Scalable & Reliable</h5>
                    <p>Whether you manage a small clinic or a large hospital, ArogyaSoft scales seamlessly to your needs.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer text-center">
        <div class="container">
            <p class="mb-0">© 2025 ArogyaSoft. All rights reserved. | <a href="#">www.arogyasoft.com</a></p>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
