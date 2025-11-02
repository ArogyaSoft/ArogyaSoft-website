<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="ArogyaSoft – Smart Lab & Patient Management Software" />
    <meta name="keywords" content="ArogyaSoft, Lab Management, Patient Management, Healthcare Software, Medical Reports, Clinic Automation" />
    <meta name="author" content="ArogyaSoft Technologies" />

    <title>Features | ArogyaSoft - Smart Lab & Patient Management</title>

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

        /* Glassmorphism Cards */
        .glass-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 20px;
            padding: 2.5rem;
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
                    <h1>⚡ Powerful Features</h1>
                    <p class="lead">Discover cutting-edge tools that transform healthcare automation</p>
                </div>
            </div>
        </div>
    </header>

    <!-- Features Section -->
    <section class="container">
        <div class="text-center mb-5">
            <span class="section-title">Complete Healthcare Solution</span>
            <p class="section-subtitle">Everything you need to run a modern diagnostic center</p>
        </div>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-user-injured"></i>
                    <h5>Patient Record Management</h5>
                    <p>Maintain comprehensive and secure patient histories, test details, and medical reports in one intelligent platform.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-vial"></i>
                    <h5>Automated Lab Test Tracking</h5>
                    <p>Monitor and manage ongoing tests with real-time updates and intelligent report generation.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-file-medical"></i>
                    <h5>Instant Report Generation</h5>
                    <p>Generate professional reports instantly with customizable templates and secure digital sharing.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-wallet"></i>
                    <h5>Smart Billing & Accounting</h5>
                    <p>Automated invoicing with integrated payment gateways and comprehensive financial analytics.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-cloud"></i>
                    <h5>Cloud Storage & Backup</h5>
                    <p>Enterprise-grade cloud infrastructure with automated backups ensuring zero data loss.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-mobile-alt"></i>
                    <h5>Multi-Device Access</h5>
                    <p>Seamless experience across mobile, tablet, and desktop with responsive design.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-envelope-open-text"></i>
                    <h5>Smart Notifications</h5>
                    <p>Automated email and SMS alerts with customizable templates for reports and appointments.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-shield-alt"></i>
                    <h5>Advanced Data Security</h5>
                    <p>Military-grade encryption with role-based access control and HIPAA compliance.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-headset"></i>
                    <h5>24/7 Expert Support</h5>
                    <p>Round-the-clock dedicated support team ensuring uninterrupted lab operations.</p>
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