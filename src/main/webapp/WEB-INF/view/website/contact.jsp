<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact | ArogyaSoft</title>

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

        .contact-header {
            background: linear-gradient(135deg, #2980b9 0%, #6dd5fa 100%);
            color: #fff;
            padding: 100px 0;
            text-align: center;
        }

        .contact-header h1 {
            font-weight: 700;
        }

        .contact-section {
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

        .contact-form input,
        .contact-form textarea {
            border-radius: 10px;
            border: 1px solid #dfe6e9;
            padding: 10px 15px;
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            border-color: #1abc9c;
            box-shadow: 0 0 5px rgba(26, 188, 156, 0.3);
        }

        .btn-primary {
            background-color: #1abc9c;
            border: none;
            border-radius: 50px;
            padding: 10px 25px;
            transition: 0.3s;
        }

        .btn-primary:hover {
            background-color: #16a085;
        }

        .contact-info i {
            color: #1abc9c;
            font-size: 25px;
            margin-right: 15px;
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
                    <li class="nav-item"><a class="nav-link" href="service.jsp">Features</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
                    <li class="nav-item active"><a class="nav-link" href="contact.jsp">Contact</a></li>
                    <li class="nav-item">
                        <a class="btn btn-primary ml-2" href="login.jsp" style="border-radius:50px; padding:5px 20px;">
                            <i class="fas fa-sign-in-alt"></i> Login
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Header -->
    <header class="contact-header">
        <div class="container">
            <h1>Contact Us</h1>
            <p class="lead mt-3">We’re here to help you connect with better healthcare management.</p>
        </div>
    </header>

    <!-- Contact Section -->
    <section class="contact-section">
        <div class="container">
            <h2 class="text-center section-title">Get in Touch</h2>
            <div class="row mt-5">
                <!-- Contact Info -->
                <div class="col-md-5 mb-4">
                    <h5><i class="fas fa-map-marker-alt"></i> Office Address</h5>
                    <p> ArogyaSoft Technologies Pvt. Ltd.<br> Gurgaon, Haryana, India </p>

                    <h5 class="mt-4"><i class="fas fa-envelope"></i> Email</h5>
                    <p> support@arogyasoft.com </p>

                    <h5 class="mt-4"><i class="fas fa-phone-alt"></i> Phone</h5>
                    <p> +91 98765 43210 </p>

                    <h5 class="mt-4"><i class="fas fa-clock"></i> Working Hours</h5>
                    <p> Monday - Saturday: 9:00 AM – 6:00 PM </p>
                </div>

                <!-- Contact Form -->
                <div class="col-md-7">
                    <form class="contact-form" action="sendMessage" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="name">Full Name</label>
                                <input type="text" class="form-control" name="name" id="name" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="email">Email Address</label>
                                <input type="email" class="form-control" name="email" id="email" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" class="form-control" name="subject" id="subject" required>
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea class="form-control" name="message" id="message" rows="5" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-paper-plane"></i> Send Message
                        </button>
                    </form>
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
