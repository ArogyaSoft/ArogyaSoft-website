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

        /* Hero Section with Gradient Animation */
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

        /* Modern Buttons */
        .btn-modern {
            background: #ffffff;
            color: #667eea;
            font-weight: 600;
            border-radius: 50px;
            padding: 14px 40px;
            border: none;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            display: inline-block;
            position: relative;
            overflow: hidden;
            animation: fadeInUp 1s ease 0.4s backwards;
        }

        .btn-modern::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 0;
            height: 0;
            border-radius: 50%;
            background: linear-gradient(135deg, #667eea, #764ba2);
            transform: translate(-50%, -50%);
            transition: width 0.6s, height 0.6s;
        }

        .btn-modern span {
            position: relative;
            z-index: 1;
        }

        .btn-modern:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            color: #ffffff;
        }

        .btn-modern:hover::before {
            width: 300px;
            height: 300px;
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

        /* Glassmorphism Cards */
        .glass-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 20px;
            padding: 2rem;
            transition: all 0.4s ease;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.08);
            height: 100%;
        }

        .glass-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 60px rgba(102, 126, 234, 0.3);
            background: rgba(255, 255, 255, 0.9);
        }

        .glass-card i {
            font-size: 3rem;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1.5rem;
            display: block;
            transition: transform 0.5s ease;
        }

        .glass-card:hover i {
            transform: scale(1.15) rotate(5deg);
        }

        .glass-card h5 {
            font-weight: 700;
            color: #1a1a1a;
            margin-bottom: 1rem;
            font-size: 1.25rem;
        }

        .glass-card p {
            color: #666;
            line-height: 1.6;
            margin: 0;
        }

        /* Welcome Section with Image */
        .welcome-section {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }

        .welcome-img {
            animation: float 6s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        /* Testimonial Cards */
        .testimonial-card {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: 20px;
            padding: 2.5rem;
            color: white;
            position: relative;
            overflow: hidden;
            transition: transform 0.4s ease;
            height: 100%;
        }

        .testimonial-card::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
            transition: transform 0.6s ease;
        }

        .testimonial-card:hover::before {
            transform: translate(-25%, -25%);
        }

        .testimonial-card:hover {
            transform: translateY(-8px);
        }

        .testimonial-card i {
            font-size: 2.5rem;
            opacity: 0.3;
            margin-bottom: 1rem;
        }

        .testimonial-card p {
            font-size: 1rem;
            line-height: 1.8;
            margin-bottom: 1.5rem;
        }

        /* Stats Section */
        .stats-section {
            background: #1a1a1a;
            color: white;
        }

        .stat-item {
            text-align: center;
            padding: 2rem;
        }

        .stat-number {
            font-size: 3rem;
            font-weight: 800;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 0.5rem;
            display: block;
        }

        .stat-label {
            font-size: 1.1rem;
            color: rgba(255, 255, 255, 0.8);
        }

        /* Why Choose Section */
        .why-choose-card {
            text-align: center;
            padding: 2rem;
            transition: transform 0.3s ease;
        }

        .why-choose-card i {
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .why-choose-card:hover {
            transform: translateY(-10px);
        }

        .why-choose-card h5 {
            font-weight: 700;
            margin-bottom: 1rem;
            color: #1a1a1a;
        }

        /* CTA Section */
        .cta-section {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }

        .cta-section::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
            animation: rotate 20s linear infinite;
        }

        @keyframes rotate {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        .cta-content {
            position: relative;
            z-index: 1;
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
                    <h1>🚀 Transform Your Healthcare Operations</h1>
                    <p class="lead">Next-generation lab & patient management powered by intelligent automation</p>
                    <a href="contact.jsp" class="btn-modern"><span>Get Started Free</span></a>
                </div>
            </div>
        </div>
    </header>

    <!-- Welcome Section -->
    <section class="welcome-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 mb-4 mb-md-0">
                    <div class="mb-3">
                        <span class="section-title">Welcome to ArogyaSoft</span>
                    </div>
                    <p class="section-subtitle">Empowering healthcare with intelligent technology</p>
                    <p style="color: #4a5568; line-height: 1.8; margin-bottom: 1.5rem;">
                        <strong>ArogyaSoft</strong> revolutionizes healthcare management with cutting-edge technology.
                        Our platform seamlessly integrates <strong>patient registration, lab test management, billing, and reporting</strong>
                        into one powerful dashboard.
                    </p>
                    <p style="color: #4a5568; line-height: 1.8; margin-bottom: 1.5rem;">
                        Experience the future of healthcare with <strong>cloud-based access, real-time analytics,</strong>
                        and AI-powered insights designed for modern diagnostic centers.
                    </p>
                    <div class="mt-4">
                        <a href="about.jsp" class="btn btn-outline-dark" style="border-radius: 50px; padding: 10px 30px; font-weight: 600;">Learn More →</a>
                    </div>
                </div>

                <div class="col-md-6 text-center">
                    <img src="https://cdn.pixabay.com/photo/2016/03/31/19/14/doctor-1295581_1280.png"
                         alt="Doctor using software"
                         class="img-fluid welcome-img"
                         style="max-height: 450px; filter: drop-shadow(0 20px 40px rgba(0,0,0,0.15));">
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="stats-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <span class="stat-number">500+</span>
                        <p class="stat-label">Active Labs</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <span class="stat-number">1M+</span>
                        <p class="stat-label">Tests Processed</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <span class="stat-number">99.9%</span>
                        <p class="stat-label">Uptime</p>
                    </div>
                </div>
                <div class="col-md-3 col-6">
                    <div class="stat-item">
                        <span class="stat-number">24/7</span>
                        <p class="stat-label">Support</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="container">
        <div class="text-center mb-5">
            <span class="section-title">Core Features</span>
            <p class="section-subtitle">Everything you need to run a modern diagnostic center</p>
        </div>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-user-injured"></i>
                    <h5>Smart Patient Records</h5>
                    <p>Intelligent patient management with AI-powered insights and secure cloud storage.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-vial"></i>
                    <h5>Real-Time Test Tracking</h5>
                    <p>Monitor lab tests with live updates and automated workflow management.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-file-medical"></i>
                    <h5>Instant Reports</h5>
                    <p>Generate professional reports instantly with customizable templates.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-wallet"></i>
                    <h5>Smart Billing</h5>
                    <p>Automated invoicing with integrated payment gateways and inventory tracking.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-shield-alt"></i>
                    <h5>Military-Grade Security</h5>
                    <p>End-to-end encryption with HIPAA-compliant data protection.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-mobile-alt"></i>
                    <h5>Cross-Platform Access</h5>
                    <p>Seamless experience across all devices with progressive web technology.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section style="background: #f8f9fa;">
        <div class="container">
            <div class="text-center mb-5">
                <span class="section-title">Loved by Healthcare Professionals</span>
                <p class="section-subtitle">See what our clients have to say</p>
            </div>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="testimonial-card">
                        <i class="fas fa-quote-left"></i>
                        <p>"Game-changer for our lab! Reports are lightning-fast and our patients love the digital experience."</p>
                        <h6 class="font-weight-bold mb-1">Dr. Meena Sharma</h6>
                        <small style="opacity: 0.8;">City Diagnostic Center</small>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="testimonial-card" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
                        <i class="fas fa-quote-left"></i>
                        <p>"Efficiency increased by 300%! The automation features are absolutely incredible for our workflow."</p>
                        <h6 class="font-weight-bold mb-1">Dr. Rajesh Kumar</h6>
                        <small style="opacity: 0.8;">HealthPlus Labs</small>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="testimonial-card" style="background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%);">
                        <i class="fas fa-quote-left"></i>
                        <p>"The mobile access is perfect! I can manage everything on-the-go with complete peace of mind."</p>
                        <h6 class="font-weight-bold mb-1">Dr. Neha Patel</h6>
                        <small style="opacity: 0.8;">MedCare Diagnostics</small>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Why Choose Section -->
    <section class="container">
        <div class="text-center mb-5">
            <span class="section-title">Why Choose ArogyaSoft?</span>
            <p class="section-subtitle">Built for the modern healthcare landscape</p>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="why-choose-card">
                    <i class="fas fa-rocket"></i>
                    <h5>Lightning Fast</h5>
                    <p>Optimized performance with sub-second response times for all operations.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="why-choose-card">
                    <i class="fas fa-lock"></i>
                    <h5>Fort Knox Security</h5>
                    <p>Bank-level encryption protecting your sensitive medical data 24/7.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="why-choose-card">
                    <i class="fas fa-headset"></i>
                    <h5>Always Here</h5>
                    <p>Round-the-clock expert support ensuring your operations never stop.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="container cta-content">
            <div class="text-center">
                <h2 style="font-size: 2.5rem; font-weight: 800; margin-bottom: 1.5rem;">Ready to Transform Your Lab?</h2>
                <p style="font-size: 1.2rem; margin-bottom: 2rem; opacity: 0.95;">Join hundreds of healthcare providers already using ArogyaSoft</p>
                <a href="contact.jsp" class="btn-modern"><span>Start Free Trial</span></a>
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