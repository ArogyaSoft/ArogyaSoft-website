<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Profile</title>
        <link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/profile.css" />
    </head>
    <body>
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="main-heading">
                            <h1>Candidate Details</h1>
                        </div>
                        <div class="profile-card">
                            <!-- User profile -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="profile-avatar">
                                        <img src="images/profile-img.jpg" alt="..." />
                                    </div>
                                    <div class="profile-header">
                                        <h4>${candidateDetailsData.candidateName}</h4>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non nostrum odio cum repellat veniam eligendi rem cumque magnam autem delectus qui.
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <!-- User info -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <table class="table profile-table">
                                        <tbody>
                                            <tr>
                                                <td>Roll No.</td>
                                                <td>:</td>
                                                <td>${candidateDetailsData.rollNumber}</td>
                                            </tr>
                                            <tr>
                                                <td>Candidate Name</td>
                                                <td>:</td>
                                                <td>Aakarsh Gautam</td>
                                            </tr>
                                            <tr>
                                                <td>Father's Name</td>
                                                <td>:</td>
                                                <td>Rahul Gautam</td>
                                            </tr>
                                            <tr>
                                                <td>Paper</td>
                                                <td>:</td>
                                                <td>1.Pack-1</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="proceed"><button class="proceed-btn">Proceed Exam</button></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="javascript/login.js"></script>
</html>
