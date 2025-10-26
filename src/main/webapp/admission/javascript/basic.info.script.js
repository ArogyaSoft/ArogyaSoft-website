$( document ).ready(function() {
	/*********************************fields validation******************************/	
	
	$('#post').change(function() {
		var post = $('option:selected', this).val();
		if(post=='7') {
			$('#mineSurveyorCertificateSection').show();
		} else {
			$('#mineSurveyorCertificateSection').hide();
		}
	})
	
	$('#mineSurveyorCertificate').change(function() {
		var mineSurveyorCertificate = $('option:selected', this).val();
		if(mineSurveyorCertificate=='yes') {
			$('#mineSurveyorCertificateYearSection').show();
		} else {
			$('#mineSurveyorCertificateYearSection').hide();
			showAlert('ERROR', "Surveyor certificate is mandatory for the post of Mine Surveyor, So you are not eligible");
			$('#mineSurveyorCertificate').val('select');
			$('#mineSurveyorCertificate').css('border-color', 'red');
		}
	})
	
	$('#pwbd').change(function() {
		var pwbd = $('option:selected', this).val();
		if(pwbd=='yes') {
			$('#pwbdDetailsSection').show();
			$('#pwbdSubCategorySection').show();
			$('#needScribeSection').show();
		} else {
			$('#pwbdDetailsSection').hide();
			$('#pwbdSubCategorySection').hide();
			$('#needScribeSection').hide();
		}
	})
	
	$('#pwbdDetails').change(function() {
		var pwbdDetails = $('option:selected', this).val(); 
		if(pwbdDetails=='MULTIPLE DISABILITY') {
			showAlert('Message', "To choose more than one disability, press CTRL + disablity [whichever want to choose]");
			$("#pwbdSubCategory").attr("multiple", "multiple");
		}
	})
	
	$('#pwbdSubCategory').change(function() {
		var pwbdDetails = $("#pwbdDetails option:selected").val();
		if(pwbdDetails=='MULTIPLE DISABILITY') {
			var pwbdSubCategory = $("#pwbdSubCategory").val(); console.log(pwbdSubCategory);
			$("#selectedSubcategory").html(pwbdSubCategory.length+" Selected : "+pwbdSubCategory.join(", "));
		}
	})
	
	$('#pwbdDetails').change(function() {
		$('#pwbdSubCategory').find('option').remove().end().append('<option value="">Please Select</option>').val('whatever');
		var pwbdDetails = $('option:selected', this).val();
		if(pwbdDetails=='VISUALLY IMPAIRED') {
			$('#pwbdSubCategory').append($('<option></option>').val('Blind').html('Blind'));
			$('#pwbdSubCategory').append($('<option></option>').val('Low Vision').html('Low Vision'));
		} else if(pwbdDetails=='HEARING IMPAIRED') {
			$('#pwbdSubCategory').append($('<option></option>').val('Deaf').html('Deaf'));
			$('#pwbdSubCategory').append($('<option></option>').val('Hard of hearing').html('Hard of hearing'));
		} else if(pwbdDetails=='LOCOMOTOR DISABILITY') {
			$('#pwbdSubCategory').append($('<option></option>').val('One arm').html('One arm'));
			$('#pwbdSubCategory').append($('<option></option>').val('Both arm').html('Both arm'));
			$('#pwbdSubCategory').append($('<option></option>').val('One leg').html('One leg'));
			$('#pwbdSubCategory').append($('<option></option>').val('Both legs').html('Both legs'));
			$('#pwbdSubCategory').append($('<option></option>').val('One arm one leg').html('One arm one leg'));
			$('#pwbdSubCategory').append($('<option></option>').val('Cerebral Palsy').html('Cerebral Palsy'));
			$('#pwbdSubCategory').append($('<option></option>').val('Leprosy Cured Person').html('Leprosy Cured Person'));
			$('#pwbdSubCategory').append($('<option></option>').val('Dwarfism').html('Dwarfism'));
			$('#pwbdSubCategory').append($('<option></option>').val('Acid Attack Victims').html('Acid Attack Victims'));
			$('#pwbdSubCategory').append($('<option></option>').val('Muscular Dystrophy').html('Muscular Dystrophy'));
			$('#pwbdSubCategory').append($('<option></option>').val('Spinal Deformity (SD) and Spinal Injury (SI) without any associated neurological/limb dysfunction').html('Spinal Deformity (SD) and Spinal Injury (SI) without any associated neurological/limb dysfunction'));
		} else if(pwbdDetails=='INTELLECTUAL DISABILITY') {
			$('#pwbdSubCategory').append($('<option></option>').val('ASD - Autism Spectrum Disability').html('ASD - Autism Spectrum Disability'));
			$('#pwbdSubCategory').append($('<option></option>').val('SLD - Specific Learning Disability').html('SLD - Specific Learning Disability'));
			$('#pwbdSubCategory').append($('<option></option>').val('MI - Mental Illness').html('MI - Mental Illness'));
		} else if(pwbdDetails=='MULTIPLE DISABILITY') {
			$('#pwbdSubCategory').append($('<option></option>').val('B - Blind').html('B - Blind'));
			$('#pwbdSubCategory').append($('<option></option>').val('LV - Low Vision').html('LV - Low Vision'));
			$('#pwbdSubCategory').append($('<option></option>').val('FD - Fully Deaf').html('FD - Fully Deaf'));
			$('#pwbdSubCategory').append($('<option></option>').val('HH - Hard of Hearing').html('HH - Hard of Hearing'));
			$('#pwbdSubCategory').append($('<option></option>').val('BL - Both legs affected but not arms').html('BL - Both legs affected but not arms'));
			$('#pwbdSubCategory').append($('<option></option>').val('BA - Both arms affected').html('BA - Both arms affected'));
			$('#pwbdSubCategory').append($('<option></option>').val('OL - One leg affected (R or L)').html('OL - One leg affected (R or L)'));
			$('#pwbdSubCategory').append($('<option></option>').val('OA - One arm affected (R or L)').html('OA - One arm affected (R or L)'));
			$('#pwbdSubCategory').append($('<option></option>').val('BH - Stiff back and hips (can not sit or stoop)').html('BH - Stiff back and hips (can not sit or stoop)'));
			$('#pwbdSubCategory').append($('<option></option>').val('BLA - Both legs and both').html('BLA - Both legs and both'));
			$('#pwbdSubCategory').append($('<option></option>').val('arms affected').html('arms affected'));
			$('#pwbdSubCategory').append($('<option></option>').val('OLA - One leg and One arm affected').html('OLA - One leg and One arm affected'));
			$('#pwbdSubCategory').append($('<option></option>').val('CP - Cerebral Palsy').html('CP - Cerebral Palsy'));
			$('#pwbdSubCategory').append($('<option></option>').val('LC - Leprosy Cured').html('LC - Leprosy Cured'));
			$('#pwbdSubCategory').append($('<option></option>').val('DW - Dwarfism').html('DW - Dwarfism'));
			$('#pwbdSubCategory').append($('<option></option>').val('AAV - Acid Attack Victims').html('AAV - Acid Attack Victims'));
			$('#pwbdSubCategory').append($('<option></option>').val('MDy - Muscular Dystrophy').html('MDy - Muscular Dystrophy'));
			$('#pwbdSubCategory').append($('<option></option>').val('ASD - Autism Spectrum Disability').html('ASD - Autism Spectrum Disability'));
			$('#pwbdSubCategory').append($('<option></option>').val('SLD - Specific Learning Disability').html('SLD - Specific Learning Disability'));
			$('#pwbdSubCategory').append($('<option></option>').val('MI - Mental Illness').html('MI - Mental Illness'));
		}
	})
	
	$('#isExServiceman').change(function() {
		var isExServiceman = $('option:selected', this).val();
		if(isExServiceman=='yes') {
			$('#exServicemanDetailsSection').show();
		} else {
			$('#exServicemanDetailsSection').hide();
		}
	})
	
	$('#exServicemanExperienceInYears').blur(function() {
		var regex = /^[0-9]{1,2}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#exServicemanExperienceInYears').css('border-color', 'red');
			showAlert('Error', "Please enter valid number of years of ex serviceman experience. (Ex. 5)");
			$('#exServicemanExperienceInYears').val('');
        	$('#exServicemanExperienceInYears').focus();
        	$( "#exServicemanExperienceInYears" ).keyup(function() {
				$('#exServicemanExperienceInYears').css('border-color', '');
			});
		}
	})
	
	$('#exServicemanExperienceInMonths').blur(function() {
		var regex = /^[0-9]{1,2}$/;
		if(this.value > 11 || (this.value != "" && this.value != 'undefined' && !regex.test(this.value))) {
			$('#exServicemanExperienceInMonths').css('border-color', 'red');
			showAlert('Error', "Please enter valid number of months of ex serviceman experience. [ 0 - 11 ]");
			$('#exServicemanExperienceInMonths').val('');
        	$('#exServicemanExperienceInMonths').focus();
        	$( "#exServicemanExperienceInMonths" ).keyup(function() {
				$('#exServicemanExperienceInMonths').css('border-color', '');
			});
		}
	})
	
	$('#exServicemanExperienceInDays').blur(function() {
		var regex = /^[0-9]{1,2}$/;
		if(this.value >= 31 || (this.value != "" && this.value != 'undefined' && !regex.test(this.value))) {
			$('#exServicemanExperienceInDays').css('border-color', 'red');
			showAlert('Error', "Please enter valid number of days of ex serviceman experience. [ 0 - 31 ]");
			$('#exServicemanExperienceInDays').val('');
        	$('#exServicemanExperienceInDays').focus();
        	$( "#exServicemanExperienceInDays" ).keyup(function() {
				$('#exServicemanExperienceInDays').css('border-color', '');
			});
		}
	})
	
	$('#departmentalCandidate').change(function() {
		var departmentalCandidate = $('option:selected', this).val();
		if(departmentalCandidate=='yes') {
			$('#employeeNumberSection').show();
			$('#placeOfPostingSection').show();
			$('#dateOfJoiningSection').show();
			$('#presentDesignationSection').show();
		} else {
			$('#employeeNumberSection').hide();
			$('#placeOfPostingSection').hide();
			$('#dateOfJoiningSection').hide();
			$('#presentDesignationSection').hide();
		}
	})
	
	$('input:radio[name="category"]').change(function() {
		if($('#category').hasClass("bg-danger")) {
			$('#category').removeClass("bg-danger");
			$('.categoryLabel').removeClass("text-white");
		}
	});
	
	$('input:radio[name="gender"]').change(function() {
		if($('#gender').hasClass("bg-danger")) {
			$('#gender').removeClass("bg-danger");
			$('.genderLabel').removeClass("text-white");
		}
	});
	
	$('#firstName').blur(function() {
		var regex = /^[a-zA-Z ]{1,30}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)){
			$('#firstName').css('border-color', 'red');
			showAlert('Error',"Please enter valid first Name");
			$('#firstName').val('');
        	$('#firstName').focus();
        	$( "#firstName" ).keyup(function() {
				$('#firstName').css('border-color', '');
			});
		}
		var firstName = $('#firstName').val();
    	var middleName = $('#middleName').val();
    	var lastName = $('#lastName').val();
    	$('#fullName').val(firstName.trim()+' '+middleName.trim()+' '+lastName.trim());
	});
	
	/*-------------------------------------Middle Name------------------------------------------*/
	$('#middleName').blur(function(){
		var regex = /^[a-zA-Z ]{1,30}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)){
			$('#middleName').css('border-color', 'red');
			showAlert('Error',"Please enter valid middle Name");
			$('#middleName').val('');
        	$('#middleName').focus();
        	$( "#middleName" ).keyup(function() {
				$('#middleName').css('border-color', '');
			});
		}
		var firstName = $('#firstName').val();
    	var middleName = $('#middleName').val();
    	var lastName = $('#lastName').val();
    	$('#fullName').val(firstName.trim()+' '+middleName.trim()+' '+lastName.trim());
	});
	
	/*-------------------------------------Last Name------------------------------------------*/
	$('#lastName').blur(function() {
		var regex = /^[a-zA-Z ]{1,30}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)){
			$('#lastName').css('border-color', 'red');
			showAlert('Error',"Please enter valid Last Name");
			$('#lastName').val('');
        	$('#lastName').focus();
        	$( "#lastName" ).keyup(function() {
				$('#lastName').css('border-color', '');
			});
		}
		var firstName = $('#firstName').val();
    	var middleName = $('#middleName').val();
    	var lastName = $('#lastName').val();
    	$('#fullName').val(firstName.trim()+' '+middleName.trim()+' '+lastName.trim());
	});
	
	/*-------------------------------------Mobile Number------------------------------------------*/
	$('#mobileNumber').blur(function(){
		var regex = /^[6-9][0-9]{9}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#mobileNumber').css('border-color', 'red');
			showAlert('Error', "Please enter valid Mobile Number");
			$('#mobileNumber').val('');
        	$('#mobileNumber').focus();
        	$( "#mobileNumber" ).keyup(function() {
				$('#mobileNumber').css('border-color', '');
			});
		} else {
			/*	--------------check duplicate mobile number through Ajax Post request------------------*/
			var mobileNumber = $("#mobileNumber").val();
			if(mobileNumber != "" && mobileNumber != 'undefined') {
				$('#loading').css("display", "block");
				$.ajax({
					type : "POST",
					url : "checkDuplicateMobileNumber",
					data : 'mobileNumber=' + mobileNumber,
					async: false,
					datatype : 'json',
					success : function(result) {
						$('#loading').css("display", "none");
						var mobileCount = parseInt(result['mobileCount']);
						if(mobileCount!=0){
							$('#mobileNumber').css('border-color', 'red');
							showAlert('Error',"Mobile number is already exist");
							$("#mobileNumber").val('');
							$('#mobileNumber').focus();
							$( "#mobileNumber" ).keyup(function() {
								$('#mobileNumber').css('border-color', '');
							});
						}
					}
				});
			}
		}
	});
	
	$('#alternateMobileNumber').blur(function() {
		var regex = /^[6-9][0-9]{9}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)){
			$('#alternateMobileNumber').css('border-color', 'red');
			showAlert('Error',"Please enter valid Alternate Mobile Number");
			$('#alternateMobileNumber').val('');
        	$('#alternateMobileNumber').focus();
        	$( "#alternateMobileNumber" ).keyup(function() {
				$('#alternateMobileNumber').css('border-color', '');
			});
		}
	});
	
	/*----------------------------Email Id---------------------------------------------*/
	$('#emailId').blur(function() {
		// var regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,6}$/;
		var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#emailId').css('border-color', 'red');
			showAlert('Error',"Please enter valid Email Id");
			$('#emailId').val('');
        	$('#emailId').focus();
        	$( "#emailId" ).keyup(function() {
				$('#emailId').css('border-color', '');
			});
		} else {
			/*	---------------check duplicate email id through Ajax Post request---------------------*/
			var emailId = $("#emailId").val();
			if(emailId != "" && emailId != 'undefined') {
				$('#loading').css("display", "block");
				$.ajax({
					type : "POST",
					url : "checkDuplicateEmail",
					data : 'email=' + emailId,
					async: false,
					datatype : 'json',
					success : function(result) {
						$('#loading').css("display", "none");
						var emailCount = parseInt(result['emailCount']);
						if(emailCount!=0) {
							$('#emailId').css('border-color', 'red');
							showAlert('Error',"Email id is already exist");
							$("#emailId").val('');
							$('#emailId').focus();
							$( "#emailId" ).keyup(function() {
								$('#emailId').css('border-color', '');
							});
						}
					}
				});
			}
		}
	});

	// Validate Age Section Start
	
	$('#validateAge').click(function() {
		// Validating fields
		var post = $("#post option:selected").val();
		var mineSurveyorCertificate = $("#mineSurveyorCertificate option:selected").val();
		var mineSurveyorCertificateYear = $("#mineSurveyorCertificateYear").val();
		var pwbd = $("#pwbd option:selected").val();
		var pwbdDetails = $("#pwbdDetails option:selected").val();
		var pwbdSubCategory = $("#pwbdSubCategory").val();
		// var needScribe = $("#needScribe option:selected").val();
		var qualification = 'removed'; //$("#qualification option:selected").val();
		var isExServiceman = $("#isExServiceman option:selected").val();
		var exServicemanExperienceInYears = $("#exServicemanExperienceInYears").val();
		var exServicemanExperienceInMonths = $("#exServicemanExperienceInMonths").val();
		var exServicemanExperienceInDays = $("#exServicemanExperienceInDays").val();
		var havingDomicileJK = $("#havingDomicileJK option:selected").val();
		var departmentalCandidate = $("#departmentalCandidate option:selected").val();
		var employeeNumber = $("#employeeNumber").val();
		var placeOfPosting = $("#placeOfPosting").val();
		var dateOfJoining = $("#dateOfJoining").val();
		var presentDesignation = $("#presentDesignation").val();
		var category = $('input:radio[name="category"]:checked').val();
		var gender = $('input:radio[name="gender"]:checked').val();
		var dobDay = $("#dobDay option:selected").val();
		var dobMonth = $("#dobMonth option:selected").val();
		var dobYear = $("#dobYear option:selected").val();
		
		if(post == "" || post == 'undefined') {
			$('#post').css('border-color', 'red');
			showAlert('Error', "Please select post");
			$('#post').focus();
        	$( "#post" ).change(function() {
				$('#post').css('border-color', '');
			});
        	return false;
        } else if(post == '7' && (mineSurveyorCertificate == "" || mineSurveyorCertificate == 'undefined')) {
			$('#mineSurveyorCertificate').css('border-color', 'red');
			showAlert('Error', "Please select mine surveyor certificate");
			$('#mineSurveyorCertificate').focus();
        	$( "#mineSurveyorCertificate" ).change(function() {
				$('#mineSurveyorCertificate').css('border-color', '');
			});
        	return false;
		} else if(mineSurveyorCertificate == 'yes' && (mineSurveyorCertificateYear == "" || mineSurveyorCertificateYear == 'undefined')) {
			$('#mineSurveyorCertificateYear').css('border-color', 'red');
			showAlert('Error', "Please enter mine surveyor certificate year");
			$('#mineSurveyorCertificateYear').focus();
        	$( "#mineSurveyorCertificateYear" ).change(function() {
				$('#mineSurveyorCertificateYear').css('border-color', '');
			});
        	return false;
		} else if(pwbd == "" || pwbd == 'undefined') {
			$('#pwbd').css('border-color', 'red');
			showAlert('Error', "Please select whether you are pwbd candidate or not");
			$('#pwbd').focus();
        	$( "#pwbd" ).change(function() {
				$('#pwbd').css('border-color', '');
			});
        	return false;
		} else if(pwbd == 'yes' && (pwbdDetails == "" || pwbdDetails == 'undefined')) {
			$('#pwbdDetails').css('border-color', 'red');
			showAlert('Error', "Please select pwbd details");
			$('#pwbdDetails').focus();
        	$( "#pwbdDetails" ).change(function() {
				$('#pwbdDetails').css('border-color', '');
			});
        	return false;
		} else if(pwbd == 'yes' && (pwbdSubCategory == "" || pwbdSubCategory == 'undefined')) {
			$('#pwbdDetails').css('border-color', 'red');
			showAlert('Error', "Please select pwbd details");
			$('#pwbdDetails').focus();
        	$( "#pwbdDetails" ).change(function() {
				$('#pwbdDetails').css('border-color', '');
			});
        	return false;
		} else if(qualification == "" || qualification == 'undefined') {
			$('#qualification').css('border-color', 'red');
			showAlert('Error', "Please select qualification");
			$('#qualification').focus();
        	$( "#qualification" ).change(function() {
				$('#qualification').css('border-color', '');
			});
        	return false;
		} else if(qualification == "Not having required qualification") {
			$('#qualification').css('border-color', 'red');
			showAlert('Error', "You are not having required qualification so Ineligible");
			$('#qualification').focus();
        	$( "#qualification" ).change(function() {
				$('#qualification').css('border-color', '');
			});
        	return false;
		} else if(isExServiceman == "" || isExServiceman == 'undefined') {
			$('#isExServiceman').css('border-color', 'red');
			showAlert('Error', "Please verify whether you are ex serviceman");
			$('#isExServiceman').focus();
        	$( "#isExServiceman" ).change(function() {
				$('#isExServiceman').css('border-color', '');
			});
        	return false;
		} else if(isExServiceman=='yes' && (exServicemanExperienceInYears == "" || exServicemanExperienceInYears == 'undefined')) {
			$('#exServicemanExperienceInYears').css('border-color', 'red');
			showAlert('Error', "Please enter valid number of years of experience. (Ex. 5)");
			$('#exServicemanExperienceInYears').focus();
        	$( "#exServicemanExperienceInYears" ).change(function() {
				$('#exServicemanExperienceInYears').css('border-color', '');
			});
        	return false;
		} else if(isExServiceman=='yes' && (exServicemanExperienceInMonths == "" || exServicemanExperienceInMonths == 'undefined')) {
			$('#exServicemanExperienceInMonths').css('border-color', 'red');
			showAlert('Error', "Please enter valid number of months of experience. [ 0 - 11 ]");
			$('#exServicemanExperienceInMonths').focus();
        	$( "#exServicemanExperienceInMonths" ).change(function() {
				$('#exServicemanExperienceInMonths').css('border-color', '');
			});
        	return false;
		} else if(isExServiceman=='yes' && (exServicemanExperienceInDays == "" || exServicemanExperienceInDays == 'undefined')) {
			$('#exServicemanExperienceInDays').css('border-color', 'red');
			showAlert('Error', "Please enter valid number of days experience. [ 0 - 31 ]");
			$('#exServicemanExperienceInDays').focus();
        	$( "#exServicemanExperienceInDays" ).change(function() {
				$('#exServicemanExperienceInDays').css('border-color', '');
			});
        	return false;
		} else if(havingDomicileJK == "" || havingDomicileJK == 'undefined') {
			$('#havingDomicileJK').css('border-color', 'red');
			showAlert('Error', "Please verify whether having domicile in the State of Jammu & Kashmir during the Period 01.01.1980 to 31.12.1989");
			$('#havingDomicileJK').focus();
        	$( "#havingDomicileJK" ).change(function() {
				$('#havingDomicileJK').css('border-color', '');
			});
        	return false;
		} else if(departmentalCandidate == "" || departmentalCandidate == 'undefined') {
			$('#departmentalCandidate').css('border-color', 'red');
			showAlert('Error', "Please verify whether you are departmental candidate");
			$('#departmentalCandidate').focus();
        	$( "#departmentalCandidate" ).change(function() {
				$('#departmentalCandidate').css('border-color', '');
			});
        	return false;
		} else if(departmentalCandidate=='yes' && (employeeNumber == "" || employeeNumber == 'undefined')) {
			$('#employeeNumber').css('border-color', 'red');
			showAlert('Error', "Please enter valid employee number");
			$('#employeeNumber').focus();
        	$( "#employeeNumber" ).change(function() {
				$('#employeeNumber').css('border-color', '');
			});
        	return false;
		} else if(departmentalCandidate=='yes' && (placeOfPosting == "" || placeOfPosting == 'undefined')) {
			$('#placeOfPosting').css('border-color', 'red');
			showAlert('Error', "Please enter valid place of posting");
			$('#placeOfPosting').focus();
        	$( "#placeOfPosting" ).change(function() {
				$('#placeOfPosting').css('border-color', '');
			});
        	return false;
		} else if(departmentalCandidate=='yes' && (dateOfJoining == "" || dateOfJoining == 'undefined')) {
			$('#dateOfJoining').css('border-color', 'red');
			showAlert('Error', "Please enter valid date of joining");
			$('#dateOfJoining').focus();
        	$( "#dateOfJoining" ).change(function() {
				$('#dateOfJoining').css('border-color', '');
			});
        	return false;
		} else if(departmentalCandidate=='yes' && (presentDesignation == "" || presentDesignation == 'undefined')) {
			$('#presentDesignation').css('border-color', 'red');
			showAlert('Error', "Please enter valid present designation");
			$('#presentDesignation').focus();
        	$( "#presentDesignation" ).change(function() {
				$('#presentDesignation').css('border-color', '');
			});
        	return false;
		} else if(category == "" || category == null ) {
			showAlert('Error', "Please choose category");
			$('input:radio[name="category"]').focus();
			$('#category').addClass("bg-danger");
			$('.categoryLabel').addClass("text-white");
			return false;
		} else if(gender == "" || gender == null ) {
			showAlert('Error', "Please choose gender");
			$('input:radio[name="gender"]').focus();
			$('#gender').addClass("bg-danger");
			$('.genderLabel').addClass("text-white");
			return false;
		} else if(dobDay == "" || dobDay == 'undefined') {
			$('#dobDay').css('border-color', 'red');
			showAlert('Error', "Please select Day");
			$('#dobDay').focus();
        	$( "#dobDay" ).change(function() {
				$('#dobDay').css('border-color', '');
			});
        	return false;
		} else if(dobMonth == "" || dobMonth == 'undefined') {
			$('#dobMonth').css('border-color', 'red');
			showAlert('Error', "Please select Month");
			$('#dobMonth').focus();
        	$( "#dobMonth" ).change(function() {
				$('#dobMonth').css('border-color', '');
			});
        	return false;
		} else if(dobYear == "" || dobYear == 'undefined') {
			$('#dobYear').css('border-color', 'red');
			showAlert('Error', "Please select year");
			$('#dobYear').focus();
        	$( "#dobYear" ).change(function() {
				$('#dobYear').css('border-color', '');
			});
        	return false;
		}
				
		// Validating Age
		var age = 28;
		if(post == 6) age = 29;
		if(post==7) age = 30;
		var ageMonths = 0;
		var ageDays = 0;
		
		// Validate if entered age is less than 55
		if(isExServiceman=='yes' && (exServicemanExperienceInYears > 0 || exServicemanExperienceInMonths > 5)) {
			// Check whether the experience in armed forces is more than 6 month
			age = parseInt(age) + parseInt(exServicemanExperienceInYears);
			age = parseInt(age) + 3;
			ageMonths = parseInt(exServicemanExperienceInMonths);
			ageDays = parseInt(exServicemanExperienceInDays);
		}
		
		if(havingDomicileJK=='yes') {
			age = parseInt(age) + 5;
		}
		
		if(pwbd=='yes') {
			age = parseInt(age) + 10;
		}
		
		if(category=='sc' || category=='st') {
			age = parseInt(age) + 5;
		} else if(category == 'obc-ncl') {
			age = parseInt(age) +3;
		}
		
		if(departmentalCandidate=='yes') {
			age = 55;
		}
		
		var ageValidationFlag = true;
		$('#loading').css("display", "block");
		$.ajax({
			type : "POST",
			url : "ageCalculation",
			data : 'dobDay=' + dobDay + '&dobMonth=' + dobMonth + '&dobYear=' + dobYear,
			async: false,
			datatype : 'json',
			success : function(result) {
				$('#loading').css("display", "none");
				if(result.years > 55) {
					if(confirm("You are not eligible for this post. \n "+result['message']+" which is greater than 55 years")) {
						// redirect to login page
						// logout();
					}
					ageValidationFlag = false;
					return false;
				} else if(result.years < 18) {
					if(confirm("You are not eligible for this post. \n "+result['message']+" which is less than 18 years")) {
						// redirect to login page
						// logout();
					}
					ageValidationFlag = false;
					return false;
				}
			}
		});
		if(ageValidationFlag) {
			$('#loading').css("display", "block");
			$.ajax({
				type : "POST",
				url : "calculateAge",
				data : 'dobDay=' + dobDay + '&dobMonth=' + dobMonth + '&dobYear=' + dobYear + '&age=' + age + '&ageMonths=' + ageMonths + '&ageDays=' + ageDays,
				async: false,
				datatype : 'json',
				success : function(result) {
					$('#loading').css("display", "none");
					if(result.ageStatus) {
						$("#ageCompleted").html(result.message);
					} else {
						// $("#ageCompleted").html(result.message);
						if(confirm("Age Criteria for the selected post with all relaxations is : "+age+" years, "+ageMonths+" months and "+ageDays+" days. \n You are not eligible for this post. \n Your age is : "+result['message']+" which is greater than : "+age+" years, "+ageMonths+" months and "+ageDays+" days")) {
							// redirect to login page
							// logout();
						}
						return false;
					}
				}
			});
		}
	});
	// Validate Age Section Completed	
	
	
	/*----------------------------Validate required form fields---------------------------------------------*/
    var resend_flag=0;
	$('#send-otp').click(function() {
		var fullName = $('#fullName').val();
		var mobileNumber = $('#mobileNumber').val();
		var emailId = $('#emailId').val();
		var securityCode = $('#securityCode').val();
		if(fullName.trim() == "" || fullName == 'undefined') {
			$('#firstName').val('');
			$('#middleName').val('');
			$('#lastName').val('');
			$('#firstName').css('border-color', 'red');
			showAlert('Error',"Please enter First Name");
			$('#firstName').focus();
        	$( "#firstName" ).keyup(function() {
				$('#firstName').css('border-color', '');
			});
        	return false;
		} else if(mobileNumber.trim() == "" || mobileNumber == 'undefined') {
			$('#mobileNumber').css('border-color', 'red');
			showAlert('Error', "Please enter Mobile Number");
			$('#mobileNumber').focus();
        	$( "#mobileNumber" ).keyup(function() {
				$('#mobileNumber').css('border-color', '');
			});
        	return false;
		} else if(emailId.trim() == "" || emailId == 'undefined') {
			$('#emailId').css('border-color', 'red');
			showAlert('Error', "Please enter Email Id");
			$('#emailId').focus();
        	$( "#emailId" ).keyup(function() {
				$('#emailId').css('border-color', '');
			});
        	return false;
		} else if(securityCode.trim() == "" || securityCode == 'undefined') {
			$('#securityCode').css('border-color', 'red');
			showAlert('Error', "Please enter Security Code");
			$('#securityCode').focus();
        	$( "#securityCode" ).keyup(function() {
				$('#securityCode').css('border-color', '');
			});
        	return false;
		}
		if(!confirm("Please verify name, phone number and email id! You won't be able to change these details. Other Details are editable at the time of preview.")) return false;
		$('#firstName').prop('readonly', true);
		$('#lastName').prop('readonly', true);
		$('#mobileNumber').prop('readonly', true);
		$('#emailId').prop('readonly', true);
		if(resend_flag==0) {
			resend_flag=1;
			console.log('inside send otp');
			$('#send-otp').text("Resend OTP");

			 $('#send-otp').css('opacity', '0.6');
			 $('#send-otp').css('cursor', 'not-allowed');
			 var fullName = $('#fullName').val();
			 var mobileNumber = $('#mobileNumber').val();
			 var emailId = $('#emailId').val();
			 $.ajax({
				 type : "POST",
				 url : "send-otp",
				 data : 'recipient=' + emailId +'&candidateName='+ fullName +'&phone='+ mobileNumber +'&securityCode='+ securityCode,
				 async: false,
				 datatype : 'json',
				 success : function(result) {
					 // console.log(result);
				 }
			 });
			 var start = new Date;
			 var timeLeft = 60;
			 var secs =$('#otp-timer').text();
			 var timer = setInterval(countdown, 1000);
			 function countdown() {
				 if (timeLeft == -1) {
			         clearTimeout(timer);
				     $('#otp-timer').hide();
					 resend_flag=0;
					 $('#send-otp').css('cursor', 'pointer');
					 $('#send-otp').css('opacity', '1');
 					 console.log('timeout');
			     } else {
			    	 $('#otp-timer').text(timeLeft + ' seconds');
				     $('#otp-timer').show();
			         timeLeft--;
			     }
			 }
		}
	});
	
	$('#submit-basic-info').click(function() {
		var post = $("#post option:selected").val();
		var postText = $("#post option:selected").text();
		var mineSurveyorCertificate = $("#mineSurveyorCertificate option:selected").val();
		var mineSurveyorCertificateYear = $("#mineSurveyorCertificateYear").val();
		var pwbd = $("#pwbd option:selected").val();
		var pwbdDetails = $("#pwbdDetails option:selected").val();
		var pwbdSubCategory = $("#pwbdSubCategory option:selected").val(); // alert('pwbdSubCategory : '+pwbdSubCategory);
		var needScribe = $("#needScribe option:selected").val();
		var qualification = 'removed'; //$("#qualification option:selected").val();
		var isExServiceman = $("#isExServiceman option:selected").val();
		var exServicemanExperienceInYears = $("#exServicemanExperienceInYears").val();
		var exServicemanExperienceInMonths = $("#exServicemanExperienceInMonths").val();
		var exServicemanExperienceInDays = $("#exServicemanExperienceInDays").val();
		var havingDomicileJK = $("#havingDomicileJK option:selected").val();
		var departmentalCandidate = $("#departmentalCandidate option:selected").val();
		var employeeNumber = $("#employeeNumber").val();
		var placeOfPosting = $("#placeOfPosting").val();
		var dateOfJoining = $("#dateOfJoining").val();
		var presentDesignation = $("#presentDesignation").val();
		var category = $('input:radio[name="category"]:checked').val();
		var gender = $('input:radio[name="gender"]:checked').val();
		var dobDay = $("#dobDay option:selected").val();
		var dobMonth = $("#dobMonth option:selected").val();
		var dobYear = $("#dobYear option:selected").val();
		var ageCompleted = $("#ageCompleted").html();
		
		var firstName = $('#firstName').val();
		var middleName = $('#middleName').val();
		var lastName = $('#lastName').val();
		var fullName = $('#fullName').val();
		var mobileNumber = $('#mobileNumber').val();
		var alternateMobileNumber = $('#alternateMobileNumber').val();
		var emailId = $('#emailId').val();
		var securityCode = $('#securityCode').val();
		var otp = $('#firstOTP').val()+$('#secondOTP').val()+$('#thirdOTP').val()+$('#fourthOTP').val();
		
		if(ageCompleted.trim() == "" || ageCompleted == 'undefined') {
			$('#validateAge').css('border-color', 'red');
			showAlert('Error', "Please click on validate age button");
			$('#validateAge').focus();
        	$( "#validateAge" ).keyup(function() {
				$('#validateAge').css('border-color', '');
			});
        	return false;
		} else if(firstName.trim() == "" || firstName == 'undefined') {
			$('#firstName').css('border-color', 'red');
			showAlert('Error',"Please enter First Name");
			$('#firstName').focus();
        	$( "#firstName" ).keyup(function() {
				$('#firstName').css('border-color', '');
			});
        	return false;
		} else if(fullName.trim() == "" || fullName == 'undefined') {
			$('#firstName').val('');
			$('#middleName').val('');
			$('#lastName').val('');
			$('#firstName').css('border-color', 'red');
			showAlert('Error',"Please enter First Name");
			$('#firstName').focus();
        	$( "#firstName" ).keyup(function() {
				$('#firstName').css('border-color', '');
			});
        	return false;
		} else if(mobileNumber.trim() == "" || mobileNumber == 'undefined') {
			$('#mobileNumber').css('border-color', 'red');
			showAlert('Error', "Please enter Mobile Number");
			$('#mobileNumber').focus();
        	$( "#mobileNumber" ).keyup(function() {
				$('#mobileNumber').css('border-color', '');
			});
        	return false;
		} else if(emailId.trim() == "" || emailId == 'undefined') {
			$('#emailId').css('border-color', 'red');
			showAlert('Error', "Please enter Email Id");
			$('#emailId').focus();
        	$( "#emailId" ).keyup(function() {
				$('#emailId').css('border-color', '');
			});
        	return false;
		} else if(securityCode.trim() == "" || securityCode == 'undefined') {
			$('#securityCode').css('border-color', 'red');
			showAlert('Error', "Please enter Security Code");
			$('#securityCode').focus();
        	$( "#securityCode" ).keyup(function() {
				$('#securityCode').css('border-color', '');
			});
        	return false;
		} else {
			var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
			if(provisionalApplicationNumber != "" && provisionalApplicationNumber != 'undefined') {
				/*	---------------Update basic form data through Ajax Post request---------------------*/
				var inputParams = {};
				inputParams['provisionalApplicationNumber']=provisionalApplicationNumber;
				inputParams['post']=post;
				inputParams['postText']=postText;
				inputParams['mineSurveyorCertificate']=mineSurveyorCertificate;
				inputParams['mineSurveyorCertificateYear']=mineSurveyorCertificateYear;
				inputParams['pwbd']=pwbd;
				inputParams['pwbdDetails']=pwbdDetails;
				inputParams['pwbdSubCategory']=pwbdSubCategory;
				inputParams['needScribe']=needScribe;
				inputParams['qualification']=qualification;
				inputParams['isExServiceman']=isExServiceman;
				inputParams['exServicemanExperienceInYears']=exServicemanExperienceInYears;
				inputParams['exServicemanExperienceInMonths']=exServicemanExperienceInMonths;
				inputParams['exServicemanExperienceInDays']=exServicemanExperienceInDays;
				inputParams['havingDomicileJK']=havingDomicileJK;
				inputParams['departmentalCandidate']=departmentalCandidate;
				inputParams['employeeNumber']=employeeNumber;
				inputParams['placeOfPosting']=placeOfPosting;
				inputParams['dateOfJoining']=dateOfJoining;
				inputParams['presentDesignation']=presentDesignation;
				inputParams['category']=category;
				inputParams['gender']=gender;
				inputParams['dobDay']=dobDay;
				inputParams['dobMonth']=dobMonth;
				inputParams['dobYear']=dobYear;
				inputParams['ageCompleted']=ageCompleted;
				inputParams['firstName']=firstName;
				inputParams['middleName']=middleName;
				inputParams['lastName']=lastName;
				inputParams['fullName']=fullName;
				inputParams['mobileNumber']=mobileNumber;
				inputParams['alternateMobileNumber']=alternateMobileNumber;
				inputParams['emailId']=emailId;
				inputParams['securityCode']=securityCode;
				$('#loading').css("display", "block");
				$.ajax({
					type : "POST",
					url : "updateBasicInfo",
					data : JSON.stringify(inputParams),
					async: false,
					datatype : 'json',
					contentType: "application/json; charset=utf-8",
					success : function(result) {
						$('#loading').css("display", "none");
						if(result['status']=='error') {
							showAlert(result['status'], result['message']);
						} else {
							window.location.href = 'preview';
						}
					}
				});			
			} else {
				/*	---------------save basic form data through Ajax Post request---------------------*/
				var inputParams = {};
				inputParams['post']=post;
				inputParams['postText']=postText;
				inputParams['mineSurveyorCertificate']=mineSurveyorCertificate;
				inputParams['mineSurveyorCertificateYear']=mineSurveyorCertificateYear;
				inputParams['pwbd']=pwbd;
				inputParams['pwbdDetails']=pwbdDetails;
				inputParams['pwbdSubCategory']=pwbdSubCategory;
				inputParams['needScribe']=needScribe;
				inputParams['qualification']=qualification;
				inputParams['isExServiceman']=isExServiceman;
				inputParams['exServicemanExperienceInYears']=exServicemanExperienceInYears;
				inputParams['exServicemanExperienceInMonths']=exServicemanExperienceInMonths;
				inputParams['exServicemanExperienceInDays']=exServicemanExperienceInDays;
				inputParams['havingDomicileJK']=havingDomicileJK;
				inputParams['departmentalCandidate']=departmentalCandidate;
				inputParams['employeeNumber']=employeeNumber;
				inputParams['placeOfPosting']=placeOfPosting;
				inputParams['dateOfJoining']=dateOfJoining;
				inputParams['presentDesignation']=presentDesignation;
				inputParams['category']=category;
				inputParams['gender']=gender;
				inputParams['dobDay']=dobDay;
				inputParams['dobMonth']=dobMonth;
				inputParams['dobYear']=dobYear;
				inputParams['ageCompleted']=ageCompleted;
				inputParams['firstName']=firstName;
				inputParams['middleName']=middleName;
				inputParams['lastName']=lastName;
				inputParams['fullName']=fullName;
				inputParams['mobileNumber']=mobileNumber;
				inputParams['alternateMobileNumber']=alternateMobileNumber;
				inputParams['emailId']=emailId;
				inputParams['securityCode']=securityCode;
				inputParams['otp']=otp;
				$('#loading').css("display", "block");
				$.ajax({
					type : "POST",
					url : "saveBasicInfo",
					data : JSON.stringify(inputParams),
					async: false,
					datatype : 'json',
					contentType: "application/json; charset=utf-8",
					success : function(result) {
						$('#loading').css("display", "none");
						if(result['status']=='error'){
							showAlert(result['status'], result['message']);
						} else {
							window.location.href = 'basic-details';
						}
					}
				});
			}
		}
	});	
	
	$("#firstOTP").keyup(function () {
    	if (this.value.length == this.maxLength) {
      		$(this).next('#secondOTP').focus();
    	}
	});
	
	$("#secondOTP").keyup(function () {
    	if (this.value.length == this.maxLength) {
      		$(this).next('#thirdOTP').focus();
    	}
	});
	
	$("#thirdOTP").keyup(function () {
    	if (this.value.length == this.maxLength) {
      		$(this).next('#fourthOTP').focus();
    	}
	});
	
	$("#fourthOTP").keyup(function () {
    	if (this.value.length == this.maxLength) {
      		$('#submit-basic-info').focus();
    	}
	});
	
	$('#fourthOTP').keypress(function (e) {
 		var key = e.which;
 		if(key == 13) { // the enter key code
    		$('#submit-basic-info').click();
      		return false;
  		}
	});
	
	$('#month').keypress(function (e) {
		var key = e.which;
		if(key == 49) {
			$('#month').val('1');
		} else if(key == 50) {
			$('#month').val('2');
		} else if(key == 51) {
			$('#month').val('3');
		} else if(key == 52) {
			$('#month').val('4');
		} else if(key == 53) {
			$('#month').val('5');
		} else if(key == 54) {
			$('#month').val('6');
		} else if(key == 55) {
			$('#month').val('7');
		} else if(key == 56) {
			$('#month').val('8');
		} else if(key == 57) {
			$('#month').val('9');
		}
	})
	
	/*****************************************************************************************/	
	/*	---------------Generate securityCode on page load through Ajax Post request---------------------*/
	$.ajax({
		type : "POST",
		url : "generateSecurityCode",
		async: false,
		datatype : 'json',
		success : function(result) {
			var securityCode = 'data:image/png;base64, ' + result['imageString'];
			$('#securityCodeimg').attr('src', securityCode);			
		}
	});
	
	/*	---------------Re Generate securityCode on click through Ajax Post request---------------------*/
	$('.securityCodesync').click(function() { 
		$.ajax({
			type : "POST",
			url : "generateSecurityCode",
			async: false,
			datatype : 'json',
			success : function(result) {
				var securityCode = 'data:image/png;base64, ' + result['imageString'];
				$('#securityCodeimg').attr('src', securityCode);
			}
		});
	});
	
	/*----------------------------Security code---------------------------------------------*/
	$('#securityCode').blur(function() {
		var regex = /^[A-Z0-9]{6}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)){
			$('#securityCode').css('border-color', 'red');
			showAlert('Error',"Please enter correct Security Code");
			$('#securityCode').val('');
			$('#securityCode').focus();
	    	$( "#securityCode" ).keyup(function() {
				$('#securityCode').css('border-color', '');
			});
		}
	});	
	/*********************************************************************************************/
	
	/*	---------------close Error or success message in modal---------------------*/	
	$('.close-modal').click(function(){
		$('#alert').css("display", "none");
	});	
	/*********************************************************************************************/	
});

/*	---------------Show Error or success message in modal---------------------*/
function showAlert(status, message) {
	$('.modal-title').text(status);
	$('.modal-body').text(message);
	$('#alert').css("display", "block");
}

function logout() {
	window.location.href = 'https://www.dvcrecruitment.in/dvc/';
	// window.location.href = '/logout';
}