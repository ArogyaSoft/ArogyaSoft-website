<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" >
	<head>
		<title>SVSU UNIVERSITY</title>
		<jsp:include page="css.jsp" />
	</head>
	<body>
		<jsp:include page="navbar.jsp"/>
		<div class="container-fluid">
  			<div class="wizard-form">
    			<section class="wizard-section">
      				<div class="col-sm-lg-12 col-sm-md-12">
        				<div class="form-wizard">
          					<!-- <form action="" method="post" role="form"> -->
				            <div class="form-wizard-header">
				             	<ul class="list-unstyled form-wizard-steps clearfix">
					                <li class="activated"><a> <span><i class="fas fa-exclamation"></i></span> <strong>Basic Information</strong> </a></li>
					                <li class="active"><a><span><i class="fas fa-list"></i></span><strong>Personal Details</strong></a></li>
					                <li><a><span><i class="fas fa-book-reader"></i></span><strong>Educational Details</strong></a></li>
					                <li><a><span><i class="fas fa-user-tie"></i></span><strong>Signature &amp; Photo</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>preview</strong></a></li>
					                <li><a><span><i class="fas fa-rupee-sign"></i></span><strong>payment</strong></a></li>
					                <li><a><span><i class="fas fa-check"></i></span><strong>payment preview</strong></a></li>
				              	</ul>
				            </div>
				            <hr>
				            <div class="row">
				             	<div class="col-sm-5">
				             		<div class="row">
					             		<div class="col-sm-3">
					               			<label for="postAppliedFor" class="wizard-form-text-label">Post Applied For<strong>*</strong></label>
					               		</div>
					               		<div class="col-sm-8">
					               			<input id="postAppliedFor" type="text" class="form-control px-2" value="${masterData['postAppliedFor']}" readonly="readonly">
					               		</div>
				               		</div>
				             	</div>
				             	<div class="col-sm-6">
				             		<div class="row">
				             			<div class="col-sm-3">
				               				<label for="postId" class="wizard-form-text-label">Post ID<strong>*</strong></label>
				               			</div>
				               			<div class="col-sm-8">
				             				<input id="postId" type="text" class="form-control wizard-required px-2" value="${masterData['postAppliedForId']}" readonly="readonly">
				             			</div>
				             		</div>
				             	</div>
				            </div><br>
            				<fieldset class="wizard-fieldset">
              					<h5>Basic Details</h5>
              					<c:if test = "${sessionScope['password'] != null}">
	              					<p class="text-center">
	              						<span class="details">
	              							YOUR APPLICATION NUMBER : <b> ${sessionScope["provisionalApplicationNumber"]} </b> AND YOUR PASSWORD IS : <b> ${sessionScope["password"]} </b> 
	              						</span><br>
	              						<hr>
	              						<strong>Note : </strong>
	              						YOUR REGISTRATION WILL BE VALID ONLY WHEN APPLICATION IS FILLED IN ALL ASPECTS FOR RECRUITMENT OF JUNIOR ENGINEERS, MINE SURVEYOR AND EXECUTIVE TRAINEE (SOIL CONSERVATION) IN VARIOUS DISCIPLINES.
	              					</p>
	              				</c:if>
              					<input type="hidden" id="candidateProvisionalApplicationNumber" value="${candidateBasicDetails['provisionalApplicationNumber']}">
					            <div class="proifle-card">
					                <div class="form-group">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="religion" class="wizard-form-text-label">Religion to which you belong<strong>*</strong></label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<select class="form-control" id="religion">
					                            			<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['religion']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['religion']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
					                            			<option value="HINDU">HINDU</option>
					                            			<option value="MUSLIM">MUSLIM</option>
					                            			<option value="CHRISTIAN">CHRISTIAN</option>
					                            			<option value="SIKH">SIKH</option>
					                            			<option value="BUDDHIST">BUDDHIST</option>
					                            			<option value="JAIN">JAIN</option>
					                          			</select>
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group bg-light">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="nationality" class="wizard-form-text-label">Nationality/Citizenship<strong>*</strong></label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<select class="form-control" id="nationality">
					                            			<option value="india">Indian</option>
					                          			</select>
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					            </div>
							</fieldset>
				            <fieldset class="wizard-fieldset">
				              	<h5>Personal Details</h5>
				              	<div class="proifle-card">
				              		<div class="form-group">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="anyValidGovtIdentityNumber" class="wizard-form-text-label">Any valid govt. Identity no. (Like Aadhar no./Pan No./Passport no. etc)<strong>*</strong></label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<input type="text" id="anyValidGovtIdentityNumber" value="${candidateBasicDetails['anyValidGovtIdentityNumber']}" class="form-control wizard-required" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Father's name<strong>*</strong></label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<input type="text" id="fatherName" value="${candidateBasicDetails['fatherName']}" class="form-control wizard-required" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group bg-light">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Mother's name<strong>*</strong></label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<input type="text" id="motherName" value="${candidateBasicDetails['motherName']}" class="form-control wizard-required" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group bg-light">
				                  		<div class="row">
				                    		<div class="col-sm-12">
				                      			<div class="row">
				                        			<div class="col-sm-5">
				                          				<label for="firstName" class="wizard-form-text-label">Martial Status<strong>*</strong></label>
				                        			</div>
				                         			<div id="maritalStatus" class="col-sm-4">
				                          				<div class="wizard-form-radio">
				                            				<input name="maritalStatus" value="unmarried" type="radio" <c:if test = "${candidateBasicDetails['maritalStatus']=='unmarried'}">checked</c:if>>
				                            				<label for="Unmarried" class="maritalStatusLabel">Unmarried</label>
				                          				</div>
				                          				<div class="wizard-form-radio">
				                            				<input name="maritalStatus" value="married" type="radio" <c:if test = "${candidateBasicDetails['maritalStatus']=='married'}">checked</c:if>>
				                            				<label for="Married" class="maritalStatusLabel">Married</label>
				                          				</div>
							                          	<div class="wizard-form-radio">
							                            	<input name="maritalStatus" value="widowed" type="radio" <c:if test = "${candidateBasicDetails['maritalStatus']=='widowed'}">checked</c:if>>
							                            	<label for="Widowed" class="maritalStatusLabel">Widowed</label>
							                          	</div>
							                          	<div class="wizard-form-radio">
							                            	<input name="maritalStatus" value="separated" type="radio" <c:if test = "${candidateBasicDetails['maritalStatus']=='separated'}">checked</c:if>>
							                            	<label for="Separated" class="maritalStatusLabel">Separated</label>
							                          	</div>
							                          	<div class="wizard-form-radio">
							                            	<input name="maritalStatus" value="widower" type="radio" <c:if test = "${candidateBasicDetails['maritalStatus']=='widower'}">checked</c:if>>
							                            	<label for="Widower" class="maritalStatusLabel">Widower</label>
							                          	</div>
							                        </div>
				                      			</div>
				                    		</div>
				                  		</div>
				                	</div>
					                <div class="form-group" id="spouse-name-section" 
						               	<c:if test="${candidateBasicDetails==null}"> style="display: none;" </c:if> 
	              						<c:if test="${candidateBasicDetails['maritalStatus']!='married'}"> style="display: none;" </c:if> >
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Spouse name<strong>*</strong></label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<input type="text" id="spouseName" value="${candidateBasicDetails['spouseName']}" class="form-control wizard-required" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
				                	<div class="form-group bg-light">
				                  		<div class="row">
				                    		<div class="col-sm-12">
				                      			<div class="row">
				                        			<div class="col-sm-5">
				                          				<label for="firstName" class="wizard-form-text-label">State of Domicile : <strong>*</strong></label>
				                        			</div>
				                          			<div class="col-sm-4">
				                          				<select class="form-control" id="domicile">
				                            				<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['domicileCode']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['domicile']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
				                            				<c:forEach var="state" items="${states}"> 
				                          						<option value="${state.key}">${state.value}</option>
				                         					</c:forEach>
				                          				</select>
				                        			</div>
				                      			</div>
				                    		</div>
				                  		</div>
				                	</div>
				                	<h6>Correspondence Address:</h6>
				                	<div class="form-group bg-light">
				                  		<div class="row">
				                    		<div class="col-sm-12">
				                      			<div class="row">
				                        			<div class="col-sm-5">
				                          				<label for="firstName" class="wizard-form-text-label">Address 1 <strong>*</strong> </label>
				                        			</div>
				                          			<div class="col-sm-4">
				                          				<input type="text" id="caAddress1" value="${candidateBasicDetails['caAddress1']}" class="form-control wizard-required" >
				                        			</div>
				                      			</div>
				                    		</div>
				                  		</div>
				                	</div>
				                	<div class="form-group ">
				                  		<div class="row">
				                    		<div class="col-sm-12">
				                      			<div class="row">
				                        			<div class="col-sm-5">
				                          				<label for="firstName" class="wizard-form-text-label">Address 2</label>
				                        			</div>
				                         			<div class="col-sm-4">
				                          				<input type="text" id="caAddress2" value="${candidateBasicDetails['caAddress2']}" class="form-control wizard-required" >
				                        			</div>
				                      			</div>
				                    		</div>
				                  		</div>
				                	</div>
				                	<div class="form-group bg-light">
				                  		<div class="row">
				                    		<div class="col-sm-12">
				                      			<div class="row">
				                        			<div class="col-sm-5">
				                          				<label for="firstName" class="wizard-form-text-label">Address 3</label>
				                        			</div>
				                          			<div class="col-sm-4">
				                          				<input type="text" id="caAddress3" value="${candidateBasicDetails['caAddress3']}" class="form-control wizard-required" >
				                        			</div>
				                      			</div>
				                    		</div>
				                  		</div>
				                	</div>
					                <div class="form-group ">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">State<strong>*</strong></label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<select class="form-control" id="caState">
					                            			<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['caStateCode']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['caState']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
					                            			<c:forEach var="state" items="${states}"> 
					                          					<option value="${state.key}">${state.value}</option>
					                         				</c:forEach>
					                          			</select>
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
				                	<div class="form-group bg-light">
				                  		<div class="row">
				                    		<div class="col-sm-12">
				                      			<div class="row">
				                        			<div class="col-sm-5">
				                          				<label for="firstName" class="wizard-form-text-label">District<strong>*</strong></label>
				                        			</div>
				                         			<div class="col-sm-4">
				                          				<select class="form-control" id="caDistrict">
				                            				<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['caDistrictCode']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['caDistrict']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
				                            			</select>
				                        			</div>
				                      			</div>
				                    		</div>
				                  		</div>
				                	</div>
				                	<div class="form-group ">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="caPostOffice" class="wizard-form-text-label">PO (Post Office)<strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<input type="text" id="caPostOffice" value="${candidateBasicDetails['caPostOffice']}" class="form-control wizard-required" maxlength="100">
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div><div class="form-group ">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="caPoliceStation" class="wizard-form-text-label">PS (Police Station)<strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<input type="text" id="caPoliceStation" value="${candidateBasicDetails['caPoliceStation']}" class="form-control wizard-required" maxlength="100">
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group ">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Pincode <strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<input type="text" id="caPincode" value="${candidateBasicDetails['caPincode']}" class="form-control wizard-required" maxlength="6">
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group bg-light">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Nearest Railway Station <strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<input type="text" id="caNearestRailwayStation" value="${candidateBasicDetails['caNearestRailwayStation']}" class="form-control wizard-required" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
				                	<h6>Permanent Address:
				                  		<p>
				                    		<input name="radio-name" type="checkbox" id="sameAddress" onchange="sameAddressUse()">
				                   			<span> Same as Correspondence Address</span>
				                   		</p>
				                	</h6>								  
					                <div class="form-group bg-light">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Address 1 <strong>*</strong> </label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<input type="text" id="paAddress1" value="${candidateBasicDetails['paAddress1']}" class="form-control wizard-required" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
				                	<div class="form-group ">
				                  		<div class="row">
				                    		<div class="col-sm-12">
				                      			<div class="row">
				                        			<div class="col-sm-5">
				                          				<label for="firstName" class="wizard-form-text-label">Address 2</label>
				                        			</div>
				                          			<div class="col-sm-4">
				                          				<input type="text" id="paAddress2" value="${candidateBasicDetails['paAddress2']}" class="form-control wizard-required" >
				                        			</div>
				                      			</div>
				                    		</div>
				                  		</div>
				                	</div>
					                <div class="form-group bg-light">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Address 3</label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<input type="text" id="paAddress3" value="${candidateBasicDetails['paAddress3']}" class="form-control wizard-required" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group ">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">State<strong>*</strong></label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<select class="form-control" id="paState">
					                            			<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['paStateCode']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['paState']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
					                            			<c:forEach var="state" items="${states}"> 
					                          					<option value="${state.key}">${state.value}</option>
					                         				</c:forEach>
					                          			</select>
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group bg-light">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">District<strong>*</strong></label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<select class="form-control" id="paDistrict">
					                            			<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['paDistrictCode']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['paDistrict']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
					                           				<c:forEach var="district" items="${districts}"> 
					                          					<option value="${district.key}">${district.value}</option>
					                         				</c:forEach>
					                          			</select>
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
				                	<div class="form-group ">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="paPostOffice" class="wizard-form-text-label">PO (Post Office)<strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<input type="text" id="paPostOffice" value="${candidateBasicDetails['paPostOffice']}" class="form-control wizard-required" maxlength="100">
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div><div class="form-group ">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="paPoliceStation" class="wizard-form-text-label">PS (Police Station)<strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<input type="text" id="paPoliceStation" value="${candidateBasicDetails['paPoliceStation']}" class="form-control wizard-required" maxlength="100">
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group ">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Pincode <strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<input type="text" id="paPincode" value="${candidateBasicDetails['paPincode']}" class="form-control wizard-required" maxlength="6" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group bg-light">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="firstName" class="wizard-form-text-label">Nearest Railway Station <strong>*</strong> </label>
					                        		</div>
					                          		<div class="col-sm-4">
					                          			<input type="text" id="paNearestRailwayStation" value="${candidateBasicDetails['paNearestRailwayStation']}" class="form-control wizard-required" >
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
				              	</div>
				            </fieldset>
				            <fieldset class="wizard-fieldset ">
              					<h5>Exam City</h5>
              					<div class="proifle-card">
					                <div class="form-group">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="examCity1" class="wizard-form-text-label">Exam City  Preference 1 : <strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<select class="form-control" id="examCity1">
				                            				<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['examCityCode1']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['examCity1']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
				                            				<c:forEach var="examCity" items="${examCities}">
				                          						<option value="${examCity.key}">${examCity.value}</option>
				                         					</c:forEach>
				                          				</select>
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="examCity2" class="wizard-form-text-label">Exam City  Preference 2 : <strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<select class="form-control" id="examCity2">
				                            				<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['examCityCode2']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['examCity2']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
				                            				<c:forEach var="examCity" items="${examCities}">
				                          						<option value="${examCity.key}">${examCity.value}</option>
				                         					</c:forEach>
				                          				</select>
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					                <div class="form-group">
					                  	<div class="row">
					                    	<div class="col-sm-12">
					                      		<div class="row">
					                        		<div class="col-sm-5">
					                          			<label for="examCity3" class="wizard-form-text-label">Exam City  Preference 3 : <strong>*</strong> </label>
					                        		</div>
					                         		<div class="col-sm-4">
					                          			<select class="form-control" id="examCity3">
				                            				<option value="<c:if test = "${candidateBasicDetails !=null}">${candidateBasicDetails['examCityCode3']}</c:if>"><c:choose><c:when test = "${candidateBasicDetails !=null}">${candidateBasicDetails['examCity3']}</c:when><c:otherwise>Select</c:otherwise></c:choose></option>
				                            				<c:forEach var="examCity" items="${examCities}">
				                          						<option value="${examCity.key}">${examCity.value}</option>
				                         					</c:forEach>
				                          				</select>
					                        		</div>
					                      		</div>
					                    	</div>
					                  	</div>
					                </div>
					            </div>
					        </fieldset>
				            <div class="clearfix">
				            	<c:if test="${candidateBasicDetails==null}">
									<div class="row d-flex justify-content-center align-items-center">
	      								<span id="save-basic-details" class="form-wizard-next-btn ">Save &amp; Next <i class="fa fa-angle-double-right"></i></span>
					        		</div>
								</c:if>
      							<c:if test="${candidateBasicDetails!=null}">
									<div class="row d-flex justify-content-center align-items-center">
	      								<span id="save-basic-details" class="form-wizard-next-btn ">Update &amp; Move to Preview <i class="fa fa-angle-double-right"></i></span>
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
		<script src="javascript/basic.detail.script.js"></script>
	</body>
</html>