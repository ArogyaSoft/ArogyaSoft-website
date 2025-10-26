<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>View Candidate</title>
        <meta content="" name="description" />
        <meta content="" name="keywords" />
        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect" />
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

        <!-- Vendor CSS Files -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/bootstrap-icons.css" rel="stylesheet" />

        <!-- Template Main CSS File -->
        <link href="css/style.css" rel="stylesheet" />
    </head>

    <body>
        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">
            <div class="d-flex align-items-center justify-content-between">
                <a href="index.html" class="logo d-flex align-items-center">
                    <img src="images/logo-white.png" alt="" />
                    <span class="d-none d-lg-block">Admin Panel</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div>
            <!-- End Logo -->

            <div class="search-bar">
                <form class="search-form d-flex align-items-center" method="POST" action="#">
                    <input type="text" name="query" placeholder="Search" title="Enter search keyword" />
                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </form>
            </div>
            <!-- End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">
                    <li class="nav-item d-block d-lg-none">
                        <a class="nav-link nav-icon search-bar-toggle" href="#">
                            <i class="bi bi-search"></i>
                        </a>
                    </li>
                    <!-- End Search Icon-->

                    <li class="nav-item dropdown pe-3">
                        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                            <img src="images/profile-img.jpg" alt="Profile" class="rounded-circle" />
                            <span class="d-none d-md-block dropdown-toggle ps-2">Mr. Rahul</span>
                        </a>
                        <!-- End Profile Iamge Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6>Rahul Sharma</h6>
                                <span>Web Designer</span>
                            </li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-person"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-gear"></i>
                                    <span>Account Settings</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-question-circle"></i>
                                    <span>Need Help?</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-box-arrow-right"></i>
                                    <span>Sign Out</span>
                                </a>
                            </li>
                        </ul>
                        <!-- End Profile Dropdown Items -->
                    </li>
                    <!-- End Profile Nav -->
                </ul>
            </nav>
            <!-- End Icons Navigation -->
        </header>
        <!-- End Header -->

         <%@ include file="sideMenu.jsp" %>
        <main id="main" class="main">
            <div class="pagetitle">
                <h1>View Candidate</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">View Candidate</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section dashboard">
                <div class="row">
                    <!-- Left side columns -->
                    <div class="col-lg-12">
                        <div class="card bg-gradient-danger card-img-holder text-white">
                            <div class="card-body">
                                <div class="collage-name">
                                    <h4 class="font-weight-normal">Shiksha Bharti Collage</h4>
                                </div>
                                <div class="center-code">
                                    <h4 class="font-weight-normal">Center Code <span>10001</span></h4>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="card bg-gradient-danger card-img-holder text-white">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-2">
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected="">Select Exam Date</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-2">
                                        <select class="form-select" aria-label="Default select example">
                                            <option selected="">Select Shift</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-1">
                                        <button type="button" class="btn btn-success">Search</button>
                                    </div>
                                    <div class="col-lg-1">
                                        <h6 style="margin-top: 10px; text-align: center;">Or</h6>
                                    </div>
                                    <div class="col-lg-2">
                                        <input type="text" class="form-control" />
                                    </div>
                                    <div class="col-lg-1">
                                        <button type="button" class="btn btn-success">Search</button>
                                    </div>
                                    <div class="col-lg-3">
                                        <button type="button" class="btn btn-secondary">Print Attendance</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <table class="table table-bordered border-primary">
                                <thead>
                                    <tr>
                                        <th width="10%" scope="col">SN</th>
                                        <th width="10%" scope="col">Photo</th>
                                        <th width="10%" scope="col">Roll No</th>
                                        <th width="10%" scope="col">Password</th>
                                        <th width="30%" scope="col">Name</th>
                                        <th width="10%" scope="col">City Name</th>
                                        <th width="10%" scope="col">Exam Name</th>
                                        <th width="10%" scope="col">Exam Status</th>
                                    </tr>
                                </thead>
                                <tbody id="candidate-list">
                                     <c:forEach var="candidateDetails" items="${candidateDetailsContentList}" varStatus="index">
                                          <tr class="odd">
                                              <td>${index.index+1}</td>
                                              <td>${candidateDetails.profilePictureURL}</td>
                                              <td>${candidateDetails.rollNumber}</td>
                                              <td>${candidateDetails.password}</td>
                                              <td>${candidateDetails.candidateName}</td>
                                          </tr>
                                      </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>Admin Panel</span></strong>. All Rights Reserved
            </div>
        </footer>
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- Template Main JS File -->
        <script src="js/main.js"></script>
    </body>
</html>
