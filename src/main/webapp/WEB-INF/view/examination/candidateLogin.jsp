<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Candidate Login</title>
        <link href="https://fonts.googleapis.com/css?family=Ubuntu&display=swap" rel="stylesheet" />
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/login.css" />
    </head>
    <body>
        <div class="container-fluid bg-login">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-12 login-card">
                        <div class="row">
                            <div class="col-md-5 detail-part">
                                <h1>Candidate Login</h1>
                                <p>Please use your credentials to login. If you are not a member, please register.</p>
                            </div>
                            <div class="col-md-7 logn-part">
                                <div class="row">
                                    <div class="col-lg-10 col-md-12 mx-auto">
                                        <div class="logo-cover">
                                            <img src="images/logo.png" alt="" />
                                        </div>
                                        <div class="form-cover">
                                            <h6>Login Here</h6>
                                            <input id="provisionalApplicationNumber" placeholder="Enter provisional Application Number" type="text" class="form-control" />
                                            <input id="password" placeholder="Enter Password" type="password" class="form-control" />
                                            <input id="pin" placeholder="Enter PIN" type="password" class="form-control" />
                                            <div class="row form-footer">
                                                <div class="col-md-6 forget-paswd">
                                                    <a href="">Forget Password ?</a>
                                                </div>
                                                <div class="col-md-6 button-div">
                                                    <button id="login" class="btn btn-primary">Login</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <jsp:include page="modal.jsp" />
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="javascript/candidateLogin.js"></script>
</html>
