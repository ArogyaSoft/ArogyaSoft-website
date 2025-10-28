<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Careers | ArogyaSoft</title>

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

        .career-header {
            background: linear-gradient(135deg, #2980b9 0%, #6dd5fa 100%);
            color: #fff;
            padding: 100px 0;
            text-align: center;
        }

        .career-header h1 {
            font-weight: 700;
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

        .job-card {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.05);
            transition: transform 0.3s ease;
        }

        .job-card:hover {
            transform: translateY(-5px);
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
    <%@ include file="common-navbar.jsp" %>

    <!-- Header -->
    <header class="career-header">
        <div class="container">
            <h1>Join ArogyaSoft</h1>
            <p class="lead mt-3">Empowering Healthcare through Technology & Innovation</p>
        </div>
    </header>

    <!-- Career Openings -->
    <section class="py-5">
        <div class="container text-center">
            <h2 class="section-title">Current Openings</h2>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="job-card p-4 h-100">
                        <i class="fas fa-code fa-3x text-primary mb-3"></i>
                        <h5>Java Backend Developer</h5>
                        <p>Build secure and scalable healthcare APIs using Spring Boot and MySQL.</p>
                        <a href="#apply" class="btn btn-primary mt-2">Apply Now</a>
                    </div>
                </div>

                <div class="col-md-4 mb-4">
                    <div class="job-card p-4 h-100">
                        <i class="fas fa-laptop-code fa-3x text-success mb-3"></i>
                        <h5>ReactJS Frontend Developer</h5>
                        <p>Create modern and user-friendly dashboards for healthcare professionals.</p>
                        <a href="#apply" class="btn btn-primary mt-2">Apply Now</a>
                    </div>
                </div>

                <div class="col-md-4 mb-4">
                    <div class="job-card p-4 h-100">
                        <i class="fas fa-users fa-3x text-warning mb-3"></i>
                        <h5>Intern - Software Development</h5>
                        <p>Gain real-world experience by working on live healthcare modules.</p>
                        <a href="#apply" class="btn btn-primary mt-2">Apply Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Apply Form -->
    <section class="py-5 bg-light" id="apply">
        <div class="container">
            <h2 class="text-center section-title">Apply Now</h2>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <form action="submitCareerForm" method="post" enctype="multipart/form-data">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="name">Full Name</label>
                                <input type="text" name="name" id="name" class="form-control" placeholder="Enter your full name" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="email">Email</label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="Enter your email" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="position">Position Applying For</label>
                                <select name="position" id="position" class="form-control" required>
                                    <option value="">Select a role</option>
                                    <option>Java Backend Developer</option>
                                    <option>ReactJS Frontend Developer</option>
                                    <option>Intern - Software Development</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="resume">Upload Resume</label>
                                <input type="file" name="resume" id="resume" class="form-control-file" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="message">Cover Letter</label>
                            <textarea name="message" id="message" rows="4" class="form-control" placeholder="Tell us about yourself..."></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block mt-3">
                            <i class="fas fa-paper-plane"></i> Submit Application
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <%@ include file="common-footer.jsp" %>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
