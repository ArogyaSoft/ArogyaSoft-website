<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SVSU UNIVERSITY</title>
        <jsp:include page="css.jsp" />
    </head>
    <body>
        <jsp:include page="navbar.jsp" />

        <div class="container-fluid">
            <div class="wizard-form">
                <section class="wizard-section">
                    <div class="col-sm-lg-12 col-sm-md-12">
                        <div class="form-wizard">
                            <div class="container">
                                <br />
                                <div class="card" style="width: 80%; margin-left: 10%;">
                                    <div class="card-header text-center bg-info text-white">
                                        <h4>Forgot Password</h4>
                                    </div>
                                    <div class="card-body text-center">
                                        <h2 class="text-center">Forgot Password?</h2>
                                        <p>You will get your password on your email.</p>
                                        <form>
                                            <div class="form-group row">
                                                <div class="col-sm-4 text-left">
                                                    <label for="inputPassword3" class="col-form-label">Email Id : </label>
                                                </div>
                                                <div class="col-sm-8">
                                                    <div>
                                                        <input id="email" type="text" value="" class="form-control wizard-required" placeholder="Enter Your Email Id" required="required" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-sm-4 text-left">
                                                    <label for="inputPassword3" class="col-form-label">Enter Security Code</label>
                                                </div>
                                                <div class="col-sm-8">
                                                    <div class="row">
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control col-sm-wizard-required float-left" id="securityCode" maxlength="6" placeholder="Type the characters shown in the picture" />
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <span class="securityCodeimg"><img id="securityCodeimg" /></span>&nbsp;&nbsp;<span class="securityCodesync"><i class="fas fa-sync-alt"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input id="reset-password" class="btn btn-lg btn-info btn-block" value="Get Password" type="submit" />
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>

        <jsp:include page="footer.jsp" />
        <jsp:include page="modal.jsp" />
        <jsp:include page="js.jsp" />
        <script src="javascript/forgot-password.js"></script>
    </body>
</html>
