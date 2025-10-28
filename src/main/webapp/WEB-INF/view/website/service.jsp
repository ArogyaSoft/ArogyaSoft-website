<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="ArogyaSoft – Revolutionizing Lab & Patient Management." />
    <meta name="keywords" content="ArogyaSoft, Lab Management, Patient Management, Healthcare Software, Medical Reports, Clinic Automation, Lab Test Tracking" />
    <meta name="author" content="ArogyaSoft Technologies" />

    <title>ArogyaSoft | Smart Lab & Patient Management</title>

    <!-- Bootstrap & Font Awesome -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link rel="stylesheet" href="css/style.css" />

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

        .hero {
            background: linear-gradient(135deg, #2980b9 0%, #6dd5fa 100%);
            color: #ffffff;
            padding: 100px 0;
            text-shadow: 0px 1px 3px rgba(0,0,0,0.2);
        }

        .btn-light {
            background-color: #ffffff;
            color: #2980b9;
            font-weight: 600;
            border-radius: 50px;
            padding: 10px 25px;
            transition: 0.3s;
        }

        .btn-light:hover {
            background-color: #1abc9c;
            color: white;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        .section-title {
            margin-bottom: 40px;
            font-weight: 700;
            color: #2c3e50;
            position: relative;
        }

        .section-title::after {
            content: '';
            display: block;
            width: 60px;
            height: 4px;
            background: #1abc9c;
            margin: 10px auto 0 auto;
            border-radius: 2px;
        }

        .card {
            border: none;
            border-radius: 20px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            background: #ffffff;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.12);
        }

        .card-title {
            color: #2c3e50;
            font-weight: 600;
            margin-top: 15px;
        }

        .card-text {
            color: #7f8c8d;
            font-size: 0.95rem;
        }

        .footer {
            background-color: #2c3e50;
            color: #ecf0f1;
            padding: 30px 0;
        }

        .footer a {
            color: #1abc9c;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        #backToTop {
            position: fixed;
            bottom: 30px;
            right: 20px;
            display: none;
            background: #1abc9c;
            color: white;
            border: none;
            padding: 12px 16px;
            border-radius: 50%;
            z-index: 999;
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
            transition: 0.3s;
        }

        #backToTop:hover {
            background: #16a085;
        }
    </style>

</head>
<body>

    <!-- Navbar -->
    <%@ include file="common-navbar.jsp" %>


    <!-- Hero Section -->
    <header>
        <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel" data-interval="5000">
            <ol class="carousel-indicators">
                <li data-target="#heroCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#heroCarousel" data-slide-to="1"></li>
                <li data-target="#heroCarousel" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <div class="hero d-flex align-items-center text-center">
                        <div class="container">
                            <h1 class="display-4 font-weight-bold">🚀 Introducing ArogyaSoft</h1>
                            <p class="lead">Revolutionizing Lab & Patient Management for the Modern Era</p>
                            <a href="contact.jsp" class="btn btn-light mt-3">Request Demo</a>
                        </div>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item">
                    <div class="hero d-flex align-items-center text-center">
                        <div class="container">
                            <h1 class="display-4 font-weight-bold">Smart Lab Management</h1>
                            <p class="lead">Automate test tracking, generate instant reports, and manage billing seamlessly.</p>
                            <a href="service.jsp" class="btn btn-light mt-3">Explore Features</a>
                        </div>
                    </div>
                </div>

                <!-- Slide 3 -->
                <div class="carousel-item">
                    <div class="hero d-flex align-items-center text-center">
                        <div class="container">
                            <h1 class="display-4 font-weight-bold">Empowering Healthcare</h1>
                            <p class="lead">Streamline care and boost efficiency with ArogyaSoft.</p>
                            <a href="about.jsp" class="btn btn-light mt-3">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Carousel Controls -->
            <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            </a>
            <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
            </a>
        </div>
    </header>

    <section class="py-5 bg-light">
      <div class="container">
        <div class="row align-items-center">

          <!-- Text Section -->
          <div class="col-md-6">
            <h2 class="fw-bold mb-4 text-md-start text-center"
                style="font-weight: 800; font-size: 2 rem; letter-spacing: 0.5px; color: #212529;">
              Welcome to <span class="text-primary" style="font-weight: 900;">ArogySoft</span>
            </h2>

            <p class="text-muted text-justify" style="text-align: justify; line-height: 1.8;">
              <strong>ArogySoft</strong> is an innovative health management software that helps laboratories and healthcare centers simplify their operations with technology.
              Our platform is designed to automate <strong>patient registration, lab test management, billing, and reporting</strong> — all from a single dashboard.
            </p>
            <p class="text-muted text-justify" style="text-align: justify; line-height: 1.8;">
              Since its inception, ArogySoft has focused on improving efficiency, ensuring data security, and enhancing patient experience with digital healthcare solutions.
              Labs can easily manage data, generate accurate reports, and offer patients convenient access to their results online.
            </p>
            <p class="text-muted text-justify" style="text-align: justify; line-height: 1.8;">
              With ArogySoft, you can bring your diagnostic center into the digital era with <strong>cloud-based access, real-time reports,</strong> and a user-friendly interface built for healthcare professionals.
            </p>

          </div>

          <!-- Image Section -->
          <div class="col-md-6 text-center mt-4 mt-md-0">
            <img src="https://cdn.pixabay.com/photo/2016/03/31/19/14/doctor-1295581_1280.png"
                 alt="Doctor using software"
                 class="img-fluid rounded-4 shadow-sm"
                 style="max-height: 400px;">
          </div>

        </div>
      </div>
    </section>


    <!-- Features Section -->
    <section class="container my-5">
        <h2 class="text-center section-title">Core Features</h2>
        <div class="row text-center">
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm rounded">
                    <div class="card-body">
                        <i class="fas fa-user-injured fa-3x mb-3 text-primary"></i>
                        <h5 class="card-title">Patient Record Management</h5>
                        <p class="card-text">Digitally manage patient details, history, and reports securely.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm rounded">
                    <div class="card-body">
                        <i class="fas fa-vial fa-3x mb-3 text-success"></i>
                        <h5 class="card-title">Lab Test Tracking</h5>
                        <p class="card-text">Track and automate lab tests, results, and progress in real-time.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm rounded">
                    <div class="card-body">
                        <i class="fas fa-file-medical fa-3x mb-3 text-warning"></i>
                        <h5 class="card-title">Instant Report Generation</h5>
                        <p class="card-text">Generate accurate test and billing reports instantly for patients.</p>
                    </div>
                </div>
            </div>

            <!-- Additional Features -->
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm rounded">
                    <div class="card-body">
                        <i class="fas fa-wallet fa-3x mb-3 text-info"></i>
                        <h5 class="card-title">Billing & Inventory</h5>
                        <p class="card-text">Simplify billing, inventory tracking, and payment management.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm rounded">
                    <div class="card-body">
                        <i class="fas fa-shield-alt fa-3x mb-3 text-danger"></i>
                        <h5 class="card-title">Data Security</h5>
                        <p class="card-text">Ensure secure, compliant handling of sensitive medical data.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow-sm rounded">
                    <div class="card-body">
                        <i class="fas fa-mobile-alt fa-3x mb-3 text-secondary"></i>
                        <h5 class="card-title">Multi-Device Access</h5>
                        <p class="card-text">Access your dashboard from mobile, tablet, or desktop devices.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5" style="background-color: #f9fafc;">
        <div class="container text-center">
            <h2 class="section-title">What Our Clients Say</h2>
            <div class="row mt-4">
                <div class="col-md-4 mb-4">
                    <div class="card border-0 text-white shadow-lg"
                         style="background: linear-gradient(135deg, #6dd5fa, #2980b9); border-radius: 20px;">
                        <div class="card-body p-4">
                            <i class="fas fa-quote-left fa-2x mb-3"></i>
                            <p>"ArogyaSoft has transformed the way we manage lab operations. Reports are instant and accurate!"</p>
                            <h6 class="mt-3 font-weight-bold">Dr. Meena Sharma</h6>
                            <small>City Diagnostic Center</small>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-4">
                    <div class="card border-0 text-white shadow-lg"
                         style="background: linear-gradient(135deg, #00c6ff, #0072ff); border-radius: 20px;">
                        <div class="card-body p-4">
                            <i class="fas fa-quote-left fa-2x mb-3"></i>
                            <p>"Our billing and patient tracking became 3x faster. Highly recommended for any healthcare setup."</p>
                            <h6 class="mt-3 font-weight-bold">Dr. Rajesh Kumar</h6>
                            <small>HealthPlus Labs</small>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-4">
                    <div class="card border-0 text-white shadow-lg"
                         style="background: linear-gradient(135deg, #11998e, #38ef7d); border-radius: 20px;">
                        <div class="card-body p-4">
                            <i class="fas fa-quote-left fa-2x mb-3"></i>
                            <p>"The best part is data security and cloud access — I can manage everything from my mobile!"</p>
                            <h6 class="mt-3 font-weight-bold">Dr. Neha Patel</h6>
                            <small>MedCare Diagnostics</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="py-5 bg-light">
      <div class="container">
        <h2 class="text-center section-title">Why Choose ArogyaSoft?</h2>
        <div class="row mt-4">
          <div class="col-md-4 text-center mb-4">
            <i class="fas fa-clock fa-3x text-primary mb-3"></i>
            <h5>Faster Operations</h5>
            <p>Automate daily tasks and save time for both patients and staff.</p>
          </div>
          <div class="col-md-4 text-center mb-4">
            <i class="fas fa-lock fa-3x text-success mb-3"></i>
            <h5>Secure Data</h5>
            <p>We prioritize patient privacy with encrypted storage and access control.</p>
          </div>
          <div class="col-md-4 text-center mb-4">
            <i class="fas fa-headset fa-3x text-warning mb-3"></i>
            <h5>24/7 Support</h5>
            <p>Our technical team ensures smooth and continuous operation of your lab.</p>
          </div>
        </div>
      </div>
    </section>



    <!-- About Section -->
    <section class="bg-light py-5">
        <div class="container text-center">
            <h2 class="section-title">About ArogyaSoft</h2>
            <p class="lead">ArogyaSoft is an innovative healthcare software designed to streamline lab and patient management. Our mission is to empower clinics, hospitals, and diagnostic centers with smart, efficient, and secure digital tools — improving patient experience and operational excellence.</p>
        </div>
    </section>

    <!-- Footer -->
    <%@ include file="common-footer.jsp" %>

</body>
</html>
