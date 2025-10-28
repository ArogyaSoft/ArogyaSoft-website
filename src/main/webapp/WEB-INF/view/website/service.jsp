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
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f9fafc;
            color: #2c3e50;
        }

        .navbar {
            background: #ffffff;
            box-shadow: 0 2px 15px rgba(0,0,0,0.05);
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

        /* Section Title */
        .section-title {
            font-weight: 700;
            margin-bottom: 40px;
            color: #2c3e50;
            position: relative;
            text-transform: uppercase;
        }

        .section-title::after {
            content: '';
            width: 70px;
            height: 4px;
            background-color: #1abc9c;
            display: block;
            margin: 10px auto 0;
            border-radius: 2px;
        }

        /* Feature Section */
        .feature-section {
            background: linear-gradient(135deg, #f8fbff, #ecf9f6);
            padding: 80px 0;
        }

        /* Equal-height Feature Cards */
        .feature-card {
            background: #fff;
            border-radius: 20px;
            transition: all 0.4s ease;
            box-shadow: 0 2px 15px rgba(0,0,0,0.05);
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .feature-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.15);
        }

        .feature-icon {
            font-size: 3rem;
            margin-bottom: 15px;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .feature-card:hover .feature-icon {
            transform: scale(1.2);
            color: #1abc9c;
        }

        .feature-card h5 {
            font-weight: 600;
            margin-bottom: 10px;
        }

        .feature-card p {
            color: #7f8c8d;
            font-size: 0.95rem;
            line-height: 1.6;
        }

        /* Footer */
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
    </style>
</head>
<body>

    <!-- Navbar -->
    <%@ include file="common-navbar.jsp" %>

    <!-- Features Section -->
    <section class="feature-section">
        <div class="container">
            <h2 class="section-title text-center">Powerful Features</h2>
            <div class="row mt-5">

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-user-injured feature-icon text-primary"></i>
                        <h5>Patient Record Management</h5>
                        <p>Maintain comprehensive and secure patient histories, test details, and medical reports in one place.</p>
                    </div>
                </div>

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-vials feature-icon text-success"></i>
                        <h5>Automated Lab Test Tracking</h5>
                        <p>Monitor and manage ongoing tests efficiently with automatic updates and report generation.</p>
                    </div>
                </div>

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-file-medical feature-icon text-warning"></i>
                        <h5>Instant Report Generation</h5>
                        <p>Generate and share reports instantly with patients through secure digital links.</p>
                    </div>
                </div>

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-wallet feature-icon text-info"></i>
                        <h5>Billing & Accounting</h5>
                        <p>Automate invoices, payments, and track outstanding bills — saving time and reducing manual errors.</p>
                    </div>
                </div>

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-cloud feature-icon text-secondary"></i>
                        <h5>Cloud Storage & Backup</h5>
                        <p>Store all your data safely on the cloud with daily backups ensuring zero data loss.</p>
                    </div>
                </div>

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-mobile-alt feature-icon text-danger"></i>
                        <h5>Multi-Device Access</h5>
                        <p>Access your lab dashboard from mobile, tablet, or desktop — anytime, anywhere.</p>
                    </div>
                </div>

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-envelope-open-text feature-icon text-primary"></i>
                        <h5>Email & SMS Alerts</h5>
                        <p>Send automated alerts to patients and staff about reports, appointments, and billing.</p>
                    </div>
                </div>

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-shield-alt feature-icon text-success"></i>
                        <h5>Advanced Data Security</h5>
                        <p>Protect sensitive health data with encrypted storage and secure role-based access control.</p>
                    </div>
                </div>

                <div class="col-md-4 mb-4 d-flex">
                    <div class="feature-card text-center p-4 w-100">
                        <i class="fas fa-headset feature-icon text-warning"></i>
                        <h5>24/7 Expert Support</h5>
                        <p>Our team is available round-the-clock to ensure your lab runs smoothly and efficiently.</p>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Footer -->
    <%@ include file="common-footer.jsp" %>

</body>
</html>
