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
		<meta http-equiv="cache-control" content="max-age=0" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
		<meta http-equiv="pragma" content="no-cache" />
		<jsp:include page="css.jsp" />
	</head>
	<body>
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
						                <li class="activated"><a><span><i class="fas fa-check"></i></span><strong>preview</strong></a></li>
						                <li class="activated"><a><span><i class="fas fa-rupee-sign"></i></span><strong>payment</strong></a></li>
						                <li class="active"><a><span><i class="fas fa-check"></i></span><strong>payment preview</strong></a></li>
              						</ul>
            					</div>
            					<fieldset class="wizard-fieldset">
              						<h5>Basic Information</h5>
              						<a href="print-application-form" class="form-wizard-next-btn pull-right" style="float: right; margin-top: -43px;  margin-right: 50px;">
              							<!-- <button style="float: right; margin-top: -43px;  margin-right: 50px; background: #424293; color: white; border-color: white;"> -->
              								<i class="fa fa-print" aria-hidden="true"></i> Print Application Form
              							<!-- </button> -->
              						</a>
              						<div class="proifle-card">
                						<table class="table table-striped">
                  							<tbody>
							                    <tr>
							                      	<td>Application No</td>
							                      	<td>${previewData.candidateBasicDetails.candidateBasicDetails.provisionalApplicationNumber}</td>
							                      	<td rowspan="5">
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
							            <hr>
							            <table class="table table-striped">
                  							<tbody>
							                    <tr>
							                      	<td>Applied Post Name</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.postText)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Do you have Surveyors’ certificate of competency issued by DGMS?</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.mineSurveyorCertificate)}</td>
							                    </tr>
							                    <c:if test="${previewData.candidateBasicInfo.candidateBasicInfo.mineSurveyorCertificate=='yes'}">
									                <tr>
								                      	<td>Mine Surveyor Certificate Year : </td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.mineSurveyorCertificateYear)}</td>
								                    </tr>
							                    </c:if>
							                    <tr>
							                      	<td>Are you PWBD? : </td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.pwbd)}</td>
							                    </tr>
							                    <c:if test="${previewData.candidateBasicInfo.candidateBasicInfo.pwbd=='yes'}">
									                <tr>
								                      	<td>PWBD Details? : </td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.pwbdDetails)}</td>
								                    </tr>
								                    <tr>
								                      	<td>PWBD Sub-Category? : </td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.pwbdSubCategory)}</td>
								                    </tr>
								                    <tr>
								                      	<td>Do you need a scribe? : </td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.needScribe)}</td>
								                    </tr>
							                    </c:if>
							                    <tr>
							                      	<td>Are you Ex-Serviceman? : </td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.isExServiceman)}</td>
							                    </tr>
							                    <c:if test="${previewData.candidateBasicInfo.candidateBasicInfo.isExServiceman=='yes'}">
								                    <tr>
								                      	<td>Ex-Serviceman Experience (in year, months and days)</td>
								                      	<td>
								                      		${previewData.candidateBasicInfo.candidateBasicInfo.exServicemanExperienceInYears} YEARS,
								                      		${previewData.candidateBasicInfo.candidateBasicInfo.exServicemanExperienceInMonths} MONTHS AND
								                      		${previewData.candidateBasicInfo.candidateBasicInfo.exServicemanExperienceInDays} DAYS
								                      	</td>
								                    </tr>
							                    </c:if>
							                    <tr>
							                      	<td>Having domicile in the State of Jammu & Kashmir during the Period 01.01.1980 to 31.12.1989 ? </td>
							                     	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.havingDomicileJK)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Are you DVC Departmental Candidate? </td>
							                     	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.departmentalCandidate)}</td>
							                    </tr>
							                    <c:if test="${previewData.candidateBasicInfo.candidateBasicInfo.departmentalCandidate=='yes'}">
									                <tr>
								                      	<td>Please Enter Employee Number : </td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.employeeNumber)}</td>
								                    </tr>
									                <tr>
								                      	<td>Please Enter Place Of Posting : </td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.placeOfPosting)}</td>
								                    </tr>
									                <tr>
								                      	<td>Please Enter Date Of Joining : </td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.dateOfJoining)}</td>
								                    </tr>
									                <tr>
								                      	<td>Please Enter Present Designation : </td>
								                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.presentDesignation)}</td>
								                    </tr>
							                    </c:if>
							                    <tr>
							                      	<td>Category</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.category)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Gender</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.gender)}</td>
							                    </tr>
							                    <tr>
							                      	<td>Date of birth</td>
							                      	<td>
														${previewData.candidateBasicInfo.candidateBasicInfo.dobDay} - 
							                      		${previewData.candidateBasicInfo.candidateBasicInfo.dobMonth} - 
							                      		${previewData.candidateBasicInfo.candidateBasicInfo.dobYear}
													</td>
							                    </tr>
							                    <tr>
							                      	<td>Age Completed</td>
							                      	<td>${fn:toUpperCase(previewData.candidateBasicInfo.candidateBasicInfo.ageCompleted)}</td>
							                    </tr>
                  							</tbody>
                						</table>
              						</div>
            					</fieldset>
            					<fieldset class="wizard-fieldset">
              						<h5>Personal Details</h5>
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
							                    </tr><tr>
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
              						<h5>Educational Qualification</h5>
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
	              						<h5>Payment Details</h5>
	              						<div class="proifle-card">
	                						<table class="table table-striped">
						                		<thead>
							                    	<tr>
							                      		<th rowspan="2">SBI Reference Id</th>
								                      	<th rowspan="2">Bank Reference Number</th>
								                      	<th rowspan="2">Payment Mode</th>
								                      	<th rowspan="2">Amount</th>
								                      	<th rowspan="2">Transaction Date</th>
								                      	<th rowspan="2">Transaction Status</th>
								                      	<th rowspan="2">Message</th>
							                    	</tr>
							                  	</thead>
							                  	<tbody>
							                  		<tr>
						                  				<td>${previewData.candidatePaymentDetails.paymentDetails.paymentDetails.sbiEPayRefIdORATRN}</td>
						                  				<td>${previewData.candidatePaymentDetails.paymentDetails.paymentDetails.bankReferenceNumber}</td>
								                      	<td>${previewData.candidatePaymentDetails.paymentDetails.paymentDetails.paymentMode}</td>
								                      	<td>${previewData.candidatePaymentDetails.paymentDetails.paymentDetails.amount} (${previewData.candidatePaymentDetails.paymentDetails.paymentDetails.currency})</td>
								                      	<td>${previewData.candidatePaymentDetails.paymentDetails.paymentDetails.transactionDate}</td>
								                      	<td>${previewData.candidatePaymentDetails.paymentDetails.paymentDetails.transactionStatus}</td>
								                        <td>${previewData.candidatePaymentDetails.paymentDetails.paymentDetails.resonORMessage}</td>
						                  			</tr>
							                  	</tbody>
							                </table>
							            </div>
							        </fieldset>
							    </c:if>
          					</form>
        				</div>
      				</div>
    			</section>
  			</div>
		</div>
		<jsp:include page="footer.jsp" />
		<jsp:include page="modal.jsp" />
		<jsp:include page="js.jsp" />
	</body>
</html>