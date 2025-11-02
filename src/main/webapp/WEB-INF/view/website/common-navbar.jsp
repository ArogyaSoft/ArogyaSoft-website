<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Modern Navbar -->
<nav class="navbar navbar-expand-lg navbar-light sticky-top modern-navbar">
    <div class="container">
        <a class="navbar-brand" href="home">
            <img src="images/arogyasoft-logo.png" alt="ArogyaSoft Logo" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarArogya" aria-controls="navbarArogya" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarArogya">
            <ul class="navbar-nav ml-auto align-items-center">
                <li class="nav-item">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="service">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="career">Careers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about-us">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-login" href="login">
                        <i class="fas fa-sign-in-alt"></i> Admin Login
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<style>
    /* Modern Navbar Styles */
    .modern-navbar {
        background: rgba(255, 255, 255, 0.95) !important;
        backdrop-filter: blur(10px);
        box-shadow: 0 1px 0 rgba(0, 0, 0, 0.05);
        transition: all 0.3s ease;
        padding: 1rem 0;
    }

    .modern-navbar.scrolled {
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
    }

    .modern-navbar .navbar-brand img {
        height: 45px;
        transition: transform 0.3s ease;
    }

    .modern-navbar .navbar-brand:hover img {
        transform: scale(1.05);
    }

    .modern-navbar .nav-link {
        color: #1a1a1a !important;
        font-weight: 500;
        font-size: 0.95rem;
        position: relative;
        transition: color 0.3s ease;
        padding: 0.5rem 1rem !important;
    }

    .modern-navbar .nav-link::after {
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

    .modern-navbar .nav-link:hover::after {
        width: 80%;
    }

    .modern-navbar .nav-link:hover {
        color: #667eea !important;
    }

    /* Login Button */
    .btn-login {
        background: linear-gradient(135deg, #667eea, #764ba2) !important;
        color: white !important;
        font-weight: 600;
        border-radius: 50px !important;
        padding: 8px 25px !important;
        border: none !important;
        transition: all 0.3s ease;
        margin-left: 1rem;
        box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
        text-decoration: none;
        display: inline-flex;
        align-items: center;
        justify-content: center;
    }

    .btn-login:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 20px rgba(102, 126, 234, 0.4);
        color: white !important;
        text-decoration: none;
    }

    .btn-login i {
        margin-right: 5px;
    }

    /* Mobile Menu */
    .modern-navbar .navbar-toggler {
        border: none;
        padding: 0.5rem;
    }

    .modern-navbar .navbar-toggler:focus {
        box-shadow: none;
        outline: none;
    }

    .modern-navbar .navbar-toggler-icon {
        background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3E%3Cpath stroke='%23667eea' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
    }

    /* Active Nav Item */
    .modern-navbar .nav-item.active .nav-link {
        color: #667eea !important;
    }

    .modern-navbar .nav-item.active .nav-link::after {
        width: 80%;
    }

    @media (max-width: 991px) {
        .modern-navbar .navbar-collapse {
            background: white;
            padding: 1rem;
            border-radius: 10px;
            margin-top: 1rem;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .btn-login {
            margin-left: 0 !important;
            margin-top: 1rem;
            display: block !important;
            text-align: center;
        }

        .modern-navbar .nav-link::after {
            display: none;
        }

        .modern-navbar .nav-link {
            padding: 0.75rem 1rem !important;
        }
    }
</style>

<script>
// Add scrolled class on scroll
window.addEventListener('scroll', function() {
    const navbar = document.querySelector('.modern-navbar');
    if (navbar) {
        if (window.scrollY > 50) {
            navbar.classList.add('scrolled');
        } else {
            navbar.classList.remove('scrolled');
        }
    }
});

// Set active nav item based on current page
document.addEventListener('DOMContentLoaded', function() {
    const currentPath = window.location.pathname;
    const navLinks = document.querySelectorAll('.modern-navbar .nav-link');

    // Remove active class from all nav items first
    document.querySelectorAll('.modern-navbar .nav-item').forEach(item => {
        item.classList.remove('active');
    });

    navLinks.forEach(link => {
        const href = link.getAttribute('href');
        if (href && href !== '#') {
            // Check if current path includes the href
            if (currentPath.includes(href)) {
                link.parentElement.classList.add('active');
            }
            // Special case for home page
            if ((currentPath === '/' || currentPath.endsWith('/') || currentPath.includes('index')) && href === 'home') {
                link.parentElement.classList.add('active');
            }
        }
    });
});

// Close mobile menu when clicking on a link
document.querySelectorAll('.modern-navbar .nav-link').forEach(link => {
    link.addEventListener('click', function() {
        const navbarCollapse = document.getElementById('navbarArogya');
        if (navbarCollapse.classList.contains('show')) {
            const bsCollapse = new bootstrap.Collapse(navbarCollapse, {
                toggle: true
            });
        }
    });
});
</script>