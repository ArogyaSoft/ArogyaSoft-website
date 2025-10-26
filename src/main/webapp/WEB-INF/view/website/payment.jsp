<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" >
	<head>
		<title>SVSU UNIVERSITY</title>
		<jsp:include page="css.jsp" />
	</head>
	<body class="d-flex flex-column h-100">
		<input type="hidden" id="payment-order-status" value="${paymentOrderStatus}">
		<input type="hidden" id="provisionalApplicationNumber" value="${sessionScope['provisionalApplicationNumber']}">
		
		<jsp:include page="navbar.jsp" />
		<div class="container-fluid">
  			<div class="wizard-form">
    			<div class="wizard-section">
      				<div class="col-lg-12 col-md-12">
        				<div class="form-wizard">          					
           					<div class="form-wizard-header">
             					<ul class="list-unstyled form-wizard-steps clearfix">
					                <li class="activated"><a> <span><i class="fas fa-exclamation"></i></span> <strong>Basic Information</strong> </a></li>
					                <li class="activated"><a><span><i class="fas fa-list"></i></span><strong>Personal Details</strong></a></li>
					                <li class="activated"><a><span><i class="fas fa-book-reader"></i></span><strong>Educational Details</strong></a></li>
					                <li class="activated"><a><span><i class="fas fa-user-tie"></i></span><strong>Signature &amp; Photo</strong></a></li>
					                <li class="activated"><a><span><i class="fas fa-check"></i></span><strong>preview</strong></a></li>
					                <li class="active"><a><span><i class="fas fa-rupee-sign"></i></span><strong>payment</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>payment preview</strong></a></li>
             					</ul>
           					</div>
           					<fieldset class="wizard-fieldset">
           						<h5>Payment <!-- <a href="#" class="link-payment">Click Here to Payment Instructions</a> --> </h5>
           						<div class="form-group border">
			                        <%-- <div class="row">
			                        	<div class="col-sm-12">
			                        		<div class="row">
			                      				<div class="col-sm-3"></div>
			                      				<div class="col-sm-2">
			                         				<!-- <label for="firstName" class="wizard-form-text-label">Choose Payment Mode : <strong>*</strong></label> -->
			                      				</div>
			                         			<div class="col-sm-4" id="paymentMode">
			                          				<div class="wizard-form-radio">
			                            				<input type="radio" name="paymentMode" value="online" <c:if test = "${paymentMode=='online'}">checked</c:if>>
			                            				<label for="Online" class="paymentModeLabel">Other Payment Mode</label>
			                          				</div>
			                          				<!-- <div class="wizard-form-radio">
			                            				<input type="radio" name="paymentMode" value="offline">
			                            				<label for="Offline" class="paymentModeLabel">SBI Collect Online Payment Mode</label>
			                          				</div> -->
			                        			</div>
			                      			</div>
			                    		</div>
			                  		</div> --%>
			                  		<div id="online-payment-section">
			                  			<hr>
			                  			<h2 class="bg-info text-white text-center">Online Payment</h2>
			                  			<c:if test="${paymentOrderStatus != 'Created'}">
			                  				<h2 class="text-white text-center"><a href="createPaymentOrder" class="btn btn-info text-center">CLICK HERE TO PROCEED FOR PAYMENT</a></h2>
			                  			</c:if>
			                  			<div class="border" <c:if test="${paymentOrderStatus != 'Created'}">  style="display: none;"  </c:if> >
		           							<br>
				           					<div class="row">
				           						<div class="col-sm-5"></div>
								             	<div class="col-sm-6">
								             		<div class="row">
									             		<div class="col-sm-2">
									               			<label for="firstName" class="wizard-form-text-label">Application Number : </label>
									               		</div>
									               		<div class="col-sm-8">
									               			<span class="text-dark font-weight-bold">${paymentDetails.candidateDetails.candidateDetails.provisionalApplicationNumber}</span>
									               		</div>
								               		</div>
								             	</div>
								             </div><hr>
								             <div class="row">
				           						<div class="col-sm-5"></div>
								             	<div class="col-sm-6">
								             		<div class="row">
									             		<div class="col-sm-2">
									               			<label for="firstName" class="wizard-form-text-label">Candidate Name : </label>
									               		</div>
									               		<div class="col-sm-8">
									               			<span class="text-dark font-weight-bold">${paymentDetails.paymentDetails.paymentDetails.candidateName}</span>
									               		</div>
								               		</div>
								             	</div>
								             </div><hr>
								             <div class="row">
				           						<div class="col-sm-5"></div>
								             	<div class="col-sm-6">
								             		<div class="row">
									             		<div class="col-sm-2">
									               			<label for="firstName" class="wizard-form-text-label">Phone : </label>
									               		</div>
									               		<div class="col-sm-8">
									               			<span class="text-dark font-weight-bold">${paymentDetails.paymentDetails.paymentDetails.contactNumber}</span>
									               		</div>
								               		</div>
								             	</div>
								             </div><hr>
								             <div class="row">
				           						<div class="col-sm-5"></div>
								             	<div class="col-sm-6">
								             		<div class="row">
									             		<div class="col-sm-2">
									               			<label for="firstName" class="wizard-form-text-label">Email Id : </label>
									               		</div>
									               		<div class="col-sm-8">
									               			<span class="text-dark font-weight-bold">${paymentDetails.paymentDetails.paymentDetails.emailId}</span>
									               		</div>
								               		</div>
								             	</div>
								             </div><hr>
								             <div class="row">
				           						<div class="col-sm-5"></div>
								             	<div class="col-sm-6">
								             		<div class="row">
									             		<div class="col-sm-2">
									               			<label for="firstName" class="wizard-form-text-label">Amount : </label>
									               		</div>
									               		<div class="col-sm-8">
									               			<span class="text-dark font-weight-bold">${paymentDetails.candidateDetails.candidateDetails.paymentAmount/100} (${paymentDetails.paymentDetails.paymentDetails.currency})</span>
									               		</div>
								               		</div>
								             	</div>
								             </div><br>
								             <div class="row">
				           						<div class="col-sm-5"></div>
								             	<div class="col-sm-6">
								             		<div class="row">
									               		<div class="col-sm-8">
									               			<form name="form1" method="post" id="form1" action="${paymentDetails.url}">
													        	<table>
													            	<tr>
													                	<td width="20px"><%-- ${paymentDetails.singleParamResponse} --%>
													                    	<input type="hidden" name="EncryptTrans" id="EncryptTrans" value="${paymentDetails.singleParamResponse}">
																			<input type="hidden" name="merchIdVal" id="merchIdVal" value="${paymentDetails.merchantId}">
																			<!-- <script language='javascript'>document.redirect.submit();</script> -->
																			<input type="submit" value="Pay Now">
													                    </td>
																	</tr>
													            </table>
													 		</form>
									               		</div>
								               		</div>
								             	</div>
						             		</div><br>
								        </div> <br>
				                  	</div>
				                  	<!-- <div id="offline-payment-section">
				                  		<hr>
			                  			<h2 class="bg-info text-white text-center">SBI Collect Online Payment Mode</h2><br>
			                  			<div style="border-style: solid;">
			                  				<br>
			                  				<div class="form-group">
			                  					<div class="row">
				                      				<div class="col-sm-1"></div>
				                      				<div class="col-sm-10">
				                         				<strong style="color: red; font-size: 18px"> <u> Important Note</u>* - CLICK ON PAY NOW OPTION TO MAKE THE PAYMENT AND NOTE YOUR PAYMENT REFERENCE NUMBER AND RELOGIN(IF SESSION EXPIRED) TO FILL REQUIRED DETAILS AVAILABLE ON PAYMENT PAGE TO COMPLETE YOUR APPLICATION.</strong>
				                        			</div>
						                  		</div>
						                  		<hr>
						                  		<div class="row">
				                      				<div class="col-sm-4"></div>
				                      				<div class="col-sm-2">
				                      					<div class="row d-flex justify-content-center align-items-center">
						      								<span id="backToPreview" class="form-wizard-next-btn"><i class="fa fa-angle-double-left"></i> Back to Preview Page </span>
										        		</div>
				                      				</div>
				                      				<div class="col-sm-1">
				                         				<a href="https://www.onlinesbi.sbi/sbicollect/icollecthome.htm" target="_blank">
				                         					<input type="button" id="payNowButton" class="form-wizard-next-btn" value="Pay Now">
				                         				</a>
				                        			</div>
						                  		</div>
						                  	</div><br>
			                  			</div><br>
			                  			<div style="border-style: solid;">
			                  				<br>
				                  			<form>
				                  				<div class="form-group">
							                  		<div class="row">
					                      				<div class="col-sm-2"></div>
					                      				<div class="col-sm-2">
					                         				<label for="firstName" class="wizard-form-text-label">Bank Name : <strong>*</strong></label>
					                      				</div>
					                         			<div class="col-sm-3">
					                          				<input type="text" class="form-control wizard-required" id="bank_name">
					                        			</div>
							                  		</div>
							                  	</div><br>
							                  	<div class="form-group">
							                  		<div class="row">
					                      				<div class="col-sm-2"></div>
					                      				<div class="col-sm-2">
					                         				<label for="firstName" class="wizard-form-text-label">Payment Reference Number : <strong>*</strong></label>
					                      				</div>
					                         			<div class="col-sm-3">
					                          				<input type="text" class="form-control wizard-required" id="bank_challan_no">
					                        			</div>
							                  		</div>
							                  	</div><br>
							                  	<div class="form-group">
							                  		<div class="row">
					                      				<div class="col-sm-2"></div>
					                      				<div class="col-sm-2">
					                         				<label for="firstName" class="wizard-form-text-label">Upload Payment Receipt : <strong>*</strong></label>
					                      				</div>
					                         			<div class="col-sm-2">
					                         				<input type="hidden" id="bank_challan_receipt_path">
					                          				<input type="file" onchange="fileChooser(this)" class="form-control wizard-required" id="bank_challan_receipt_file">
					                          				<input type="hidden" id="extension">
					                        			</div>
					                        			<div class="col-sm-2">
					                          				<p id="bank_challan_receipt">Not Uploaded Yet</p>
					                        			</div>
					                         			<div class="col-sm-2">
					                          				<button type="button" id="bank_challan_receipt_upload_button" class="form-wizard-next-btn">Upload</button>
					                        			</div>
					                        			<div class="col-sm-1">
					                          				<span id="bank_challan_upload_status">Pending</span>
					                        			</div>
							                  		</div>
							                  	</div><br>
							                  	<div class="form-group">
							                  		<div class="row">
					                      				<div class="col-sm-2"></div>
					                      				<div class="col-sm-2">
					                         				<label for="firstName" class="wizard-form-text-label">Date of Fees Submitted/Transferred : <strong>*</strong></label>
					                      				</div>
					                         			<div class="col-sm-3">
					                          				<input type="text" class="form-control wizard-required text-center" id="fee_date" placeholder="DD-MM-YYYY">
					                        			</div>
							                  		</div>
							                  	</div><br><br>
							                  	<div class="form-group">
							                  		<div class="row">
					                      				<div class="col-sm-6"></div>
					                      				<div class="col-sm-1">
					                         				<input type="button" id="save-payment-challan" class="form-wizard-next-btn" value="Submit">
					                        			</div>
							                  		</div>
							                  	</div><br>
						                  	</form>
						                  </div>
				                  	</div> -->
			                  	</div>
					        </fieldset>
        				</div>
      				</div>
    			</div>
  			</div>
		</div>
		<jsp:include page="footer.jsp" />
		<jsp:include page="modal.jsp" />
		<jsp:include page="js.jsp" />
		<script src="javascript/payment.script.js"></script>
	</body>
</html>