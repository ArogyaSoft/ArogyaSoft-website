<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>SVSU UNIVERSITY</title>
		<jsp:include page="css.jsp" />
	</head>
	<body>
		<input type="hidden" id="candidateProvisionalApplicationNumber" value="${candidateEducationDetails['provisionalApplicationNumber']}">
				              		
		<input type="hidden" id="category" value="${masterData.postData.category}">
		<input type="hidden" id="pwbd" value="${masterData.postData.pwbd}">
		<input type="hidden" id="isExServiceman" value="${masterData.postData.isExServiceman}">
		
		<input type="hidden" id="postAppliedForId" value="${masterData.postData.postAppliedForId}">
		
	  	<jsp:include page="navbar.jsp" />
		<div class="container-fluid">
  			<div class="wizard-form">
    			<section class="wizard-section">
      				<div class="col-lg-12 col-md-12">
        				<div class="form-wizard">
				            <div class="form-wizard-header">
				              	<ul class="list-unstyled form-wizard-steps clearfix">
					                <li class="activated"><a> <span><i class="fas fa-exclamation"></i></span> <strong>Basic Information</strong> </a></li>
					                <li class="activated"><a><span><i class="fas fa-list"></i></span><strong>Personal Details</strong></a></li>
					                <li class="active"><a><span><i class="fas fa-book-reader"></i></span><strong>Educational Details</strong></a></li>
					                <li><a><span><i class="fas fa-user-tie"></i></span><strong>Signature &amp; Photo</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>preview</strong></a></li>
					                <li><a><span><i class="fas fa-rupee-sign"></i></span><strong>payment</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>payment preview</strong></a></li>
				              	</ul>
				            </div>
				            <fieldset class="wizard-fieldset ">
				            	<input type="hidden" id="dobYear" value="${masterData.postData.dobYear}">
				              	<h5>Educational Qualification</h5>
				              	<div class="proifle-card">
				              		<p><strong>** Note :</strong> Calculation of Percentage: The percentage marks shall be arrived at by dividing the total marks obtained by the candidate in all the subjects in all the semester(s)/year(s) by aggregating maximum marks in all the subjects irrespective of honors / optional / additional optional subject, if any. The fraction of percentage so arrived will be ignored i.e. 59.99% will be treated as less than 60%.</p>
				                	<p><strong>** नोट :</strong> प्रतिशत की गणना: सभी सेमेस्टर/वर्षों में सभी विषयों में उम्मीदवार द्वारा प्राप्त कुल अंकों को सभी विषयों में सम्मान के बावजूद कुल अंकों को विभाजित करके प्रतिशत अंकों की गणना की जाएगी। / वैकल्पिक / अतिरिक्त वैकल्पिक विषय, यदि कोई हो। इस प्रकार प्राप्त प्रतिशत के अंश की उपेक्षा की जाएगी अर्थात 59.99% को 60% से कम माना जाएगा। </p>
				                	<p><strong>** Note :</strong> Candidates are required to mandatory indicate the details of all qualifications acquired and enrolled. </p>
				                	<p><strong>** नोट :</strong> उम्मीदवारों को अर्जित और नामांकित सभी योग्यताओं के विवरण को अनिवार्य रूप से इंगित करना आवश्यक है। </p>
				                	<p><strong>** Note :</strong> Candidates with CGPA gradations/Grade Scheme will have to convert the grades into marks and enter in the respective columns. </p>
				                	<p><strong>** नोट :</strong> सीजीपीए ग्रेडेशन/ग्रेड स्कीम वाले उम्मीदवारों को ग्रेड को अंकों में बदलना होगा और संबंधित कॉलम में दर्ज करना होगा। </p>

				                	<table class="table table-striped">
				                		<thead>
					                    	<tr>
					                      		<th rowspan="2">Qualification Name</th>
						                      	<th rowspan="2">Discipline/Trade/Subject</th>
						                      	<th rowspan="2">Month of Passing Exam</th>
						                      	<th rowspan="2">Year of Passing Exam</th>
						                      	<th rowspan="2">School /Board /University /Institution /Technical Board</th>
						                      	<th rowspan="2">Division</th>
						                      	<th rowspan="2">Whether Full Time Regular Course</th>
						                      	<th rowspan="2">Marking Scheme Marks/Grade</th>
						                      	<th colspan="3" class="text-center">Marks Secured</th>
					                    	</tr>
					                    	<tr>
					                    		<th>Marks/Grade Obtained</th>
					                    		<th>Max. Marks/Grade</th>
					                    		<th>% of Marks</th>
					                    	</tr>
					                  	</thead>

					                </table>
              					</div>
            				<fieldset class="wizard-fieldset">
              				<h5>Other Details</h5>
              					<div class="proifle-card">
                					<table class="table table-striped">
                  						<thead>
                    						<tr>
                      							<td width="30%">Appeared CUET Exam / सीयूईटी परीक्षा दी : <strong style="color: red">*</strong> </td>
                      							<td width="30%">
													<select id="whetherCollegeAICTEApproved" class="form-control wizard-required">
			                        					<c:if test = "${candidateEducationDetails['whetherCollegeAICTEApproved'] != null}">
			                        						<c:if test = "${candidateEducationDetails['whetherCollegeAICTEApproved'] == 'yes'}">
				                          						<option value="yes">Yes</option>
				                          						<option value="no">No</option>
				                          					</c:if>
				                          					<c:if test = "${candidateEducationDetails['whetherCollegeAICTEApproved'] == 'no'}">
				                          						<option value="no">No</option>
				                          						<option value="yes">Yes</option>
				                          					</c:if>
			                          					</c:if>
			                          					<c:if test = "${candidateEducationDetails == null}">
			                          						<option value="no">Please Select</option>
			                        						<option value="yes">Yes</option>
			                        						<option value="no">No</option>
			                          					</c:if>
			                        				</select>
												</td>
												<td></td>
                    						</tr>
                    						<tr id="otherStatutoryBodySection"
                    							<c:if test="${candidateEducationDetails==null}"> style="display: none;" </c:if> 
              									<c:if test="${candidateEducationDetails['whetherCollegeAICTEApproved']=='yes'}"> style="display: none;" </c:if> >
                      							<td width="30%">Name of Other Statutory Body <strong style="color: red">*</strong> </td>
                      							<td width="30%">
													<input type="text" class="form-control" id="otherStatutoryBody" value="${candidateEducationDetails['otherStatutoryBody']}">
												</td>
												<td></td>
                    						</tr>
                    						<tr id="collegeInstituteNameSection"
                      							<c:if test="${candidateEducationDetails==null}"> style="display: none;" </c:if> 
              									<c:if test="${candidateEducationDetails['whetherCollegeAICTEApproved']=='no'}"> style="display: none;" </c:if> >
                      							<td width="30%">Name of College/Institution (optional) <!-- <strong style="color: red">*</strong> --> </td>
                      							<td width="30%">
													<input type="text" class="form-control" id="collegeInstituteName" value="${candidateEducationDetails['collegeInstituteName']}">
												</td>
												<td></td>
                    						</tr>
                    						<tr>
                      							<td width="30%">NSS Merit Certificate Holder / एनएसएस मेरिट सर्टिफिकेट होल्डर :  <strong style="color: red">*</strong> </td>
                      							<td width="30%">
													<select id="employeedInPSU" class="form-control wizard-required">
			                        					<c:if test = "${candidateEducationDetails['employeedInPSU'] != null}">
			                        						<c:if test = "${candidateEducationDetails['employeedInPSU'] == 'yes'}">
				                          						<option value="yes">Yes</option>
				                          						<option value="no">No</option>
				                          					</c:if>
				                          					<c:if test = "${candidateEducationDetails['employeedInPSU'] == 'no'}">
				                          						<option value="no">No</option>
				                          						<option value="yes">Yes</option>
				                          					</c:if>
			                          					</c:if>
			                          					<c:if test = "${candidateEducationDetails == null}">
			                          						<option value="no">Please Select</option>
			                        						<option value="yes">Yes</option>
			                        						<option value="no">No</option>
			                          					</c:if>
			                        				</select>
												</td>
												<td></td>
                    						</tr>
                    						<tr>
                      							<td width="30%">Hostel Requirement / छात्रावास की आवश्यकता:  <strong style="color: red">*</strong> </td>
                      							<td width="30%">
													<input type="text" class="form-control" id="visibleMarksIdentification" value="${candidateEducationDetails['visibleMarksIdentification']}">
												</td>
												<td></td>
                    						</tr>
                    						<tr>
                      							<td width="30%">Transport Requirement / परिवहन आवश्यकता : </td>
                      							<td width="30%">
													<input type="text" class="form-control" id="extraCurricularActivity" value="${candidateEducationDetails['extraCurricularActivity']}">
												</td>
												<td></td>
                    						</tr>
                  						</thead>
                					</table>
              					</div>
            				</fieldset>
            				<div class="clearfix">
            					<c:if test="${educationDetailsList==null}">
									<div class="row d-flex justify-content-center align-items-center">
	      								<span id="save-qualification-details" class="form-wizard-next-btn ">Save &amp; Next <i class="fa fa-angle-double-right"></i></span>
					        		</div>
								</c:if>
      							<c:if test="${educationDetailsList!=null}">
									<div class="row d-flex justify-content-center align-items-center">
	      								<span id="save-qualification-details" class="form-wizard-next-btn ">Update &amp; Move to Preview <i class="fa fa-angle-double-right"></i></span>
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
		<script src="javascript/qualification.detail.script.js"></script>
	</body>
</html>