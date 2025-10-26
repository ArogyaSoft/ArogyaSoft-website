<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" >
	<head>
		<title>SVSU UNIVERSITY</title>
		<jsp:include page="css.jsp" />
		<!-- <link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> -->
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body>
		<input type="hidden" id="provisionalApplicationNumber" value="${candidateBasicInfo['provisionalApplicationNumber']}">
		<jsp:include page="navbar.jsp"/>
		<div class="container-fluid">
  			<div class="wizard-form">
    			<section class="wizard-section">
      				<div class="col-sm-lg-12 col-sm-md-12">
        				<div class="form-wizard">
          					<div class="form-wizard-header">
              					<ul class="list-unstyled form-wizard-steps clearfix">
					                <li class="active"><a> <span><i class="fas fa-exclamation"></i></span> <strong>Basic Information</strong> </a></li>
					                <li><a><span><i class="fas fa-list"></i></span><strong>Personal Details</strong></a></li>
					                <li><a><span><i class="fas fa-book-reader"></i></span><strong>Educational Details</strong></a></li>
					                <li><a><span><i class="fas fa-user-tie"></i></span><strong>Signature &amp; Photo</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>preview</strong></a></li>
					                <li><a><span><i class="fas fa-rupee-sign"></i></span><strong>payment</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>payment preview</strong></a></li>
              					</ul>
            				</div>
            				<fieldset class="wizard-fieldset">
              					<h5>Basic Information</h5>

			                  	<div class="form-group">
				                  	<div class="row">
		                      			<div class="col-4"></div>

		                      			<div class="col-5">
		                      				<span id="ageCompleted" class="text-dark text-left font-weight-bold"></span>
		                      			</div>
			                  		</div>
			                	</div>
			                	<hr>
  								<div class="row">
	              					<div class="col-12">
									  	<div class="form-group">
					                  		<div class="row">
			                      				<div class="col-5">
			                           				<label for="firstName" class="wizard-form-text-label float-left">Full Name : <strong>*</strong></label>
			                        			</div>
			                        			<div class="col-7">
													<input type="text" value="${candidateBasicInfo['firstName']}" class="form-control wizard-required" id="firstName" <c:if test = "${candidateBasicInfo != null}">readonly</c:if> >
			                        			</div>
					                  		</div>
					                	</div>

						            </div>
	              					<div class="col-12">
						                <div class="form-group">
						                  	<div class="row">
				                      			<div class="col-5">
				                          			<label for="mobileNumber" class="wizard-form-text-label">Mobile Number<strong>*</strong></label>
				                          			<p class="input-field-paragraph-col float-right">+91</p>
				                        		</div>
						                        <div class="col-7">
						                          	<input type="text" value="${candidateBasicInfo['mobileNumber']}" class="form-control wizard-required" id="mobileNumber" maxlength="10" <c:if test = "${candidateBasicInfo != null}">readonly</c:if> >
						                        </div>
											</div>
										</div>

						                <div class="form-group">
						                  	<div class="row">
				                      			<div class="col-5">
				                          			<label for="confirmmobileNumber" class="wizard-form-text-label">Email<strong>*</strong></label>
				                        		</div>
				                        		<div class="col-7">
				                          			<input type="text" value="${candidateBasicInfo['emailId']}" class="form-control wizard-required" id="emailId" <c:if test = "${candidateBasicInfo != null}">readonly</c:if> >
				                        		</div>
						                  	</div>
						                </div>

	             					</div>
             					</div>
            				</fieldset>
            				<hr>

            				<c:if test = "${candidateBasicInfo == null}">
	            				<div class="container  d-flex justify-content-center align-items-center">
							        <div class="text-center">
							        	<div class="row d-flex justify-content-center align-items-center">
							        		<span id="send-otp" otp-sent="0" class="form-wizard-next-btn">Send OTP</span>
							        	</div>
							        	<span id="otp-timer" style="display:none">45 secs</span>
							            <h6>Please enter the one time password to verify your account</h6>
							            <div id="otp" class="inputs d-flex flex-row justify-content-center col-md-6 m-auto">
							            	<input class="m-2 text-center form-control" type="text" id="firstOTP" maxlength="1" />
							            	<input class="m-2 text-center form-control" type="text" id="secondOTP" maxlength="1" />
							            	<input class="m-2 text-center form-control" type="text" id="thirdOTP" maxlength="1" />
							            	<input class="m-2 text-center form-control" type="text" id="fourthOTP" maxlength="1" />
							            </div>
							        </div>
								</div>
							</c:if>
							<div class="clearfix">
								<c:if test="${candidateBasicInfo==null}">
									<div class="row d-flex justify-content-center align-items-center">
	      								<span id="submit-basic-info" class="form-wizard-next-btn ">Save &amp; Next</span>
					        		</div>
								</c:if>
      							<c:if test="${candidateBasicInfo!=null}">
									<div class="row d-flex justify-content-center align-items-center">
	      								<span id="submit-basic-info" class="form-wizard-next-btn ">Update &amp; Move to Preview</span>
					        		</div>
								</c:if>
				        	</div>
     					</div>
     	 			</div>
    			</section>
  			</div>
  			<div class="container-fluid">
			 	<div class="jumbotron">
			 		<h4>Disclaimer : </h4>
			 		<ul>
			 			<li><p class="lead" style="color: black">On-Line Application validation rules and design are based on the Advertisement requirement. Candidates are advised to read the advertisement carefully and refer "How to Apply" & "FAQ" pages on the main page. Application submitted through On-Line form does not imply that candidate has fulfilled all the criteria given in the advertisement . Application is subject to subsequent scrutiny and can be rejected if found to be ineligible at any point of time.</p></li>
			 		</ul>

			  		<h4>Note : </h4>
			    	<ul>
					    <li><p class="lead" style="color: black">Mobile number is mandatory and should be unique. Enter a valid mobile number through which communication can be sent from Shri Vishwakarma Skill University - Palwal, Haryana. You can not fill more than one application form at one time with the same mobile number..</p></li>
					    <li><p class="lead" style="color: black">मोबाइल नंबर देना अनिवार्य है जिसका दुबारा प्रयोग नहीं किया जा सकता है । कृपया वैध मोबाइल नंबर का ही उपयोग करें ताकि भविष्य में Shri Vishwakarma Skill University - Palwal, Haryana आपसे संपर्क कर सके । एक मोबाइल नंबर के उपयोग से केवल एक ही आवेदन किया जा सकता है ।</p></li>
					    <li><p class="lead" style="color: black">E-mail ID is mandatory and should be unique. Enter valid email ID for future reference so that information related to recruitment can be sent through the Email-ID. If you do not have email address, please create an email address, You can not fill more than one application form with the same email address</p></li>
					    <li><p class="lead" style="color: black">ई-मेल ID बहुत ही महत्वपूर्ण है और ये आई डी विशिष्ट होनी चाहिए । भविष्य के संदर्भ के लिए मान्य ईमेल-आई डी दर्ज करें ताकि भर्ती से संबंधित जानकारी ई-मेल ID के माध्यम से भेजी जा सके। अगर आपके पास ई-मेल ID नहीं है तो कृपया एक नयी ई-मेल ID बनाएं । एक ई-मेल ID के उपयोग से केवल एक ही आवेदन किया जा सकता है ।</p></li>
				  	</ul>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
		<jsp:include page="modal.jsp" />
		<jsp:include page="js.jsp" />
		<script src="js/basic.info.script.js"></script>
		<script type="text/javascript">
	        window.history.forward();
	        function noBack() {
	            window.history.forward();
	        }
	    </script>
	    <script>
	        const chBoxes = document.querySelectorAll('.dropdown-menu input[type="checkbox"]');
	        const dpBtn = document.getElementById('multiSelectDropdown');
	        let mySelectedListItems = [];

	        function handleCB() {
	            mySelectedListItems = [];
	            let mySelectedListItemsText = '';

	            chBoxes.forEach((checkbox) => {
	                if (checkbox.checked) {
	                    mySelectedListItems.push(checkbox.value);
	                    mySelectedListItemsText += checkbox.value + ', ';
	                }
	            });

	            dpBtn.innerText =
	                mySelectedListItems.length > 0
	                    ? mySelectedListItemsText.slice(0, -2) : 'Select';
	        }

	        chBoxes.forEach((checkbox) => {
	            checkbox.addEventListener('change', handleCB);
	        });
	    </script>
	</body>
</html>