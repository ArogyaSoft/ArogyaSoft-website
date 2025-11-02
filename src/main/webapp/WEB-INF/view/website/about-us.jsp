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
            text-align: center;
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

        /* Content Section */
        .content-section {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }

        .content-box {
            background: white;
            border-radius: 20px;
            padding: 3rem;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
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
                    <h1>💡 About ArogyaSoft</h1>
                    <p class="lead">Smart. Secure. Simplified Healthcare Management.</p>
                </div>
            </div>
        </div>
    </header>

    <!-- About Content -->
    <section class="content-section">
        <div class="container">
            <div class="text-center mb-5">
                <span class="section-title">Who We Are</span>
                <p class="section-subtitle">Innovating healthcare management for the digital age</p>
            </div>
            <div class="content-box">
                <p style="color: #4a5568; line-height: 1.8; font-size: 1.1rem; text-align: center; max-width: 900px; margin: 0 auto;">
                    <strong>ArogyaSoft</strong> is an innovative health management software solution developed to streamline laboratory operations and patient management.
                    We empower diagnostic centers, hospitals, and clinics to automate workflows, reduce manual errors, and enhance patient care using smart digital solutions.
                    Our platform seamlessly integrates cutting-edge technology with healthcare expertise to deliver exceptional results.
                </p>
            </div>
        </div>
    </section>

    <!-- Mission, Vision, Values -->
    <section class="container">
        <div class="text-center mb-5">
            <span class="section-title">Our Purpose</span>
            <p class="section-subtitle">Driven by innovation, integrity, and impact</p>
        </div>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-stethoscope"></i>
                    <h5>Our Mission</h5>
                    <p>To revolutionize healthcare management by providing efficient, secure, and user-friendly digital solutions for every healthcare institution.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-heartbeat"></i>
                    <h5>Our Vision</h5>
                    <p>To build a future where healthcare organizations operate seamlessly with technology that simplifies management and enhances patient experience.</p>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="glass-card">
                    <i class="fas fa-users"></i>
                    <h5>Our Values</h5>
                    <p>Innovation, Integrity, and Impact — we believe in building solutions that truly make a difference in people's lives.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Why Choose Us -->
    <section style="background: #f8f9fa;">
        <div class="container">
            <div class="text-center mb-5">
                <span class="section-title">Why Choose ArogyaSoft?</span>
                <p class="section-subtitle">Built for the modern healthcare landscape</p>
            </div>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="glass-card">
                        <i class="fas fa-cogs"></i>
                        <h5>Automation & Efficiency</h5>
                        <p>Automate daily lab operations, patient management, and billing — reducing workload and boosting accuracy.</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="glass-card">
                        <i class="fas fa-shield-alt"></i>
                        <h5>Data Security</h5>
                        <p>Your data is protected with enterprise-grade security, ensuring confidentiality and compliance with medical standards.</p>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="glass-card">
                        <i class="fas fa-chart-line"></i>
                        <h5>Scalable & Reliable</h5>
                        <p>Whether you manage a small clinic or a large hospital, ArogyaSoft scales seamlessly to your needs.</p>
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