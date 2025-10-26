<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Nutan Tech Services - Explore our wide range of IT and digital services.">
    <meta name="keywords" content="Services, Web Development, Mobile Apps, Cloud, AI, UX Design">
    <meta name="author" content="Nutan Technologies">

    <title>Nutan Tech | Services</title>

    <!-- Bootstrap CSS & Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link rel="stylesheet" href="css/style.css" />

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333;
            background-color: #f5f6fa;
        }

        .navbar {
            background-color: #0b1d3a;
        }

        .navbar-brand img {
            height: 45px;
        }

        .nav-link {
            color: #fff !important;
            font-weight: 500;
        }

        .nav-link:hover {
            color: #00aaff !important;
        }

        .section-title {
            margin-top: 40px;
            margin-bottom: 40px;
            font-weight: 600;
            color: #0b1d3a;
        }

        .card {
            border: none;
            transition: transform 0.2s ease-in-out;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .card-title {
            color: #0b1d3a;
            font-weight: 600;
        }

        .footer {
            background-color: #0b1d3a;
            color: #ccc;
            padding: 20px 0;
        }

        .footer a {
            color: #00aaff;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        #backToTop {
            position: fixed;
            bottom: 30px;
            right: 20px;
            display: none;
            background: #00aaff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 50%;
            z-index: 999;
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark sticky-top">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">
            <img src="images/nutan-logo.png" alt="Nutan Logo" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nutanNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="nutanNavbar">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item active"><a class="nav-link" href="#">Services</a></li>
                <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Services Section -->
<section class="container my-5">
    <h2 class="text-center section-title">Our Services</h2>
    <div class="row text-center">

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-code fa-3x mb-3 text-primary"></i>
                    <h5 class="card-title">Web Development</h5>
                    <p class="card-text">Custom, scalable websites tailored to your business needs.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-mobile-alt fa-3x mb-3 text-success"></i>
                    <h5 class="card-title">Mobile Apps</h5>
                    <p class="card-text">iOS and Android app development for startups and enterprises.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-pencil-ruler fa-3x mb-3 text-warning"></i>
                    <h5 class="card-title">UI/UX Design</h5>
                    <p class="card-text">Modern and intuitive designs for a seamless user experience.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-cloud fa-3x mb-3 text-info"></i>
                    <h5 class="card-title">Cloud Integration</h5>
                    <p class="card-text">Migrate and scale with AWS, Azure, and cloud-native solutions.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-robot fa-3x mb-3 text-danger"></i>
                    <h5 class="card-title">AI & ML Solutions</h5>
                    <p class="card-text">Smart systems powered by data, automation, and intelligence.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-bullhorn fa-3x mb-3 text-secondary"></i>
                    <h5 class="card-title">Digital Marketing</h5>
                    <p class="card-text">Grow with SEO, content, ads & performance-driven strategies.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-shield-alt fa-3x mb-3 text-primary"></i>
                    <h5 class="card-title">Cybersecurity</h5>
                    <p class="card-text">Protect your systems with top-grade security solutions and audits.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-cogs fa-3x mb-3 text-success"></i>
                    <h5 class="card-title">DevOps Services</h5>
                    <p class="card-text">CI/CD pipelines, automation, and faster release cycles made easy.</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card h-100 shadow-sm rounded">
                <div class="card-body">
                    <i class="fas fa-chart-line fa-3x mb-3 text-warning"></i>
                    <h5 class="card-title">Business Intelligence</h5>
                    <p class="card-text">Data visualization and analytics dashboards for better decisions.</p>
                </div>
            </div>
        </div>

    </div>
</section>

<!-- Footer -->
<footer class="footer text-center">
    <div class="container">
        <p class="mb-0">© 2025 Nutan Tech. All rights reserved. | <a href="https://www.nutantech.com/" target="_blank">www.nutantech.com</a></p>
    </div>
</footer>

<!-- Back to Top Button -->
<button id="backToTop" title="Back to Top"><i class="fas fa-chevron-up"></i></button>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
