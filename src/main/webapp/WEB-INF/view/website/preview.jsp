<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en" >
	<head>
		<title>SVSU UNIVERSITY</title>
		<jsp:include page="css.jsp" />
		<!-- <style type="text/css">
			#blink {
	            font-size: 15px;
	            font-weight: bold;
	            font-family: sans-serif;
	        }
	    </style> -->
	</head>
	<body>
		<input type="hidden" id="post" value="${previewData.candidateBasicInfo.candidateBasicInfo.post}">
		<input type="hidden" id="category" value="${previewData.candidateBasicInfo.candidateBasicInfo.category}">
		<input type="hidden" id="pwbd" value="${previewData.candidateBasicInfo.candidateBasicInfo.pwbd}">
		<input type="hidden" id="isExServiceman" value="${previewData.candidateBasicInfo.candidateBasicInfo.isExServiceman}">
		<input type="hidden" id="departmentalCandidate" value="${previewData.candidateBasicInfo.candidateBasicInfo.departmentalCandidate}">
		
		<jsp:include page="navbar.jsp" />
		<div class="container-fluid">
  			<div class="wizard-form">
    			<section class="wizard-section">
      				<div class="col-lg-12 col-md-12">
        				<div class="form-wizard">
          					<form action="" method="post" role="form">
            					<div class="form-wizard-header">
              						<ul class="list-unstyled form-wizard-steps clearfix">
						                <li class="activated"><a> <span><i class="fas fa-exclamation"></i></span> <strong>Basic Information</strong> </a></li>
						                <li class="activated"><a><span><i class="fas fa-list"></i></span><strong>Personal Details</strong></a></li>
						                <li class="activated"><a><span><i class="fas fa-book-reader"></i></span><strong>Educational Details</strong></a></li>
						                <li class="activated"><a><span><i class="fas fa-user-tie"></i></span><strong>Signature &amp; Photo</strong></a></li>
						                <li class="active"><a><span><i class="fas fa-check"></i></span><strong>preview</strong></a></li>
						                <li><a><span><i class="fas fa-rupee-sign"></i></span><strong>payment</strong></a></li>
						                <li><a><span><i class="fas fa-check"></i></span><strong>payment preview</strong></a></li>
              						</ul>
            					</div>
            					<fieldset class="wizard-fieldset">
              						<!-- <h5>Basic Information <a href="edit-basic-info" class="text-white" style="margin-left: 85%" title="Edit Basic Information"><i class="fa fa-edit"></i></a></h5> -->
              						<h5>Basic Information</h5>
              						<div class="proifle-card">
                						<table class="table table-striped">
                  							<tbody>
							                    <tr>
							                      	<td>Application No</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.provisionalApplicationNumber}</td>
							                      	<td rowspan="5">
							                      		<div><a href="edit-sign-photo" class="text-info" style="margin-left: 5%" title="Edit Basic Information">Edit Sign Photo <i class="fa fa-edit"></i></a></div><br>
							                      		<div><img class="photo-img" src="${previewData.candidateSignPhoto.candidateSignPhoto.photoURL}" alt=""></div>
							                        	<div><img class="sign-image" src="${previewData.candidateSignPhoto.candidateSignPhoto.signURL}" alt=""></div>
							                        </td>
							                    </tr>
							                    <tr>
							                      	<td>Full Name</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.fullName)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Mobile No</td>
							                      	<td>${previewData.candidateBasicInfo.candidateBasicInfo.mobileNumber}</td>
							                    </tr>
							                    <tr>
							                      	<td>Alternative Number<br>(Mobile No/LandLine No)</td>
							                      	<td> ${previewData.candidateBasicInfo.candidateBasicInfo.alternateMobileNumber} </td>
							                    </tr>
							                    <tr>
							                      	<td>Email Id</td>
							                      	<td> ${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.emailId)} </td>
							                    </tr>
							                </tbody>
							            </table>

              						</div>
            					</fieldset>
            					<fieldset class="wizard-fieldset">
              						<h5>Personal Details <a href="edit-basic-details" class="text-white" style="margin-left: 75%" title="Edit Basic Information">Edit Basic Details <i class="fa fa-edit"></i></a></h5>
              						<div class="proifle-card">
                						<table class="table table-striped">
                  							<tbody>
                  								<tr>
							                      	<td>Religion to which you belong</td>
							                     	<td>${fn:toUpperCase(previewData.candidateBasicDetails.candidateBasicDetails.religion)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Nationality/Citizenship</td>
							                     	<td>${fn:toUpperCase(previewData.candidateBasicDetails.candidateBasicDetails.nationality)}</td>
							                    </tr>
							                    <tr>
							                      	<td colspan="2"><hr></td>
							                    </tr>
							                    <tr>
							                      	<td>Any valid govt. Identity no. (Like Aadhar no./Pan No./Passport no. etc)</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicDetails.candidateBasicDetails.anyValidGovtIdentityNumber)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Father's name</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicDetails.candidateBasicDetails.fatherName)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Mother's name</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicDetails.candidateBasicDetails.motherName)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Martial Status</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicDetails.candidateBasicDetails.maritalStatus)}</td>
							                    </tr>
							                    <c:if test="${previewData.candidateBasicDetails.candidateBasicDetails.maritalStatus=='married'}">
							                    	<tr>
								                      	<td>Spouse name</td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicDetails.candidateBasicDetails.spouseName)}</td>
								                    </tr>
							                    </c:if>
							                    <tr>
							                      	<td>State of Domicile</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicDetails.candidateBasicDetails.domicile)}</td>
							                    </tr>
							                    <tr>
							                      	<td colspan="3"><h6>Correspondence Address</h6></td>
							                    </tr>
							                    <tr>
							                      	<td>Address</td>
							                      	<td>
														${previewData.candidateBasicDetails.candidateBasicDetails.caAddress1} 
							                      		${previewData.candidateBasicDetails.candidateBasicDetails.caAddress2} 
							                      		${previewData.candidateBasicDetails.candidateBasicDetails.caAddress3}
													</td>
							                    </tr>
												<tr>
							                      	<td>State</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.caState}</td>
							                    </tr>
												<tr>
							                      	<td>District</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.caDistrict}</td>
							                    </tr>
							                    <tr>
							                      	<td>PO (Post Office)</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.caPostOffice}</td>
							                    </tr>
							                    <tr>
							                      	<td>PS (Police Station)</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.caPoliceStation}</td>
							                    </tr>
												<tr>
							                      	<td>Pincode</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.caPincode}</td>
							                    </tr>
												<tr>
							                      	<td>Nearest Railway Station</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.caNearestRailwayStation}</td>
							                    </tr>
							                    <tr>
							                      	<td colspan="3"><h6>Permanent Address</h6></td>
							                    </tr>
							                    <tr>
							                      	<td>Address</td>
							                      	<td>
														${previewData.candidateBasicDetails.candidateBasicDetails.paAddress1} 
							                      		${previewData.candidateBasicDetails.candidateBasicDetails.paAddress2} 
							                      		${previewData.candidateBasicDetails.candidateBasicDetails.paAddress3}
													</td>
							                    </tr>
												<tr>
							                      	<td>State</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.paState}</td>
							                    </tr>
												<tr>
							                      	<td>District</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.paDistrict}</td>
							                    </tr>
							                    <tr>
							                      	<td>PO (Post Office)</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.paPostOffice}</td>
							                    </tr>
							                    <tr>
							                      	<td>PS (Police Station)</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.paPoliceStation}</td>
							                    </tr>
												<tr>
							                      	<td>Pincode</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.paPincode}</td>
							                    </tr>
												<tr>
							                      	<td>Nearest Railway Station</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.paNearestRailwayStation}</td>
							                    </tr>
							                    <tr>
							                      	<td colspan="3"><h6>Exam City</h6></td>
							                    </tr>
												<tr>
							                      	<td>Exam City Preference 1</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.examCity1}</td>
							                    </tr>
												<tr>
							                      	<td>Exam City Preference 2</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.examCity2}</td>
							                    </tr>
												<tr>
							                      	<td>Exam City Preference 3</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.examCity3}</td>
							                    </tr>
                  							</tbody>
                						</table>
              						</div>
            					</fieldset>
            					<fieldset class="wizard-fieldset">
              						<h5>Educational Qualification <a href="edit-qualification-details" class="text-white" style="margin-left: 70%" title="Edit Educational Qualification">Edit Educational Qualification <i class="fa fa-edit"></i></a></h5>
              						<div class="proifle-card">
                						<table class="table table-striped">
					                		<thead>
						                    	<tr>
						                      		<th rowspan="2">Qualification Name</th>
							                      	<th rowspan="2">Discipline/Trade</th>
							                      	<th rowspan="2">Month of Passing Exam</th>
							                      	<th rowspan="2">Year of Passing Exam</th>
							                      	<th rowspan="2">School /Board /University /Institution /Technical Board</th>
							                      	<th rowspan="2">Division</th>
							                      	<th rowspan="2">Mode of Study</th>
							                      	<th rowspan="2">Marking Scheme Marks/Grade</th>
							                      	<th colspan="3" class="text-center">Marks Secured</th>
						                    	</tr>
						                    	<tr>
						                    		<th>Marks Obtained</th>
						                    		<th>Max. Marks</th>
						                    		<th>% of Marks</th>
						                    	</tr>
						                  	</thead>
						                  	<tbody>
						                  		<c:forEach var="educationDetails" items="${previewData.candidateEducationDetails.educationDetailsList}">
						                  			<c:if test="${educationDetails.qualification=='sslc'}">
							                  			<tr>
							                  				<td>10th</td>
							                  				<td>${educationDetails.trade}</td>
									                      	<td>${educationDetails.month}</td>
									                      	<td>${educationDetails.year}</td>
									                      	<td>${educationDetails.institute}</td>
									                      	<td>${educationDetails.duration}</td>
									                        <td>${educationDetails.mode}</td>
									                      	<td>${educationDetails.grade}</td>
									                      	<td>${educationDetails.marksObtained}</td>
									                      	<td>${educationDetails.marksMax}</td>
									                      	<td>${educationDetails.marksPercentage}</td>
							                  			</tr>
							                  		</c:if>
						                  		</c:forEach>
						                  		<c:forEach var="educationDetails" items="${previewData.candidateEducationDetails.educationDetailsList}">
						                  			<c:if test="${educationDetails.qualification=='intermediate'}">
							                  			<tr>
							                  				<td>12th</td>
							                  				<td>${educationDetails.trade}</td>
									                      	<td>${educationDetails.month}</td>
									                      	<td>${educationDetails.year}</td>
									                      	<td>${educationDetails.institute}</td>
									                      	<td>${educationDetails.duration}</td>
									                        <td>${educationDetails.mode}</td>
									                      	<td>${educationDetails.grade}</td>
									                      	<td>${educationDetails.marksObtained}</td>
									                      	<td>${educationDetails.marksMax}</td>
									                      	<td>${educationDetails.marksPercentage}</td>
							                  			</tr>
							                  		</c:if>
						                  		</c:forEach>
						                  		<c:forEach var="educationDetails" items="${previewData.candidateEducationDetails.educationDetailsList}">
						                  			<c:if test="${educationDetails.qualification=='diploma'}">
							                  			<tr>
							                  				<td>
							                  					<c:if test="${previewData.candidateBasicInfo.candidateBasicInfo.post=='6'}">Degree</c:if>
							                  					<c:if test="${previewData.candidateBasicInfo.candidateBasicInfo.post!='6'}">Diploma</c:if>
							                  				</td>
							                  				<td>${educationDetails.trade}</td>
									                      	<td>${educationDetails.month}</td>
									                      	<td>${educationDetails.year}</td>
									                      	<td>${educationDetails.institute}</td>
									                      	<td>${educationDetails.duration}</td>
									                        <td>${educationDetails.mode}</td>
									                      	<td>${educationDetails.grade}</td>
									                      	<td>${educationDetails.marksObtained}</td>
									                      	<td>${educationDetails.marksMax}</td>
									                      	<td>${educationDetails.marksPercentage}</td>
							                  			</tr>
							                  		</c:if>
						                  		</c:forEach>
						                  		<tr><td colspan="11"></td></tr>
						                  		<tr class="bg-secondary">
					                  				<td colspan="11" class="text-white font-weight-bold">Other Qualification Details</td>
					                  			</tr>
					                  			<c:forEach var="educationDetails" items="${previewData.candidateEducationDetails.educationDetailsList}">
						                  			<c:if test="${educationDetails.qualification=='other-one'}">
							                  			<tr>
							                  				<td>Other 1</td>
							                  				<td>${educationDetails.trade}</td>
									                      	<td>${educationDetails.month}</td>
									                      	<td>${educationDetails.year}</td>
									                      	<td>${educationDetails.institute}</td>
									                      	<td>${educationDetails.duration}</td>
									                        <td>${educationDetails.mode}</td>
									                      	<td>${educationDetails.grade}</td>
									                      	<td>${educationDetails.marksObtained}</td>
									                      	<td>${educationDetails.marksMax}</td>
									                      	<td>${educationDetails.marksPercentage}</td>
							                  			</tr>
							                  		</c:if>
						                  		</c:forEach>
						                  		<c:forEach var="educationDetails" items="${previewData.candidateEducationDetails.educationDetailsList}">
						                  			<c:if test="${educationDetails.qualification=='other-two'}">
							                  			<tr>
							                  				<td>Other 2</td>
							                  				<td>${educationDetails.trade}</td>
									                      	<td>${educationDetails.month}</td>
									                      	<td>${educationDetails.year}</td>
									                      	<td>${educationDetails.institute}</td>
									                      	<td>${educationDetails.duration}</td>
									                        <td>${educationDetails.mode}</td>
									                      	<td>${educationDetails.grade}</td>
									                      	<td>${educationDetails.marksObtained}</td>
									                      	<td>${educationDetails.marksMax}</td>
									                      	<td>${educationDetails.marksPercentage}</td>
							                  			</tr>
							                  		</c:if>
						                  		</c:forEach>
						                  		<c:forEach var="educationDetails" items="${previewData.candidateEducationDetails.educationDetailsList}">
						                  			<c:if test="${educationDetails.qualification=='other-three'}">
							                  			<tr>
							                  				<td>Other 3</td>
							                  				<td>${educationDetails.trade}</td>
									                      	<td>${educationDetails.month}</td>
									                      	<td>${educationDetails.year}</td>
									                      	<td>${educationDetails.institute}</td>
									                      	<td>${educationDetails.duration}</td>
									                        <td>${educationDetails.mode}</td>
									                      	<td>${educationDetails.grade}</td>
									                      	<td>${educationDetails.marksObtained}</td>
									                      	<td>${educationDetails.marksMax}</td>
									                      	<td>${educationDetails.marksPercentage}</td>
							                  			</tr>
							                  		</c:if>
						                  		</c:forEach>
						                  		<tr><td colspan="11"></td></tr>
					                  		</tbody>
					                  	</table>
						                <div class="proifle-card">
						                	<c:if test="${previewData.candidateEducationDetails.experienceDetailsList != null}">
			                					<table class="table table-striped">	
								                    <tr>
								                      	<td colspan="3"><h6>Work Experience Details</h6></td>
								                    </tr>
								                  	<thead>
								                    	<tr>
								                      		<th>Employer Name</th>
								                      		<th>Designation</th>
								                      		<th>Service From</th>
								                      		<th>Service To</th>
								                      		<th>Nature of Duty</th>
								                      		<th>Reason For Leaving</th>
								                      		<th>Year</th>
								                      		<th>Month</th>
								                      		<th>Day</th>
								                    	</tr>
								                  	</thead>
				                  					<!-- <tbody id="experienceDetailList"> -->
				                  					<tbody>
					                      				<c:forEach var="experienceDetails" items="${previewData.candidateEducationDetails.experienceDetailsList}" varStatus="row">
			                  								<tr>
					                      						<td>${experienceDetails.employerName}</td>
					                      						<td>${experienceDetails.designation}</td>
										                      	<td>${experienceDetails.serviceFrom}</td>
										                      	<td>${experienceDetails.serviceTo}</td>
										                      	<td>${experienceDetails.natureOfDuty}</td>
										                      	<td>${experienceDetails.reasonForLeaving}</td>
										                      	<td>${experienceDetails.year}</td>
										                      	<td>${experienceDetails.month}</td>
										                      	<td>${experienceDetails.day}</td>
					                     					</tr>
				                     					</c:forEach>
				                  					</tbody>
				                				</table>
				                				<table class="table table-striped">
				                  					<tbody>
				                    					<tr>
				                      						<td colspan="7"> Total experience </td>
				                      						<td colspan="2">${previewData.candidateEducationDetails.candidateEducationDetails.totalExperience}</td>
				                    					</tr>
				                  					</tbody>
				                				</table>
				                			</c:if>
			              				</div>
              						</div>
              						<div class="proifle-card">
	                					<table class="table table-striped">
	                  						<thead>
	                    						<tr>
	                      							<td colspan="3"><h6>Language Known</h6></td>
	                    						</tr>
	                  						</thead>
	                  						<tbody>
	                  							<c:if test="${previewData.candidateEducationDetails.languageDetailsList != null}">
	                  								<c:forEach var="editLanguage" items="${previewData.candidateEducationDetails.languageDetailsList}" varStatus="index">
		                  								<tr>
									                      	<td width="250px">${fn:toUpperCase(editLanguage.language)}</td>
									                      	<td class="radio-label-col">
									                      		<span><c:if test="${editLanguage.read=='true'}">Read</c:if></span>
									                        	<span><c:if test="${editLanguage.write=='true'}">Write</c:if></span>
									                        	<span><c:if test="${editLanguage.speak=='true'}">Speak</c:if></span>
									                        </td>
									                    </tr>
								                    </c:forEach>
							                    </c:if>
	                  						</tbody>
	                					</table>
	              					</div>
              						<div class="proifle-card">
	                					<table class="table table-striped">
	                  						<thead>
	                    						<tr>
	                      							<td colspan="3"><h6>Other Details</h6></td>
	                    						</tr>
	                  						</thead>
	                  						<tbody>
                  								<tr>
							                      	<td width="30%">Whether College/Institution approved by AICTE?</td>
							                      	<td width="30%">
							                      		${previewData.candidateEducationDetails.candidateEducationDetails.whetherCollegeAICTEApproved}
							                        </td>
							                    </tr>
							                    <c:if test="${previewData.candidateEducationDetails.candidateEducationDetails.whetherCollegeAICTEApproved=='yes'}">
							                    	<tr>
								                      	<td>Name of College/Institution</td>
								                      	<td>${fn:toUpperCase(previewData.candidateEducationDetails.candidateEducationDetails.collegeInstituteName)}</td>
								                    </tr>
							                    </c:if>
							                    <c:if test="${previewData.candidateEducationDetails.candidateEducationDetails.whetherCollegeAICTEApproved=='no'}">
							                    	<tr>
								                      	<td>Name of Other Statutory Body</td>
								                      	<td>${fn:toUpperCase(previewData.candidateEducationDetails.candidateEducationDetails.otherStatutoryBody)}</td>
								                    </tr>
							                    </c:if>
                  								<tr>
							                      	<td width="30%">Are you employed in any Govt. /Semi Govt. /Public Sector Undertaking?</td>
							                      	<td width="30%">
							                      		${previewData.candidateEducationDetails.candidateEducationDetails.employeedInPSU}
							                        </td>
							                    </tr>
                  								<tr>
							                      	<td width="30%">Visible marks of identification (Mole marks/Wound/Scar/Burn etc.)</td>
							                      	<td width="30%">
							                      		${previewData.candidateEducationDetails.candidateEducationDetails.visibleMarksIdentification}
							                        </td>
							                    </tr>
                  								<tr>
							                      	<td width="30%">Extra-Curricular Activities (Only University/District/State/National Level): </td>
							                      	<td width="30%">
							                      		${previewData.candidateEducationDetails.candidateEducationDetails.extraCurricularActivity}
							                        </td>
							                    </tr>
                  								<tr>
							                      	<td width="30%">Details of any Criminal/Civil/Vigilance/Disciplinary case in which the candidate is involved </td>
							                      	<td width="30%">
							                      		${previewData.candidateEducationDetails.candidateEducationDetails.criminalCaseDetails}
							                        </td>
							                    </tr>
	                  						</tbody>
	                					</table>
	              					</div>
	              				</fieldset>
	              				<c:if test="${
	              					previewData.candidateBasicInfo.candidateBasicInfo.pwbd=='no' && 
	              					previewData.candidateBasicInfo.candidateBasicInfo.isExServiceman=='no' && 
				  					previewData.candidateBasicInfo.candidateBasicInfo.departmentalCandidate=='no' && 
	              					(previewData.candidateBasicInfo.candidateBasicInfo.category=='general' || 
	              					previewData.candidateBasicInfo.candidateBasicInfo.category=='ews' || 
	              					previewData.candidateBasicInfo.candidateBasicInfo.category=='obc-ncl')}">
	              				<fieldset class="wizard-fieldset">
              						<h5>Payment Details </h5>
					              	<div class="proifle-card">
					                	<table class="table table-striped">
            								<tbody>
						 						<tr>
													<td align="left" colspan="2" class="bg-white">
														Payment Amount
													</td>
													<td align="left" colspan="2" class="bg-white">
														300/-
													</td>
												</tr>
											</tbody>
										</table>
					              	</div>
            					</fieldset>
            					</c:if>
            					<fieldset class="wizard-fieldset">
              						<h5>Declaration:</h5>
					              	<div class="proifle-card">
					                	<p>
					                		DECLARATION: I, do hereby declare that all the statements made in this application are true, complete, correct to the best of my knowledge and in the event of any information being found false, incomplete, incorrect or concealing the fact, my candidature may be cancelled at any stage without any notice and without assigning any reason thereof even after selection.
										</p>
					              	</div>
            					</fieldset>
            					<fieldset class="wizard-fieldset ">
            						<div class="proifle-card">
            							<table class="table table-striped">
            								<tbody>
						 						<tr>
													<td align="left" colspan="2" class="bg-white">
														<input type="hidden" id="application_status" value="${previewData.candidateDetails.candidateDetails.applicationStatus}">
														<input type="checkbox" id="confirm_final_submit" class="mr-2" <c:if test="${previewData.candidateDetails.candidateDetails.applicationStatus == 'completed'}">checked</c:if> >
														I agree
													</td>
              									</tr>
                								<tr>  
				  									<td align="right" colspan="3"><img class="sign-image" src="${previewData.candidateSignPhoto.candidateSignPhoto.signURL}" alt=""></td>
              									</tr>
              									<tr style="background-color: rgba(0,0,0,.05)">
				   									<td align="right" colspan="3">
				   										<input type="checkbox" id="confirm_sign" class="mr-2" <c:if test="${previewData.candidateDetails.candidateDetails.applicationStatus == 'completed'}">checked</c:if> >
				   										I confirmed that this is my signature
				   									</td>
              									</tr>
												<tr class="bg-white ">
				  									<td align="left" class="pt-5" colspan="2">Date : <% Date date = new Date(); SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy"); out.print(sdf.format(date)); %></td>
													<td align="right" class="pt-5">Signature of Applicant</td>
              									</tr>
											</tbody>
										</table>
            						</div>
            					</fieldset>
            					<div class="clearfix text-center">
            						<!-- <a href="edit-upload-details" class="form-wizard-next-btn float-left"><i class="fa fa-angle-double-left"></i>Previous</a> -->
            						<span id="confirm-preview" class="form-wizard-next-btn">Save &amp; Next<i class="fa fa-angle-double-right"></i></span>
            						<!-- <p id="blink" style="color: red">PAYMENT OF APPLICATION FEE CAN BE MADE BY 6TH JUNE ONWARDS</p> -->
            					</div>
          					</form>
        				</div>
      				</div>
    			</section>
  			</div>
		</div>
		<jsp:include page="footer.jsp" />
		<jsp:include page="modal.jsp" />
		<jsp:include page="js.jsp" />
		<script src="javascript/preview.script.js"></script>
	</body>
</html>