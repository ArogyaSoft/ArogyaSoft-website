<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQs | ArogyaSoft</title>

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

        /* FAQ Categories */
        .faq-categories {
            display: flex;
            gap: 1rem;
            margin-bottom: 3rem;
            flex-wrap: wrap;
            justify-content: center;
        }

        .category-btn {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(10px);
            border: 2px solid #e0e0e0;
            border-radius: 50px;
            padding: 10px 25px;
            font-weight: 600;
            color: #666;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .category-btn:hover,
        .category-btn.active {
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: white;
            border-color: transparent;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.3);
        }

        /* FAQ Accordion */
        .faq-accordion {
            max-width: 900px;
            margin: 0 auto;
        }

        .faq-item {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 15px;
            margin-bottom: 1.5rem;
            overflow: hidden;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
        }

        .faq-item:hover {
            box-shadow: 0 8px 25px rgba(102, 126, 234, 0.15);
        }

        .faq-question {
            padding: 1.5rem 2rem;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-weight: 600;
            color: #1a1a1a;
            transition: all 0.3s ease;
            user-select: none;
        }

        .faq-question:hover {
            background: rgba(102, 126, 234, 0.05);
        }

        .faq-question i {
            font-size: 1.2rem;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            transition: transform 0.3s ease;
        }

        .faq-item.active .faq-question i {
            transform: rotate(180deg);
        }

        .faq-answer {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.4s ease, padding 0.4s ease;
            padding: 0 2rem;
            color: #666;
            line-height: 1.8;
        }

        .faq-item.active .faq-answer {
            max-height: 500px;
            padding: 0 2rem 1.5rem;
        }

        /* Search Box */
        .search-box {
            max-width: 600px;
            margin: 0 auto 3rem;
            position: relative;
        }

        .search-box input {
            width: 100%;
            padding: 15px 50px 15px 20px;
            border-radius: 50px;
            border: 2px solid #e0e0e0;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .search-box input:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
            outline: none;
        }

        .search-box i {
            position: absolute;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
            color: #999;
        }

        /* Stats Section */
        .stats-section {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        }

        .stat-card {
            text-align: center;
            padding: 2rem;
        }

        .stat-card i {
            font-size: 3rem;
            background: linear-gradient(135deg, #667eea, #764ba2);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1rem;
        }

        .stat-card h4 {
            font-weight: 700;
            color: #1a1a1a;
            margin-bottom: 0.5rem;
        }

        .stat-card p {
            color: #666;
        }

        /* CTA Section */
        .cta-section {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 60px 0;
            text-align: center;
        }

        .btn-modern {
            background: #ffffff;
            color: #667eea;
            font-weight: 600;
            border-radius: 50px;
            padding: 14px 40px;
            border: none;
            transition: all 0.3s ease;
            display: inline-block;
        }

        .btn-modern:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            color: #667eea;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            .section-title {
                font-size: 2rem;
            }
            .faq-question {
                padding: 1.25rem 1.5rem;
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
                    <h1>❓ Frequently Asked Questions</h1>
                    <p class="lead">Find answers to common questions about ArogyaSoft</p>
                </div>
            </div>
        </div>
    </header>

    <!-- FAQ Section -->
    <section class="container">
        <div class="text-center mb-5">
            <span class="section-title">How Can We Help?</span>
            <p class="section-subtitle">Search or browse through our most common questions</p>
        </div>

        <!-- Search Box -->
        <div class="search-box">
            <input type="text" id="faqSearch" placeholder="Search your question...">
            <i class="fas fa-search"></i>
        </div>

        <!-- Category Filters -->
        <div class="faq-categories">
            <button class="category-btn active" data-category="all">All Questions</button>
            <button class="category-btn" data-category="general">General</button>
            <button class="category-btn" data-category="features">Features</button>
            <button class="category-btn" data-category="pricing">Pricing</button>
            <button class="category-btn" data-category="technical">Technical</button>
        </div>

        <!-- FAQ Accordion -->
        <div class="faq-accordion">
            <!-- General Questions -->
            <div class="faq-item" data-category="general">
                <div class="faq-question">
                    <span>What is ArogyaSoft?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    ArogyaSoft is a comprehensive lab and patient management software designed to streamline healthcare operations. It helps diagnostic centers, hospitals, and clinics manage patient records, lab tests, billing, and reporting efficiently in one secure platform.
                </div>
            </div>

            <div class="faq-item" data-category="general">
                <div class="faq-question">
                    <span>Who can use ArogyaSoft?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    ArogyaSoft is ideal for diagnostic centers, pathology labs, hospitals, clinics, and healthcare facilities of all sizes. Whether you're a small clinic or a large multi-location hospital chain, our platform scales to meet your needs.
                </div>
            </div>

            <!-- Features Questions -->
            <div class="faq-item" data-category="features">
                <div class="faq-question">
                    <span>What features does ArogyaSoft offer?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    ArogyaSoft offers patient record management, automated lab test tracking, instant report generation, smart billing & accounting, cloud storage & backup, multi-device access, smart notifications, advanced data security, and 24/7 expert support.
                </div>
            </div>

            <div class="faq-item" data-category="features">
                <div class="faq-question">
                    <span>Can I access ArogyaSoft from mobile devices?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    Yes! ArogyaSoft is fully responsive and works seamlessly across mobile phones, tablets, and desktop computers. You can manage your lab operations from anywhere, anytime.
                </div>
            </div>

            <!-- Pricing Questions -->
            <div class="faq-item" data-category="pricing">
                <div class="faq-question">
                    <span>Is there a free trial available?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    Yes, we offer a free trial period so you can explore all features and see how ArogyaSoft fits your needs. Contact our sales team to start your free trial today.
                </div>
            </div>

            <div class="faq-item" data-category="pricing">
                <div class="faq-question">
                    <span>What pricing plans do you offer?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    We offer flexible pricing plans based on your organization size and requirements. Our plans include monthly and annual subscriptions with different feature tiers. Contact us for detailed pricing information.
                </div>
            </div>

            <!-- Technical Questions -->
            <div class="faq-item" data-category="technical">
                <div class="faq-question">
                    <span>Is my data secure with ArogyaSoft?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    Absolutely! We use military-grade encryption and HIPAA-compliant security measures to protect your sensitive medical data. Our enterprise-grade cloud infrastructure ensures automated backups and zero data loss.
                </div>
            </div>

            <div class="faq-item" data-category="technical">
                <div class="faq-question">
                    <span>What kind of support do you provide?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    We provide 24/7 expert support through email, phone, and live chat. Our dedicated support team is always ready to help you with any questions or technical issues.
                </div>
            </div>

            <div class="faq-item" data-category="technical">
                <div class="faq-question">
                    <span>Can I integrate ArogyaSoft with existing systems?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    Yes, ArogyaSoft offers integration capabilities with various lab equipment, payment gateways, and other healthcare systems. Our team can help you with custom integrations based on your requirements.
                </div>
            </div>

            <div class="faq-item" data-category="general">
                <div class="faq-question">
                    <span>How long does implementation take?</span>
                    <i class="fas fa-chevron-down"></i>
                </div>
                <div class="faq-answer">
                    Implementation typically takes 1-2 weeks depending on your organization size and complexity. Our team provides complete onboarding support, training, and data migration assistance to ensure a smooth transition.
                </div>
            </div>
        </div>
    </section>

    <!-- Stats Section -->
    <section class="stats-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="stat-card">
                        <i class="fas fa-question-circle"></i>
                        <h4>100+</h4>
                        <p>Questions Answered</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="stat-card">
                        <i class="fas fa-clock"></i>
                        <h4>< 2 Hours</h4>
                        <p>Average Response Time</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="stat-card">
                        <i class="fas fa-users"></i>
                        <h4>500+</h4>
                        <p>Happy Customers</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="container">
            <h2 style="font-size: 2rem; font-weight: 700; margin-bottom: 1rem;">Still Have Questions?</h2>
            <p style="font-size: 1.1rem; margin-bottom: 2rem; opacity: 0.95;">Our support team is here to help you</p>
            <a href="contact" class="btn-modern">Contact Us</a>
        </div>
    </section>

    <!-- Footer -->
    <%@ include file="common-footer.jsp" %>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        // FAQ Accordion Toggle
        document.querySelectorAll('.faq-question').forEach(question => {
            question.addEventListener('click', () => {
                const faqItem = question.parentElement;
                const isActive = faqItem.classList.contains('active');

                // Close all other items
                document.querySelectorAll('.faq-item').forEach(item => {
                    item.classList.remove('active');
                });

                // Toggle current item
                if (!isActive) {
                    faqItem.classList.add('active');
                }
            });
        });

        // Category Filter
        document.querySelectorAll('.category-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                // Update active button
                document.querySelectorAll('.category-btn').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');

                const category = btn.getAttribute('data-category');

                // Filter FAQ items
                document.querySelectorAll('.faq-item').forEach(item => {
                    if (category === 'all' || item.getAttribute('data-category') === category) {
                        item.style.display = 'block';
                    } else {
                        item.style.display = 'none';
                        item.classList.remove('active');
                    }
                });
            });
        });

        // Search Functionality
        document.getElementById('faqSearch').addEventListener('input', function(e) {
            const searchTerm = e.target.value.toLowerCase();

            document.querySelectorAll('.faq-item').forEach(item => {
                const question = item.querySelector('.faq-question span').textContent.toLowerCase();
                const answer = item.querySelector('.faq-answer').textContent.toLowerCase();

                if (question.includes(searchTerm) || answer.includes(searchTerm)) {
                    item.style.display = 'block';
                } else {
                    item.style.display = 'none';
                }
            });
        });
    </script>
</body>
</html>