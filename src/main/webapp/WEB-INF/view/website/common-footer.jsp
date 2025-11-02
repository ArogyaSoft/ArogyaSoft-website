<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
    /* Modern Footer Styles */
    .modern-footer {
        background: linear-gradient(135deg, #1a1a1a 0%, #2d2d2d 100%);
        color: #e4e8f0;
        padding: 4rem 0 2rem;
        margin-top: 0;
        position: relative;
        overflow: hidden;
    }

    .modern-footer::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        height: 4px;
        background: linear-gradient(90deg, #667eea, #764ba2, #f093fb, #4facfe);
    }

    .footer-brand {
        display: flex;
        align-items: center;
        margin-bottom: 1.5rem;
    }

    .footer-brand i {
        font-size: 2rem;
        background: linear-gradient(135deg, #667eea, #764ba2);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        margin-right: 12px;
    }

    .footer-brand h5 {
        font-weight: 800;
        color: #ffffff;
        margin: 0;
        font-size: 1.5rem;
    }

    .footer-description {
        color: #a0aec0;
        line-height: 1.6;
        margin-bottom: 1.5rem;
        font-size: 0.95rem;
    }

    .footer-title {
        font-weight: 700;
        color: #ffffff;
        margin-bottom: 1.5rem;
        font-size: 1.1rem;
        position: relative;
        display: inline-block;
    }

    .footer-title::after {
        content: '';
        position: absolute;
        bottom: -8px;
        left: 0;
        width: 40px;
        height: 3px;
        background: linear-gradient(90deg, #667eea, #764ba2);
        border-radius: 2px;
    }

    .footer-links {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .footer-links li {
        margin-bottom: 0.8rem;
    }

    .footer-links a {
        color: #a0aec0;
        text-decoration: none;
        transition: all 0.3s ease;
        display: inline-flex;
        align-items: center;
        font-size: 0.95rem;
    }

    .footer-links a:hover {
        color: #667eea;
        transform: translateX(5px);
    }

    .footer-links a i {
        margin-right: 8px;
        width: 20px;
    }

    .social-links {
        display: flex;
        gap: 1rem;
        margin-top: 1.5rem;
    }

    .social-link {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.05);
        display: flex;
        align-items: center;
        justify-content: center;
        color: #a0aec0;
        transition: all 0.3s ease;
        text-decoration: none;
    }

    .social-link:hover {
        background: linear-gradient(135deg, #667eea, #764ba2);
        color: white;
        transform: translateY(-3px);
        box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
    }

    .footer-divider {
        border-top: 1px solid rgba(255, 255, 255, 0.1);
        margin: 3rem 0 2rem;
    }

    .footer-bottom {
        text-align: center;
        color: #a0aec0;
        font-size: 0.9rem;
    }

    .footer-bottom a {
        color: #667eea;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .footer-bottom a:hover {
        color: #764ba2;
    }

    .footer-copyright {
        color: #6b7280;
        font-size: 0.85rem;
        margin-top: 0.5rem;
    }

    /* Scroll to Top Button */
    #scrollToTop {
        position: fixed;
        bottom: 30px;
        right: 30px;
        width: 50px;
        height: 50px;
        border-radius: 50%;
        background: linear-gradient(135deg, #667eea, #764ba2);
        color: white;
        border: none;
        display: none;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        z-index: 1000;
        box-shadow: 0 4px 20px rgba(102, 126, 234, 0.4);
        transition: all 0.3s ease;
    }

    #scrollToTop:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 30px rgba(102, 126, 234, 0.6);
    }

    #scrollToTop i {
        font-size: 1.2rem;
    }

    @media (max-width: 768px) {
        .modern-footer {
            padding: 3rem 0 1.5rem;
        }

        .footer-col {
            margin-bottom: 2rem;
        }

        #scrollToTop {
            width: 45px;
            height: 45px;
            bottom: 20px;
            right: 20px;
        }
    }
</style>

<!-- Footer Section -->
<footer class="modern-footer">
    <div class="container">
        <div class="row">
            <!-- Logo and Info -->
            <div class="col-lg-4 col-md-6 footer-col mb-4">
                <div class="footer-brand">
                    <i class="fa-solid fa-flask"></i>
                    <h5>ArogyaSoft</h5>
                </div>
                <p class="footer-description">
                    Empowering laboratories with smart, digital health management tools.
                    Simplify diagnostics, reporting, and billing — all in one secure platform.
                </p>
                <div class="social-links">
                    <a href="#" class="social-link" title="Facebook">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="social-link" title="Twitter">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="https://www.linkedin.com/company/arogyasoft" class="social-link" title="LinkedIn" target="_blank">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a href="#" class="social-link" title="Instagram">
                        <i class="fab fa-instagram"></i>
                    </a>
                </div>
            </div>

            <!-- Quick Links -->
            <div class="col-lg-2 col-md-6 footer-col mb-4">
                <h6 class="footer-title">Quick Links</h6>
                <ul class="footer-links">
                    <li><a href="home"><i class="fas fa-chevron-right"></i> Home</a></li>
                    <li><a href="service"><i class="fas fa-chevron-right"></i> Features</a></li>
                    <li><a href="about-us"><i class="fas fa-chevron-right"></i> About Us</a></li>
                    <li><a href="contact"><i class="fas fa-chevron-right"></i> Contact</a></li>
                </ul>
            </div>

            <!-- Resources -->
            <div class="col-lg-3 col-md-6 footer-col mb-4">
                <h6 class="footer-title">Resources</h6>
                <ul class="footer-links">
                    <li><a href="#"><i class="fas fa-chevron-right"></i> Pricing</a></li>
                    <li><a href="#"><i class="fas fa-chevron-right"></i> FAQs</a></li>
                    <li><a href="#"><i class="fas fa-chevron-right"></i> Help Center</a></li>
                    <li><a href="#"><i class="fas fa-chevron-right"></i> Documentation</a></li>
                </ul>
            </div>

            <!-- Contact Info -->
            <div class="col-lg-3 col-md-6 footer-col mb-4">
                <h6 class="footer-title">Contact Info</h6>
                <ul class="footer-links">
                    <li><a href="mailto:support@arogyasoft.com"><i class="fas fa-envelope"></i> support@arogyasoft.com</a></li>
                    <li><a href="tel:+919876543210"><i class="fas fa-phone"></i> +91 98765 43210</a></li>
                    <li><a href="#"><i class="fas fa-map-marker-alt"></i> Gurgaon, Haryana</a></li>
                </ul>
            </div>
        </div>

        <div class="footer-divider"></div>

        <div class="footer-bottom">
            <p>
                Built with <span style="color: #e74c3c;">❤️</span> by <strong>ArogyaSoft Technologies</strong>
            </p>
            <p class="footer-copyright">
                © 2025 ArogyaSoft. All rights reserved. |
                <a href="#">Privacy Policy</a> |
                <a href="#">Terms of Service</a>
            </p>
        </div>
    </div>
</footer>

<!-- Scroll to Top Button -->
<button id="scrollToTop" title="Back to top">
    <i class="fas fa-arrow-up"></i>
</button>

<!-- Tawk.to Live Chat Script -->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/68ff28d0a58d54194fd39438/1j8ibesl1';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
})();
</script>

<!-- Scroll to Top Functionality -->
<script>
// Show/hide scroll to top button
window.addEventListener('scroll', function() {
    const scrollToTopBtn = document.getElementById('scrollToTop');
    if (window.scrollY > 300) {
        scrollToTopBtn.style.display = 'flex';
    } else {
        scrollToTopBtn.style.display = 'none';
    }
});

// Smooth scroll to top
document.getElementById('scrollToTop').addEventListener('click', function() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
});

// Animate footer elements on scroll
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -100px 0px'
};

const observer = new IntersectionObserver(function(entries) {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

document.querySelectorAll('.footer-col').forEach(col => {
    col.style.opacity = '0';
    col.style.transform = 'translateY(20px)';
    col.style.transition = 'all 0.6s ease';
    observer.observe(col);
});
</script>