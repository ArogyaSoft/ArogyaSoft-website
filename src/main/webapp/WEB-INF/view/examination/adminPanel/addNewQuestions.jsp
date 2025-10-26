<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />

        <title>add New Questions</title>
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
                <h1>add New Questions</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">add New Questions</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section dashboard">
                <div class="row">
                    <!-- Left side columns -->
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <table class="table">
                                    <tr>
                                        <td width="30%">exam Paper Id</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="examPaperId" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">exam Set</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="examSet" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Question Number</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="questionNumber" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Question Content English</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="questionContentEnglish" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Question Content Hindi</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="questionContentHindi" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Option One English</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="optionOneEnglish" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Option One Hindi</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="optionOneHindi"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Option Two English</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="optionTwoEnglish"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Option two Hindi</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="optionTwoHindi"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Option Three English</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="optionThreeEnglish"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Option Three Hindi</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="optionThreeHindi"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Option Four English</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="optionFourEnglish"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%">Option Four Hindi</td>
                                        <td>:</td>
                                        <td>
                                            <input type="text" class="form-control" id="optionFourHindi"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="30%"></td>
                                        <td></td>
                                        <td>
                                            <button id="AddQuestion" type="button" class="btn btn-primary">Submit</button>
                                        </td>
                                    </tr>
                                </table>
                            </div>
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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <!-- Template Main JS File -->
        <script src="js/main.js"></script>
        <script src="javascript/addNewQuestions.js"></script>
    </body>
</html>
