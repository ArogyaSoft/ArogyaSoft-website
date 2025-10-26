<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

	<head>
	  	<meta charset="utf-8" />
	  	<meta http-equiv="Content-type:multipart/related" content="text/html; charset=UTF-8"/>
	  	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	  	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
		<title>${applicationData.candidateDetails.candidateDetails.provisionalApplicationNumber}_APPLICATION_FORM_DVC</title>
		
	  	<link rel="shortcut icon" href="images/icon.png" type="image/x-icon">
	  	<link rel="stylesheet" href="assets/print-application-form/css/dashboard.css">
	  	<link rel="stylesheet" href="assets/print-application-form/css/bootstrap.min.css">
	  	<link rel="stylesheet" href="assets/print-application-form/css/style.css">
	  	<link rel="stylesheet" href="assets/print-application-form/css/font-awesome.min.css"> <!----Font-4.7-->
	  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
	  	<script language="JavaScript" type="text/javascript" src="assets/print-application-form/js/jquery.js"></script><!---Ver 3.4.1-->
	  	<script language="JavaScript" type="text/javascript" src="assets/print-application-form/js/popper.min.js"></script>
	  	<script language="JavaScript" type="text/javascript" src="assets/print-application-form/js/bootstrap.min.js" defer></script>
	  	<style>
	  		::-webkit-scrollbar {width: 8px;} 
	  		::-webkit-scrollbar-track {background: #f1f1f1;}
	  		::-webkit-scrollbar-thumb {background: #ddd;}
	  		::-webkit-scrollbar-thumb:hover {background: #555;}
	  	</style>
	  	<style type="text/css">
  			@media print {
         		#screen {display: none;}
         		.btn {display: none;}
      		}
		</style>
	</head>
	<body class="" style="font-family: Helvetica, sans-serif; scroll-behavior : smooth; overflow-x: hidden">
		<main class="col-md-12 ms-sm-auto col-lg-12">
			<!----------- Main Body Strat --------->
			<section class="mt-2">
				<table class="table-bordered-0 full-width-table">
  					<tr>
    					<td width="100px"><img src="images/dvc-logo.png" class="w-100" alt="hal-logo"></td>
    					<td class="text-center" align="top p-1">
        					<h3 class="fw-bold m-0">Damodar Valley Corporation</h3>
        					<span><br>DVC Towers, VIP Road Kolkata - 700054</span><br>
        					<span class="text-info p-3">PRINTED APPLICATION FORM</span>
    					</td>
    					<!-- <td width="80px"><img src="assets/print-application-form/images/ashok_stambh.png" class="w-100" alt="ashok_stambh_logo"></td> -->
  					</tr>
				</table>
				<table class="p-1 table-bordered tbt-border full-width-table">
					<tbody>
						<tr>
							<td>Application No</td>
	                      	<td colspan="2">${applicationData.candidateBasicDetails.candidateBasicDetails.provisionalApplicationNumber}</td>
						</tr>
	                    <tr>
	                      	<td>Full Name</td>
	                      	<td>${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.fullName)}</td>
	                      	<td class="text-center" rowspan="4" style="border-left: 1px solid #333; padding: 2px;">
	                      		<div><img src="${applicationData.candidateSignPhoto.candidateSignPhoto.photoURL}" alt="photo" height="140px" width="150px"></div>
	                        	<div><img src="${applicationData.candidateSignPhoto.candidateSignPhoto.signURL}" alt="signature" height="25px" width="150px"></div>
	                        </td>
	                    </tr>
	                    <tr>
	                      	<td>Mobile No</td>
	                      	<td>${applicationData.candidateBasicInfo.candidateBasicInfo.mobileNumber}</td>
	                    </tr>
	                    <tr>
	                      	<td>Alternative Number<br>(Mobile No/LandLine No)</td>
	                      	<td> ${applicationData.candidateBasicInfo.candidateBasicInfo.alternateMobileNumber} </td>
	                    </tr>
	                    <tr>
	                      	<td>Email Id</td>
	                      	<td> ${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.emailId)} </td>
	                    </tr>
	                </tbody>
				</table>
				<table class="p-1 table-bordered full-width-table">
           			<tbody>
	                    <tr>
	                      	<td style="border-right:none;">Applied Post Name</td>
	                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.postText)}</td>
	                    </tr>
	                    <tr>
	                      	<td style="border-right:none;">Do you have Surveyors’ certificate of competency issued by DGMS?</td>
	                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.mineSurveyorCertificate)}</td>
	                    </tr>
	                    <c:if test="${applicationData.candidateBasicInfo.candidateBasicInfo.mineSurveyorCertificate=='yes'}">
			                <tr>
		                      	<td style="border-right:none;">Mine Surveyor Certificate Year : </td>
		                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.mineSurveyorCertificateYear)}</td>
		                    </tr>
	                    </c:if>
	                    <tr>
	                      	<td style="border-right:none;">Are you PwBD? : </td>
	                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.pwbd)}</td>
	                    </tr>
	                    <c:if test="${applicationData.candidateBasicInfo.candidateBasicInfo.pwbd=='yes'}">
			                <tr>
		                      	<td style="border-right:none;">PwBD Details? : </td>
		                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.pwbdDetails)}</td>
		                    </tr>
		                    <tr>
		                      	<td style="border-right:none;">PwBD Sub-Category? : </td>
		                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.pwbdSubCategory)}</td>
		                    </tr>
		                    <tr>
		                      	<td style="border-right:none;">Do you need a scribe? : </td>
		                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.needScribe)}</td>
		                    </tr>
	                    </c:if>
	                    <tr>
	                      	<td style="border-right:none;">Are you Ex-Serviceman? : </td>
	                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.isExServiceman)}</td>
	                    </tr>
	                    <c:if test="${applicationData.candidateBasicInfo.candidateBasicInfo.isExServiceman=='yes'}">
		                    <tr>
		                      	<td style="border-right:none;">Ex-Serviceman Experience (in year, months and days)</td>
		                      	<td style="border-left:none;">
		                      		${applicationData.candidateBasicInfo.candidateBasicInfo.exServicemanExperienceInYears} YEARS,
		                      		${applicationData.candidateBasicInfo.candidateBasicInfo.exServicemanExperienceInMonths} MONTHS AND
		                      		${applicationData.candidateBasicInfo.candidateBasicInfo.exServicemanExperienceInDays} DAYS
		                      	</td>
		                    </tr>
	                    </c:if>
	                    <tr>
	                      	<td style="border-right:none;">Having domicile in the State <br> of Jammu & Kashmir during the <br> Period 01.01.1980 to 31.12.1989 ? </td>
	                     	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.havingDomicileJK)}</td>
	                    </tr>
	                    <tr>
	                      	<td style="border-right:none;">Are you DVC Departmental Candidate? </td>
	                     	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.departmentalCandidate)}</td>
	                    </tr>
	                    <c:if test="${applicationData.candidateBasicInfo.candidateBasicInfo.departmentalCandidate=='yes'}">
			                <tr>
		                      	<td style="border-right:none;">Please Enter Employee Number : </td>
		                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.employeeNumber)}</td>
		                    </tr>
			                <tr>
		                      	<td style="border-right:none;">Please Enter Place Of Posting : </td>
		                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.placeOfPosting)}</td>
		                    </tr>
			                <tr>
		                      	<td style="border-right:none;">Please Enter Date Of Joining : </td>
		                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.dateOfJoining)}</td>
		                    </tr>
			                <tr>
		                      	<td style="border-right:none;">Please Enter Present Designation : </td>
		                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.presentDesignation)}</td>
		                    </tr>
	                    </c:if>
	                    <tr>
	                      	<td style="border-right:none;">Category</td>
	                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.category)}</td>
	                    </tr>
	                    <tr>
	                      	<td style="border-right:none;">Gender</td>
	                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.gender)}</td>
	                    </tr>
	                    <tr>
	                      	<td style="border-right:none;">Date of birth</td>
	                      	<td style="border-left:none;">
								${applicationData.candidateBasicInfo.candidateBasicInfo.dobDay} - 
	                      		${applicationData.candidateBasicInfo.candidateBasicInfo.dobMonth} - 
	                      		${applicationData.candidateBasicInfo.candidateBasicInfo.dobYear}
							</td>
	                    </tr>
	                    <tr>
	                      	<td style="border-right:none;">Age Completed</td>
	                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicInfo.candidateBasicInfo.ageCompleted)}</td>
	                    </tr>
           			</tbody>
         		</table>
				<table class="p-1 table-bordered full-width-table">
					<tr>
					  	<td colspan="5" class="p-1 theme-l5 text-uppercase fw-bold bg-info text-center">Basic Details</td>
					</tr>
					<tr>
                      	<td style="border-right:none;">Religion to which you belong</td>
                     	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicDetails.candidateBasicDetails.religion)}</td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">Nationality/Citizenship</td>
                     	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicDetails.candidateBasicDetails.nationality)}</td>
                    </tr>							                    
                    <tr>
                      	<td colspan="2"><hr></td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">Any valid govt. Identity no. <br> (Like Aadhar no./Pan No./Passport no. etc)</td>
                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicDetails.candidateBasicDetails.anyValidGovtIdentityNumber)}</td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">Father's name</td>
                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicDetails.candidateBasicDetails.fatherName)}</td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">Mother's name</td>
                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicDetails.candidateBasicDetails.motherName)}</td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">Martial Status</td>
                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicDetails.candidateBasicDetails.maritalStatus)}</td>
                    </tr>
                    <c:if test="${applicationData.candidateBasicDetails.candidateBasicDetails.maritalStatus=='married'}">
                    	<tr>
	                      	<td style="border-right:none;">Spouse name</td>
	                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicDetails.candidateBasicDetails.spouseName)}</td>
	                    </tr>
                    </c:if>
                    <tr>
                      	<td style="border-right:none;">State of Domicile</td>
                      	<td style="border-left:none;">${fn:toUpperCase(applicationData.candidateBasicDetails.candidateBasicDetails.domicile)}</td>
                    </tr>
                    <tr>
                      	<td colspan="3"><h6><b>Correspondence Address</b></h6></td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">Address</td>
                      	<td style="border-left:none;">
							${applicationData.candidateBasicDetails.candidateBasicDetails.caAddress1} 
                      		${applicationData.candidateBasicDetails.candidateBasicDetails.caAddress2} 
                      		${applicationData.candidateBasicDetails.candidateBasicDetails.caAddress3}
						</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">State</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.caState}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">District</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.caDistrict}</td>
                    </tr>                    
                    <tr>
                      	<td style="border-right:none;">PO (Post Office)</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.caPostOffice}</td>
                    </tr><tr>
                      	<td style="border-right:none;">PS (Police Station)</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.caPoliceStation}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">Pincode</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.caPincode}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">Nearest Railway Station</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.caNearestRailwayStation}</td>
                    </tr>
                    <tr>
                      	<td colspan="3"><h6><b>Permanent Address</b></h6></td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">Address</td>
                      	<td style="border-left:none;">
							${applicationData.candidateBasicDetails.candidateBasicDetails.paAddress1} 
                      		${applicationData.candidateBasicDetails.candidateBasicDetails.paAddress2} 
                      		${applicationData.candidateBasicDetails.candidateBasicDetails.paAddress3}
						</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">State</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.paState}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">District</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.paDistrict}</td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">PO (Post Office)</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.paPostOffice}</td>
                    </tr>
                    <tr>
                      	<td style="border-right:none;">PS (Police Station)</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.paPoliceStation}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">Pincode</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.paPincode}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">Nearest Railway Station</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.paNearestRailwayStation}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">Exam City Preference 1</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.examCity1}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">Exam City Preference 2</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.examCity2}</td>
                    </tr>
					<tr>
                      	<td style="border-right:none;">Exam City Preference 3</td>
                      	<td style="border-left:none;">${applicationData.candidateBasicDetails.candidateBasicDetails.examCity3}</td>
                    </tr>
                </table>		
                <br>		
				<table class="p-1 table-bordered full-width-table tbt-border">
					<tr>
					  	<td colspan="11" class="p-1 theme-l5 text-uppercase fw-bold bg-info text-center">Educational Details</td>
					</tr>
                   	<tr>
                   		<th style="border:0;" rowspan="2">Qualification Name</th>
                      	<th style="border:0;" rowspan="2">Discipline/Trade</th>
                      	<th style="border:0;" rowspan="2">Month of Passing Exam</th>
                      	<th style="border:0;" rowspan="2">Year of Passing Exam</th>
                      	<th style="border:0;" rowspan="2">School /Board /University /Institution /Technical Board</th>
                      	<th style="border:0;" rowspan="2">Division</th>
                      	<th style="border:0;" rowspan="2">Mode of Study</th>
                      	<th style="border:0;" rowspan="2">Marking Scheme Marks/Grade</th>
                      	<th style="border:0;" colspan="3" class="text-center">Marks Secured</th>
                   	</tr>
                   	<tr>
                   		<th>Marks Obtained</th>
                   		<th>Max. Marks</th>
                   		<th>% of Marks</th>
                   	</tr>
                 	<c:forEach var="educationDetails" items="${applicationData.candidateEducationDetails.educationDetailsList}">
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
                 	<c:forEach var="educationDetails" items="${applicationData.candidateEducationDetails.educationDetailsList}">
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
                 	<c:forEach var="educationDetails" items="${applicationData.candidateEducationDetails.educationDetailsList}">
                 		<c:if test="${educationDetails.qualification=='diploma'}">
                  			<tr>
                  				<td>
                  					<c:if test="${applicationData.candidateBasicInfo.candidateBasicInfo.post=='6'}">Degree</c:if>
                  					<c:if test="${applicationData.candidateBasicInfo.candidateBasicInfo.post!='6'}">Diploma</c:if>
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
                	<c:forEach var="educationDetails" items="${applicationData.candidateEducationDetails.educationDetailsList}">
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
                	<c:forEach var="educationDetails" items="${applicationData.candidateEducationDetails.educationDetailsList}">
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
                 	<c:forEach var="educationDetails" items="${applicationData.candidateEducationDetails.educationDetailsList}">
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
                	<tr><td colspan="11">Note : Candidates with CGPA gradations/Grade Scheme will have to convert the grades into marks and enter in the respective columns. </td></tr>
          		</table>
				<%-- <c:if test="false"> --%>
				<br>
				<table class="p-1 table-bordered tbt-border full-width-table">
					<c:if test="${applicationData.candidateEducationDetails.experienceDetailsList != null}">
						<tr>
	  						<td colspan="9" class="p-1 theme-l5 text-uppercase fw-bold text-center">Work Experience details</td>
						</tr>
            			<tr>
                      		<th style="border:0;">Employer Name</th>
                      		<th style="border:0;">Designation</th>
                      		<th style="border:0;">Service From</th>
                      		<th style="border:0;">Service To</th>
                      		<th style="border:0;">Nature of Duty</th>
                      		<th style="border:0;">Reason For Leaving</th>
                      		<th style="border:0;">Year</th>
                      		<th style="border:0;">Month</th>
                      		<th style="border:0;">Day</th>
                    	</tr>
                    	<c:forEach var="experienceDetails" items="${applicationData.candidateEducationDetails.experienceDetailsList}" varStatus="row">
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
	               			<tr>
                  				<td colspan="7"> Total experience </td>
                  				<td colspan="2">${applicationData.candidateEducationDetails.candidateEducationDetails.totalExperience}</td>
                			</tr>
            		</c:if>
            		<tr>
						<td colspan="9"><h6><b>Language Known</b></h6></td>
					</tr>
					<c:if test="${applicationData.candidateEducationDetails.languageDetailsList != null}">
               			<c:forEach var="editLanguage" items="${applicationData.candidateEducationDetails.languageDetailsList}" varStatus="index">
                			<tr>
					            <td colspan="2">${fn:toUpperCase(editLanguage.language)}</td>
					            <td class="radio-label-col">
					             	<span><c:if test="${editLanguage.read=='true'}">Read</c:if></span>
					            </td>
					            <td><span><c:if test="${editLanguage.write=='true'}">Write</c:if></span></td>
					            <td colspan="5"><span><c:if test="${editLanguage.speak=='true'}">Speak</c:if></span></td>
					        </tr>
				        </c:forEach>
			        </c:if>
			        <tr>
						<td colspan="9"><h6><b>Other Details</b></h6></td>
					</tr>
					<tr>
			            <td colspan="4">Whether College/Institution approved by AICTE?</td>
			            <td colspan="5">${applicationData.candidateEducationDetails.candidateEducationDetails.whetherCollegeAICTEApproved}</td>
			        </tr>			        
                    <c:if test="${applicationData.candidateEducationDetails.candidateEducationDetails.whetherCollegeAICTEApproved=='yes'}">
                    	<tr>
	                      	<td>Name of College/Institution</td>
	                      	<td>${fn:toUpperCase(applicationData.candidateEducationDetails.candidateEducationDetails.collegeInstituteName)}</td>
	                    </tr>
                    </c:if>
                    <c:if test="${applicationData.candidateEducationDetails.candidateEducationDetails.whetherCollegeAICTEApproved=='no'}">
                    	<tr>
	                      	<td>Name of Other Statutory Body</td>
	                      	<td>${fn:toUpperCase(applicationData.candidateEducationDetails.candidateEducationDetails.otherStatutoryBody)}</td>
	                    </tr>
                    </c:if>
					<tr>
			            <td colspan="4">Are you employed in any Govt. /Semi Govt. /Public Sector Undertaking?</td>
			            <td colspan="5">${applicationData.candidateEducationDetails.candidateEducationDetails.employeedInPSU}</td>
			        </tr>
					<tr>
			            <td colspan="4">Visible marks of identification (Mole marks/Wound/Scar/Burn etc.)</td>
			            <td colspan="5">${applicationData.candidateEducationDetails.candidateEducationDetails.visibleMarksIdentification}</td>
			        </tr>
					<tr>
			            <td colspan="4">Extra-Curricular Activities (Only University/District/State/National Level): </td>
			            <td colspan="5">${applicationData.candidateEducationDetails.candidateEducationDetails.extraCurricularActivity}</td>
			        </tr>
					<tr>
			            <td colspan="4">Details of any Criminal/Civil/Vigilance/Disciplinary case in which the candidate is involved </td>
			            <td colspan="5">${applicationData.candidateEducationDetails.candidateEducationDetails.criminalCaseDetails}</td>
			        </tr>
				</table>
				<%-- </c:if> --%>
				<br>
				<c:if test="${
  					applicationData.candidateBasicInfo.candidateBasicInfo.pwbd=='no' && 
  					applicationData.candidateBasicInfo.candidateBasicInfo.isExServiceman=='no' && 
  					applicationData.candidateBasicInfo.candidateBasicInfo.departmentalCandidate=='no' && 
  					(applicationData.candidateBasicInfo.candidateBasicInfo.category=='general' || 
  					applicationData.candidateBasicInfo.candidateBasicInfo.category=='ews' || 
  					applicationData.candidateBasicInfo.candidateBasicInfo.category=='obc-ncl')}">
				<table class="p-1 table-bordered full-width-table tbt-border">
					<tr>
					  	<td colspan="7" class="p-1 theme-l5 text-uppercase fw-bold bg-info text-center">Payment Details</td>
					</tr>
                   	<tr>
                   		<th style="border:0;">SBI Reference Id</th>
                      	<th style="border:0;">Bank Reference Number</th>
                      	<th style="border:0;">Payment Mode</th>
                      	<th style="border:0;">Amount</th>
                      	<th style="border:0;">Transaction Date</th>
                      	<th style="border:0;">Transaction Status</th>
                      	<th style="border:0;">Message</th>
                    </tr>
                	<tr>
                		<td>${applicationData.candidatePaymentDetails.paymentDetails.paymentDetails.sbiEPayRefIdORATRN}</td>
                		<td>${applicationData.candidatePaymentDetails.paymentDetails.paymentDetails.bankReferenceNumber}</td>
                      	<td>${applicationData.candidatePaymentDetails.paymentDetails.paymentDetails.paymentMode}</td>
                      	<td>${applicationData.candidatePaymentDetails.paymentDetails.paymentDetails.amount} (${applicationData.candidatePaymentDetails.paymentDetails.paymentDetails.currency})</td>
                      	<td>${applicationData.candidatePaymentDetails.paymentDetails.paymentDetails.transactionDate}</td>
                      	<td>${applicationData.candidatePaymentDetails.paymentDetails.paymentDetails.transactionStatus}</td>
                        <td>${applicationData.candidatePaymentDetails.paymentDetails.paymentDetails.resonORMessage}</td>
                	</tr>
                 </table>
                </c:if> 
				<br><br>
				<table class="p-1 table-bordered full-width-table">
					<tr>
  						<td></td>
					</tr>
					<tr class="">
						<td><h5><b>Declaration:</b></h5></td>
					</tr>
					<tr>
						<td>
			              	<div class="proifle-card">
			                	<p>
			                		I, do hereby declare that all the statements made in this application are true, complete, correct to the best of my knowledge and in the event of any information being found false, incomplete, incorrect or concealing the fact, my candidature may be cancelled at any stage without any notice and without assigning any reason thereof even after selection.
								</p>
			              	</div>
			            </td>
		       		</tr>
				</table><br>
				<div class="row" style="text-align:center;">
					<div><img src="${applicationData.candidateSignPhoto.candidateSignPhoto.signURL}" alt="signature" height="25px" width="150px"></div>
					<div class="signature-txt">
						<h6>Application Submission Date : <% Date date = new Date(); SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy"); out.print(sdf.format(date)); %></h6>
						<h6 style="text-decoration:underline;">Scanned Signature of Candidate</h6>
						<h4>THE INFORMATION FURNISHED IN THE APPLICATION FORM AND ORIGINAL CERTIFICATES WILL, HOWEVER,BE SCRUTINIZED / VERIFIED AT THE TIME OF DOCUMENT VERIFICATION</h4>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5">
				    	<a href="preview-after-payment" class="form-wizard-next-btn pull-right"><button class="btn btn-info btn-sm text-white"><i class="fa fa-angle-double-left"></i>Back To Preview</button></a>
				    </div>
				    <div class="col-sm-2"></div>
				    <div class="col-sm-5">
				    	<button class="btn btn-info btn-sm text-white pull-left" onclick="window.print(this);"> <i class="fa fa-print"></i> Print</button>
				    </div>
				</div><br>
			</section>
		</main>
	</body>
</html>