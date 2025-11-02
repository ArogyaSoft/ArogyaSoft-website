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
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
            color: #1a1a1a;
            background-color: #ffffff;
            overflow-x: hidden;
        }

        /* Modern Navbar */
        .navbar {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            box-shadow: 0 1px 0 rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
        }

        .navbar.scrolled {
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
        }

        .navbar-brand img {
            height: 45px;
            transition: transform 0.3s ease;
        }

        .navbar-brand:hover img {
            transform: scale(1.05);
        }

        .nav-link {
            color: #1a1a1a !important;
            font-weight: 500;
            font-size: 0.95rem;
            position: relative;
            transition: color 0.3s ease;
        }

        .nav-link::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 0;
            height: 2px;
            background: linear-gradient(90deg, #667eea 0%, #764ba2 100%);
            transition: width 0.3s ease;
        }

        .nav-link:hover::after {
            width: 80%;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(-45deg, #667eea, #764ba2, #f093fb, #4facfe);
            background-size: 400% 400%;
            animation: gradientShift 15s ease infinite;
            color: #ffffff;
            padding: 120px 0 100px;
            position: relative;
            overflow: hidden;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23ffffff' fill-opacity='0.05'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
            opacity: 0.3;
        }

        .hero-content {
            position: relative;
            z-index: 1;
        }

        .hero h1 {
            font-size: 3.5rem;
            font-weight: 800;
            margin-bottom: 1.5rem;
            animation: fadeInUp 1s ease;
            line-height: 1.2;
        }

        .hero p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
            opacity: 0.95;
            animation: fadeInUp 1s ease 0.2s backwards;
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Section Styling */
        section {
            padding: 80px 0;
        }

        .section-title {
            font-size: 2.5rem;
            font-weight: 800;
            color: #1a1a1a;
            margin-bottom: 1rem;
            position: relative;
            display: inline-block;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 60px;
            height: 4px;
            background: linear-gradient(90deg, #667eea, #764ba2);
            border-radius: 2px;
        }

        .section-subtitle {
            font-size: 1.1rem;
            color: #666;
            margin-bottom: 3rem;
        }

        /* Job Cards */
        .job-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 20px;
            padding: 2.5rem;
            transition: all 0.4s ease;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.08);
            height: 100%;
            text-align: center;
        }

        .job-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 60px rgba(102, 126, 234, 0.3);
            background: rgba(255, 255, 255, 0.9);
        }

        .job-card i {
            font-size: 3rem;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1.5rem;
            display: block;
            transition: transform 0.5s ease;
        }

        .job-card:hover i {
            transform: scale(1.15) rotate(5deg);
        }

        .job-card h5 {
            font-weight: 700;
            color: #1a1a1a;
            margin-bottom: 1rem;
            font-size: 1.25rem;
        }

        .job-card p {
            color: #666;
            line-height: 1.6;
            margin-bottom: 1.5rem;
        }

        .btn-modern {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            font-weight: 600;
            border-radius: 50px;
            padding: 12px 35px;
            border: none;
            transition: all 0.3s ease;
            display: inline-block;
        }

        .btn-modern:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.4);
            color: white;
        }

        /* Form Section */
        .form-section {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }

        .form-container {
            background: white;
            border-radius: 20px;
            padding: 3rem;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
        }

        .form-control, .form-control-file {
            border-radius: 10px;
            border: 2px solid #e0e0e0;
            padding: 12px 15px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
        }

        select.form-control {
            appearance: none;
            background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'%3E%3Cpath fill='%23667eea' d='M6 9L1 4h10z'/%3E%3C/svg%3E");
            background-repeat: no-repeat;
            background-position: right 15px center;
            padding-right: 40px;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            .section-title {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <%@ include file="common-navbar.jsp" %>

    <!-- Hero Section -->
    <header>
        <div class="hero">
            <div class="container hero-content">
                <div class="text-center">
                    <h1>🚀 Join ArogyaSoft</h1>
                    <p class="lead">Empowering Healthcare through Technology & Innovation</p>
                </div>
            </div>
        </div>
    </header>

    <!-- Career Openings -->
    <section class="container">
        <div class="text-center mb-5">
            <span class="section-title">Current Openings</span>
            <p class="section-subtitle">Build the future of healthcare technology with us</p>
        </div>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="job-card">
                    <i class="fas fa-code"></i>
                    <h5>Java Backend Developer</h5>
                    <p>Build secure and scalable healthcare APIs using Spring Boot and MySQL.</p>
                    <a href="#apply" class="btn-modern">Apply Now</a>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="job-card">
                    <i class="fas fa-laptop-code"></i>
                    <h5>ReactJS Frontend Developer</h5>
                    <p>Create modern and user-friendly dashboards for healthcare professionals.</p>
                    <a href="#apply" class="btn-modern">Apply Now</a>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="job-card">
                    <i class="fas fa-users"></i>
                    <h5>Intern - Software Development</h5>
                    <p>Gain real-world experience by working on live healthcare modules.</p>
                    <a href="#apply" class="btn-modern">Apply Now</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Apply Form -->
    <section class="form-section" id="apply">
        <div class="container">
            <div class="text-center mb-5">
                <span class="section-title">Apply Now</span>
                <p class="section-subtitle">Take the first step towards an exciting career</p>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="form-container">
                        <form action="submitCareerForm" method="post" enctype="multipart/form-data">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="name" style="font-weight: 600; color: #1a1a1a;">Full Name</label>
                                    <input type="text" name="name" id="name" class="form-control" placeholder="Enter your full name" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="email" style="font-weight: 600; color: #1a1a1a;">Email</label>
                                    <input type="email" name="email" id="email" class="form-control" placeholder="Enter your email" required>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="position" style="font-weight: 600; color: #1a1a1a;">Position Applying For</label>
                                    <select name="position" id="position" class="form-control" required>
                                        <option value="">Select a role</option>
                                        <option>Java Backend Developer</option>
                                        <option>ReactJS Frontend Developer</option>
                                        <option>Intern - Software Development</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="resume" style="font-weight: 600; color: #1a1a1a;">Upload Resume</label>
                                    <input type="file" name="resume" id="resume" class="form-control-file" required style="padding-top: 10px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="message" style="font-weight: 600; color: #1a1a1a;">Cover Letter</label>
                                <textarea name="message" id="message" rows="4" class="form-control" placeholder="Tell us about yourself..."></textarea>
                            </div>
                            <button type="submit" class="btn-modern btn-block mt-4" style="padding: 15px;">
                                <i class="fas fa-paper-plane"></i> Submit Application
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <%@ include file="common-footer.jsp" %>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>