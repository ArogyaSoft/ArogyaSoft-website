<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" >
	<head>
		<meta charset="UTF-8">
		<title>SVSU UNIVERSITY</title>
		<jsp:include page="css.jsp" />
	</head>
	<body>
		<input type="hidden" id="provisionalApplicationNumber" value="${sessionScope['provisionalApplicationNumber']}">
		<input type="hidden" id="candidateProvisionalApplicationNumber" value="${candidateSignPhoto['provisionalApplicationNumber']}">
		<input type="hidden" id="candidatePhotoUrl" value="${candidateSignPhoto['photoURL']}">
		<input type="hidden" id="candidateSignUrl" value="${candidateSignPhoto['signURL']}">		
        <input type="hidden" id="highSchoolCertificateURL" value="${candidateSignPhoto['highSchoolCertificateURL']}">
        <input type="hidden" id="intermediateCertificateURL" value="${candidateSignPhoto['intermediateCertificateURL']}">
        <input type="hidden" id="engineeringDiplomaCertificateURL" value="${candidateSignPhoto['engineeringDiplomaCertificateURL']}">
		<input type="hidden" id="casteCertificateURL" value="${candidateSignPhoto['casteCertificateURL']}">
		<input type="hidden" id="pwbdEWSCertificateURL" value="${candidateSignPhoto['pwbdEWSCertificateURL']}">
		<input type="hidden" id="anyValidGovtIdentityProofCertificateURL" value="${candidateSignPhoto['anyValidGovtIdentityProofCertificateURL']}">
		
		<input type="hidden" id="postAppliedForId" value="${masterData.postAppliedForId}">
		<input type="hidden" id="category" value="${masterData['category']}">
		<input type="hidden" id="pwbd" value="${masterData['pwbd']}">
		
		<jsp:include page="navbar.jsp" />
		<div class="container-fluid">
	  		<div class="wizard-form">
	    		<section class="wizard-section">
	      			<div class="col-sm-lg-12 col-sm-md-12">
	        			<div class="form-wizard">
	          				<div class="form-wizard-header">
	              				<ul class="list-unstyled form-wizard-steps clearfix">
	                				<li class="activated"><a> <span><i class="fas fa-exclamation"></i></span> <strong>Basic Information</strong> </a></li>
					                <li class="activated"><a><span><i class="fas fa-list"></i></span><strong>Personal Details</strong></a></li>
					                <li class="activated"><a><span><i class="fas fa-book-reader"></i></span><strong>Educational Details</strong></a></li>
					                <li class="active"><a><span><i class="fas fa-user-tie"></i></span><strong>Signature &amp; Photo</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>preview</strong></a></li>
					                <li><a><span><i class="fas fa-rupee-sign"></i></span><strong>payment</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>payment preview</strong></a></li>
	              				</ul>
	            			</div>
	            			<fieldset class="wizard-fieldset ">
	              				<h5>Signature &amp; Photo</h5>
	              				<%-- <c:if test = "${sessionScope['password'] != null}">
	              					<p>
	              						<span class="details">
	              							YOUR PROVISIONAL APPLICATION NO : <b> ${sessionScope["provisionalApplicationNumber"]} </b> AND YOUR PASSWORD IS : <b> ${sessionScope["password"]} </b> 
	              						</span></br>
	              						<strong>Note : </strong>
	              						YOUR REGISTRATION WILL BE VALID ONLY WHEN APPLICATION IS FILLED IN ALL ASPECTS AND PAYMENT OF APPLICATION FEE IS SUCCESSFUL FOR RECRUITMENT OF WORKMEN 
	              						IN VARIOUS DISCIPLINES.
	              					</p>
	              				</c:if> --%>
	              				<div class="proifle-card">
	                				<div class="form-group">
	                  					<div class="row">
	                  						<div class="col-sm-6">
	                    						<div class="row">
		                    						<p class="paragraph-col"> <strong>INSTRUCTION FOR PHOTOGRAPH</strong> <b>PHOTOGRAPH SIZE [10KB - 100 KB]</b>  <br> 
			                    						<span class="font-weight-bold">1.</span> One recent coloured passport size photograph not more than three months old is to be scanned and uploaded 
			                    																 in the space earmarked in the on-line application. <br> 
			                    						<span class="font-weight-bold">2.</span> The photograph should be minimum 200 dpi (dots per inch) and in .JPG Format. <br> 
			                    						<span class="font-weight-bold">3.</span> The size of the photograph should be between 10KB to 100KB. 
			                    					</p>
		                    					</div>
												<div class="row">
		                    						<c:choose>
			                    						<c:when test = "${candidateSignPhoto !=null}">
			                    							<img src="${candidateSignPhoto['photoURL']}" alt="" class="img-fluid" id="photo-preview">
			                    						</c:when>
									                    <c:otherwise>
									                    	<img src="images/upload-photo.png" alt="" class="img-fluid" id="photo-preview">
									                    </c:otherwise>
		                    						</c:choose>
		                    					</div>
		                    					<br>
							                    <input id="photo" type="file" name="photoUpload" accept="image/jpeg"/>
							                    <span class="btn btn-primary" id="upload-photo">Upload</span>
	                    					</div>
											<div class="col-sm-6">
	                    						<p class="paragraph-col" id="signature-instructions"> <strong>INSTRUCTION FOR SIGNATURE</strong> <b>SIGNATURE SIZE [2KB - 50 KB]</b> <br> 
		                    						<span class="font-weight-bold">1.</span> Scanned signature (in Black ink) against white background is to be scanned and uploaded in the space earmarked 
		                    																 in the on-line application. <br> 
		                    						<span class="font-weight-bold">2.</span> Candidates must ensure the signature uploaded shall be maintained as same at all places viz. signature up-loaded, 
		                    																 appended on Undertaking, Attendance Sheet of written examination, etc. <br> 
		                    						<span class="font-weight-bold">3.</span> If any variation is found between the signatures, the candidature is liable to be cancelled. <br> 
		                    						<span class="font-weight-bold">4.</span> Candidate is advised to confirm that his / her uploaded signature is clearly visible / identifiable at the 
		                    																 appropriate place. <br> 
		                    						<span class="font-weight-bold">5.</span> The signature should be minimum 200 dpi (dots per inch) and in .JPG Format. <br> 
		                    						<span class="font-weight-bold">6.</span> The size of the signature should be between 2KB to 50KB. 
		                    					</p>
	                    						<br><br><br><br><br><br><br><br><br><br>
	                    						<c:choose>
								                    <c:when test = "${candidateSignPhoto !=null}">
								                    	<img src="${candidateSignPhoto['signURL']}" alt="" class="img-fluid" id="signature-preview">
								                    </c:when>
								                    <c:otherwise>
								                    	<img src="images/upload-singnature.png" alt="" class="img-fluid" id="signature-preview">
								                    </c:otherwise>
							                    </c:choose>
							                    <br><br>
							                    <input id="signature" type="file" name="signatureUpload" accept="image/jpeg"/>
							                    <span class="btn btn-primary" id="upload-signature">Upload</span>
	                    					</div>
	                  					</div>
	                				</div>
	              				</div>
				            <div class="clearfix">
				            	<c:if test="${candidateSignPhoto==null}">
									<div class="row d-flex justify-content-center align-items-center">
	      								<span id="save-sign-photo-details" class="form-wizard-next-btn">Save &amp; Next <i class="fa fa-angle-double-right"></i> </span>
					        		</div>
								</c:if>
      							<c:if test="${candidateSignPhoto!=null}">
									<div class="row d-flex justify-content-center align-items-center">
	      								<span id="save-sign-photo-details" class="form-wizard-next-btn ">Update &amp; Move to Preview <i class="fa fa-angle-double-right"></i> </span>
					        		</div>
								</c:if>
				            </div>
	        			</div>
	      			</div>
	    		</section>
	  		</div>
		</div>
		<jsp:include page="footer.jsp" />
		<jsp:include page="modal.jsp" />
		<jsp:include page="js.jsp" />
		<script src="javascript/signature.photo.upoad.script.js"></script>
	</body>
</html>