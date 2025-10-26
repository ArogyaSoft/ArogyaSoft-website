$(document).ready(function() {
	/************************************education details*********************************************************/
	$("#whetherCollegeAICTEApproved").change(function () {
		if($("#whetherCollegeAICTEApproved option:selected").val() == 'no') {
			$('#otherStatutoryBodySection').show();
			$('#collegeInstituteNameSection').hide();
		} else if($("#whetherCollegeAICTEApproved option:selected").val() == 'yes') {
			$('#otherStatutoryBodySection').hide();
			$('#collegeInstituteNameSection').show();
		}
	})
	
	$('#sslc-year').blur(function() {
		var sslcYear = $('#sslc-year').val();
		var dobYear = $('#dobYear').val();
		if(sslcYear <= dobYear) {
			$('#sslc-year').css('border-color', 'red');
			showAlert('Error',"Please enter valid year, Can not be less than year of date of birth");
			$('#sslc-year').val('');
        	$('#sslc-year').focus();
        	$( "#sslc-year" ).keyup(function() {
				$('#sslc-year').css('border-color', '');
			});
		}
	});
	
	$('#intermediate-year').blur(function() {
		var intermediateYear = $('#intermediate-year').val();
		var dobYear = $('#dobYear').val();
		if(intermediateYear <= dobYear) {
			$('#intermediate-year').css('border-color', 'red');
			showAlert('Error',"Please enter valid year, Can not be less than year of date of birth");
			$('#intermediate-year').val('');
        	// $('#intermediate-year').focus();
        	$( "#intermediate-year" ).keyup(function() {
				$('#intermediate-year').css('border-color', '');
			});
		}
		var sslcYear = $('#sslc-year').val();
		if(intermediateYear <= sslcYear) {
			$('#intermediate-year').css('border-color', 'red');
			showAlert('Error',"Please enter valid year, Can not be less than year of 10th");
			$('#intermediate-year').val('');
        	// $('#intermediate-year').focus();
        	$( "#intermediate-year" ).keyup(function() {
				$('#intermediate-year').css('border-color', '');
			});
		}
	});
	
	$('#diploma-mode').change(function() {
		var diplomaMode = $('option:selected', this).val();
		if(diplomaMode=='no') {
			showAlert('Notification',"You are not having required qualification, So ineligible");
			$('#diploma-mode').val('');
		}
	})
	
	$('#diploma-year').blur(function() {
		var diplomaYear = $('#diploma-year').val();
		var dobYear = $('#dobYear').val();
		if(diplomaYear <= dobYear) {
			$('#diploma-year').css('border-color', 'red');
			showAlert('Error',"Please enter valid year, Can not be less than year of date of birth");
			$('#diploma-year').val('');
        	// $('#diploma-year').focus();
        	$( "#diploma-year" ).keyup(function() {
				$('#diploma-year').css('border-color', '');
			});
		}
		var sslcYear = $('#sslc-year').val();
		if(diplomaYear <= sslcYear) {
			$('#diploma-year').css('border-color', 'red');
			showAlert('Error',"Please enter valid year, Can not be less than year of 10th");
			$('#diploma-year').val('');
        	// $('#diploma-year').focus();
        	$( "#diploma-year" ).keyup(function() {
				$('#diploma-year').css('border-color', '');
			});
		}
	});
	
	$('#other-one-year').blur(function() {
		var otherOneYear = $('#other-one-year').val();
		var dobYear = $('#dobYear').val();
		if(otherOneYear <= dobYear) {
			$('#other-one-year').css('border-color', 'red');
			showAlert('Error',"Please enter valid year, Can not be less than year of date of birth");
			$('#other-one-year').val('');
        	// $('#other-one-year').focus();
        	$( "#other-one-year" ).keyup(function() {
				$('#other-one-year').css('border-color', '');
			});
		}
	});
	
	$('#other-two-year').blur(function() {
		var otherTwoYear = $('#other-two-year').val();
		var dobYear = $('#dobYear').val();
		if(otherTwoYear <= dobYear) {
			$('#other-two-year').css('border-color', 'red');
			showAlert('Error',"Please enter valid year, Can not be less than year of date of birth");
			$('#other-two-year').val('');
        	// $('#other-two-year').focus();
        	$( "#other-two-year" ).keyup(function() {
				$('#other-two-year').css('border-color', '');
			});
		}
	});
	
	$('#other-three-year').blur(function() {
		var otherThreeYear = $('#other-three-year').val();
		var dobYear = $('#dobYear').val();
		if(otherThreeYear <= dobYear) {
			$('#other-three-year').css('border-color', 'red');
			showAlert('Error',"Please enter valid year, Can not be less than year of date of birth");
			$('#other-three-year').val('');
        	// $('#other-three-year').focus();
        	$( "#other-three-year" ).keyup(function() {
				$('#other-three-year').css('border-color', '');
			});
		}
	});
	
	// Calculate percentage
	$('#sslc-marks-max').blur(function() {
		var sslcMarksObtained = $('#sslc-marks-obtained').val();
		var sslcMarksMax = $('#sslc-marks-max').val();
		if(parseInt(sslcMarksObtained) <= parseInt(sslcMarksMax)) {
			var sslcMarksPercentage = sslcMarksObtained*100 / sslcMarksMax;
			$('#sslc-marks-percentage').val(sslcMarksPercentage.toFixed(2));
			
			var postAppliedForId = $('#postAppliedForId').val();
			if(postAppliedForId==7) {
				var diplomaMarksPercentage = $('#diploma-marks-percentage').val();
				var category = $('#category').val();
				var pwbd = $('#pwbd').val();
				if(pwbd == 'yes' || category == 'sc' || category == 'st') {
					if(parseInt(diplomaMarksPercentage) < 60 && parseInt(sslcMarksPercentage) < 60) {
						showAlert('Notification',"You are not having required percentage/grade in diploma or sslc, so you are ineligible");
						$('#diploma-marks-percentage').val('');
						$('#sslc-marks-percentage').val('');
					}
				} else if(category == 'general' || category == 'obc-ncl' || category == 'ews') {
					if(parseInt(diplomaMarksPercentage) < 65 && parseInt(sslcMarksPercentage) < 65) {
						showAlert('Notification',"You are not having required percentage/grade in diploma or sslc, so you are ineligible");
						$('#diploma-marks-percentage').val('');
						$('#sslc-marks-percentage').val('');
					}
				}
			}
			
		} else {
			$('#sslc-marks-max').css('border-color', 'red');
			showAlert('Error',"Please enter valid max marks, Can not be less than obtained marks");
			$('#sslc-marks-max').val('');
        	$('#sslc-marks-max').focus();
        	$( "#sslc-marks-max" ).keyup(function() {
				$('#sslc-marks-max').css('border-color', '');
			});
		}		
	});
	
	$('#intermediate-marks-max').blur(function() {
		var intermediateMarksObtained = $('#intermediate-marks-obtained').val();
		var intermediateMarksMax = $('#intermediate-marks-max').val();
		if(parseInt(intermediateMarksObtained) <= parseInt(intermediateMarksMax)) {
			var intermediateMarksPercentage = intermediateMarksObtained*100 / intermediateMarksMax;
			$('#intermediate-marks-percentage').val(intermediateMarksPercentage.toFixed(2));
		} else {
			$('#intermediate-marks-max').css('border-color', 'red');
			showAlert('Error',"Please enter valid max marks, Can not be less than obtained marks");
			$('#intermediate-marks-max').val('');
        	// $('#intermediate-marks-max').focus();
        	$( "#intermediate-marks-max" ).keyup(function() {
				$('#intermediate-marks-max').css('border-color', '');
			});
		}
	});
	
	$('#diploma-marks-max').blur(function() {
		var diplomaMarksObtained = $('#diploma-marks-obtained').val();
		var diplomaMarksMax = $('#diploma-marks-max').val();
		if(parseInt(diplomaMarksObtained) <= parseInt(diplomaMarksMax)) {
			var diplomaMarksPercentage = diplomaMarksObtained*100 / diplomaMarksMax;
			$('#diploma-marks-percentage').val(diplomaMarksPercentage.toFixed(2));

			var postAppliedForId = $('#postAppliedForId').val();
			if(postAppliedForId==7) {
				var sslcMarksPercentage = $('#sslc-marks-percentage').val();
				var category = $('#category').val();
				var pwbd = $('#pwbd').val();
				if(pwbd == 'yes' || category == 'sc' || category == 'st') {
					if(parseInt(diplomaMarksPercentage) < 60 && parseInt(sslcMarksPercentage) < 60) {
						showAlert('Notification',"You are not having required percentage/grade in diploma or sslc, so you are ineligible");
						$('#diploma-marks-percentage').val('');
						$('#sslc-marks-percentage').val('');
					}
				} else if(category == 'general' || category == 'obc-ncl' || category == 'ews') {
					if(parseInt(diplomaMarksPercentage) < 65 && parseInt(sslcMarksPercentage) < 65) {
						showAlert('Notification',"You are not having required percentage/grade in diploma or sslc, so you are ineligible");
						$('#diploma-marks-percentage').val('');
						$('#sslc-marks-percentage').val('');
					}
				}
			} else if(postAppliedForId==6){
				if(parseInt(diplomaMarksPercentage) < 65) {
					showAlert('Notification',"You are not having required percentage/grade in diploma, so you are ineligible");
					$('#diploma-marks-percentage').val('');
				}
			} else {
				var category = $('#category').val();
				var pwbd = $('#pwbd').val();
				if(pwbd == 'yes' || category == 'sc' || category == 'st') {
					if(parseInt(diplomaMarksPercentage) < 60) {
						showAlert('Notification',"You are not having required percentage/grade in diploma, so you are ineligible");
						$('#diploma-marks-percentage').val('');
					}
				} else if(category == 'general' || category == 'obc-ncl' || category == 'ews') {
					if(parseInt(diplomaMarksPercentage) < 65) {
						showAlert('Notification',"You are not having required percentage/grade in diploma, so you are ineligible");
						$('#diploma-marks-percentage').val('');
					}
				}
			}
		} else {
			$('#diploma-marks-max').css('border-color', 'red');
			showAlert('Error',"Please enter valid max marks, Can not be less than obtained marks");
			$('#diploma-marks-max').val('');
        	// $('#diploma-marks-max').focus();
        	$( "#diploma-marks-max" ).keyup(function() {
				$('#diploma-marks-max').css('border-color', '');
			});
		}
	});
	
	$('#other-one-marks-max').blur(function() {
		var other1MarksObtained = $('#other-one-marks-obtained').val();
		var other1MarksMax = $('#other-one-marks-max').val();
		if(parseInt(other1MarksObtained) <= parseInt(other1MarksMax)) {
			var other1MarksPercentage = other1MarksObtained*100 / other1MarksMax;
			$('#other-one-marks-percentage').val(other1MarksPercentage.toFixed(2));
		} else {
			$('#other-one-marks-max').css('border-color', 'red');
			showAlert('Error',"Please enter valid max marks, Can not be less than obtained marks");
			$('#other-one-marks-max').val('');
        	// $('#other-one-marks-max').focus();
        	$( "#other-one-marks-max" ).keyup(function() {
				$('#other-one-marks-max').css('border-color', '');
			});
		}
	});
	
	$('#other-two-marks-max').blur(function() {
		var other2MarksObtained = $('#other-two-marks-obtained').val();
		var other2MarksMax = $('#other-two-marks-max').val();
		if(parseInt(other2MarksObtained) <= parseInt(other2MarksMax)) {
			var other2MarksPercentage = other2MarksObtained*100 / other2MarksMax;
			$('#other-two-marks-percentage').val(other2MarksPercentage.toFixed(2));
		} else {
			$('#other-two-marks-max').css('border-color', 'red');
			showAlert('Error',"Please enter valid max marks, Can not be less than obtained marks");
			$('#other-two-marks-max').val('');
        	// $('#other-two-marks-max').focus();
        	$( "#other-two-marks-max" ).keyup(function() {
				$('#other-two-marks-max').css('border-color', '');
			});
		}
	});
	
	$('#other-three-marks-max').blur(function() {
		var other3MarksObtained = $('#other-three-marks-obtained').val();
		var other3MarksMax = $('#other-three-marks-max').val();
		if(parseInt(other3MarksObtained) <= parseInt(other3MarksMax)) {
			var other3MarksPercentage = other3MarksObtained*100 / other3MarksMax;
			$('#other-three-marks-percentage').val(other3MarksPercentage.toFixed(2));
		} else {
			$('#other-three-marks-max').css('border-color', 'red');
			showAlert('Error',"Please enter valid max marks, Can not be less than obtained marks");
			$('#other-three-marks-max').val('');
        	// $('#other-three-marks-max').focus();
        	$( "#other-three-marks-max" ).keyup(function() {
				$('#other-three-marks-max').css('border-color', '');
			});
		}
	});
	
	//*****************************************add experience******************************
	var countExperience = $('#experienceDetailsListCount').val();
	countExperience = (isNaN(countExperience)) ? 0 : countExperience;
	$("#add-experience").click(function() {
		countExperience++;
		$("#experienceDetailList").append(add_content_to_experienceDetailList(countExperience));
	});
	
	function add_content_to_experienceDetailList(count) {
		/*<input type="text" id="experience_${count}_employerName" class="experience experience_employerName form-control wizard-required">*/
		/*<input type="text" id="experience_${count}_reasonForLeaving" class="experience experience_reasonForLeaving form-control wizard-required">*/
		return `<tr class="exp_${count}">
	    <td>
	    	<select id="experience_${count}_employerName" class="form-control experience experience_employerName">
          		<option value="Government Organization">Government Organization</option>
          		<option value="Private Organization">Private Organization</option>
          		<option value="Any other Organization">Any other Organization</option>
            </select>
	    </td>
	    <td><input type="text" class="form-control experience experience_designation" id="experience_${count}_designation"></td>
	    <td><input type="text" id="experience_${count}_serviceFrom" class="experience experience_serviceFrom form-control wizard-required" onblur="serviceDateDiff(this)" placeholder="DD-MM-YYYY"></td>
	    <td><input type="text" id="experience_${count}_serviceTo" class="experience experience_serviceTo form-control wizard-required" onblur="serviceDateDiff(this)" placeholder="DD-MM-YYYY"></td>
	    <td><input type="text" id="experience_${count}_natureOfDuty" class="experience experience_natureOfDuty form-control wizard-required"></td>
	    <td>
	    	<select id="experience_${count}_reasonForLeaving" class="experience experience_reasonForLeaving form-control wizard-required">
				<option value="personal">personal</option>
          		<option value="others">others</option>
            </select>
	    </td>
	    <td><input type="text" id="experience_${count}_Year" class="experience experience_Year form-control wizard-required" readonly></td>
	    <td><input type="text" id="experience_${count}_month" class="experience experience_month form-control wizard-required" readonly></td>
	    <td><input type="text" id="experience_${count}_day" class="experience experience_day form-control wizard-required" readonly></td>
	    <td>
	    <input type="hidden" id="experience_${count}_id" class="experience experience_id">
	    <button type="button" id="remove_exp_${count}" class="btn btn-danger fresh" onclick="removeExperience(this)"><i class="fa fa-minus-circle"></i> Remove</button>
	    </td>
	   </tr>`;
	}
	
	var countLanguage = $('#languageDetailsListCount').val();
	countLanguage = (isNaN(countLanguage)) ? 0 : countLanguage;
	
	$("#add-language").click(function() {
		countLanguage++;
		$("#languageDetailList").append(add_content_to_languageDetailList(countLanguage));
	});
	
	function add_content_to_languageDetailList(count) {
		return `<tr class="lan_${count}">
          	<td width="250px" class="">
				<input type="text" id="${count}_language" class="add-language" placeholder="Enter Language">
			</td>
          	<td  class="radio-label-col">
          		<span><input type="checkbox" name="${count}-language-read" value="0"><label>Read</label></span>
            	<span><input type="checkbox" name="${count}-language-write" value="0"><label>Write</label></span>
            	<span><input type="checkbox" name="${count}-language-speak" value="0"><label>Speak</label></span>
            	<input type="hidden" id="language_${count}_id">
	    		<button type="button" id="remove_lan_${count}" class="btn btn-danger fresh" onclick="removeLanguage(this)"><i class="fa fa-minus-circle"></i> Remove</button>
            </td>
        </tr>`;
	}
	
	//*****************************************save data****************************************
	$('#save-qualification-details').click(function() {
		var returnValue = true;
		var inputParams = {};
		
		var postAppliedForId = $('#postAppliedForId').val();
		
		var index = 0
		var educationDetailList = [];
		
		var sslcQualification = $('#sslc-qualification').val();
		var sslcTrade = $('#sslc-trade').val();
		var sslcMonth = $('#sslc-month').val();
		var sslcYear = $('#sslc-year').val();
		var sslcInstitute = $('#sslc-institute').val();
		var sslcDuration = $('#sslc-duration').val();
		var sslcMode = $( "#sslc-mode option:selected" ).val();
		var sslcGrade = $('#sslc-grade option:selected').val();
		var sslcMarksObtained = $('#sslc-marks-obtained').val();
		var sslcMarksMax = $('#sslc-marks-max').val();
		var sslcMarksPercentage = $('#sslc-marks-percentage').val();
		if(sslcTrade.trim() == "" || sslcTrade == 'undefined' ) {
			$('#sslc-trade').addClass("border-highlight");
			showAlert('Error',"Please enter sslc trade");
			$('#sslc-trade').focus();
        	$( "#sslc-trade" ).keyup(function() {
				$('#sslc-trade').removeClass("border-highlight");
			});
        	return false;
		} else if(sslcMonth == "" || sslcMonth == null || sslcMonth == 'undefined') {
			$('#sslc-month').addClass("border-highlight");
			showAlert('Error',"Please enter sslc month");
			$('#sslc-month').focus();
        	$( "#sslc-month" ).keyup(function() {
				$('#sslc-month').removeClass("border-highlight");
			});
			return false;
		} else if(sslcYear == "" || sslcYear == null || sslcYear == 'undefined') {
			$('#sslc-year').addClass("border-highlight");
			showAlert('Error',"Please enter sslc year");
			$('#sslc-year').focus();
        	$( "#sslc-year" ).keyup(function() {
				$('#sslc-year').removeClass("border-highlight");
			});
			return false;
		} else if(sslcInstitute == "" || sslcInstitute == null || sslcInstitute == 'undefined' ) {
			$('#sslc-institute').addClass("border-highlight");
			showAlert('Error',"Please enter sslc institute");
			$('#sslc-institute').focus();
        	$( "#sslc-institute" ).keyup(function() {
				$('#sslc-institute').removeClass("border-highlight");
			});
			return false;
		} else if(sslcDuration == "" || sslcDuration == null || sslcDuration == 'undefined' ) {
			$('#sslc-duration').addClass("border-highlight");
			showAlert('Error',"Please enter sslc duration");
			$('#sslc-duration').focus();
        	$( "#sslc-duration" ).keyup(function() {
				$('#sslc-duration').removeClass("border-highlight");
			});
			return false;
		} else if(sslcMode == "" || sslcMode == null || sslcMode == 'undefined') {
			$('#sslc-mode').addClass("border-highlight");
			showAlert('Error',"Please select sslc mode");
			$('#sslc-mode').focus();
        	$( "#sslc-mode" ).keyup(function() {
				$('#sslc-mode').removeClass("border-highlight");
			});
			return false;
		} else if(sslcGrade == "" || sslcGrade == null || sslcGrade == 'undefined' ) {
			$('#sslc-grade').addClass("border-highlight");
			showAlert('Error',"Please select sslc grade");
			$('#sslc-grade').focus();
        	$( "#sslc-grade" ).keyup(function() {
				$('#sslc-grade').removeClass("border-highlight");
			});
			return false;
		} else if(sslcMarksObtained == "" || sslcMarksObtained == null || sslcMarksObtained == 'undefined') {
			$('#sslc-marks-obtained').addClass("border-highlight");
			showAlert('Error',"Please enter sslc marks obtained");
			$('#sslc-marks-obtained').focus();
        	$( "#sslc-marks-obtained" ).keyup(function() {
				$('#sslc-marks-obtained').removeClass("border-highlight");
			});
			return false;
		} else if(sslcMarksMax == "" || sslcMarksMax == null || sslcMarksMax == 'undefined') {
			$('#sslc-marks-max').addClass("border-highlight");
			showAlert('Error',"Please enter sslc marks max");
			$('#sslc-marks-max').focus();
        	$( "#sslc-marks-max" ).keyup(function() {
				$('#sslc-marks-max').removeClass("border-highlight");
			});
			return false;
		} else if(sslcMarksPercentage == "" || sslcMarksPercentage == null || sslcMarksPercentage == 'undefined') {
			$('#sslc-marks-percentage').addClass("border-highlight");
			showAlert('Error',"Please enter sslc marks percentage");
			$('#sslc-marks-percentage').focus();
        	$( "#sslc-marks-percentage" ).keyup(function() {
				$('#sslc-marks-percentage').removeClass("border-highlight");
			});
			return false;
		}
		
		var educationDetail = {};
		educationDetail['qualification']=sslcQualification;
		educationDetail['trade']=sslcTrade;
		educationDetail['month']=sslcMonth;
		educationDetail['year']=sslcYear;
		educationDetail['institute']=sslcInstitute;
		educationDetail['duration']=sslcDuration;
		educationDetail['mode']=sslcMode;
		educationDetail['grade']=sslcGrade;
		educationDetail['marksObtained']=sslcMarksObtained;
		educationDetail['marksMax']=sslcMarksMax;
		educationDetail['marksPercentage']=sslcMarksPercentage;
		educationDetailList[index]=educationDetail;
		index++;
		
		var intermediateQualification = $('#intermediate-qualification').val();
		var intermediateTrade = $('#intermediate-trade').val();
		var intermediateMonth = $('#intermediate-month').val();
		var intermediateYear = $('#intermediate-year').val();
		var intermediateInstitute = $('#intermediate-institute').val();
		var intermediateDuration = $('#intermediate-duration').val();
		var intermediateMode = $('#intermediate-mode option:selected').val();
		var intermediateGrade = $('#intermediate-grade option:selected').val();
		var intermediateMarksObtained = $('#intermediate-marks-obtained').val();
		var intermediateMarksMax = $('#intermediate-marks-max').val();
		var intermediateMarksPercentage = $('#intermediate-marks-percentage').val();
		
		if(postAppliedForId=='6') {
			if(intermediateTrade.trim() == "" || intermediateTrade == 'undefined' ) {
				$('#intermediate-trade').addClass("border-highlight");
				showAlert('Error',"Please enter intermediate trade");
				$('#intermediate-trade').focus();
	        	$( "#intermediate-trade" ).keyup(function() {
					$('#intermediate-trade').removeClass("border-highlight");
				});
	        	return false;
			} else if(intermediateMonth == "" || intermediateMonth == null || intermediateMonth == 'undefined' ) {
				$('#intermediate-month').addClass("border-highlight");
				showAlert('Error',"Please enter intermediate month");
				$('#intermediate-month').focus();
	        	$( "#intermediate-month" ).keyup(function() {
					$('#intermediate-month').removeClass("border-highlight");
				});
				return false;
			} else if(intermediateYear == "" || intermediateYear == null || intermediateYear == 'undefined' ) {
				$('#intermediate-year').addClass("border-highlight");
				showAlert('Error',"Please enter intermediate year");
				$('#intermediate-year').focus();
	        	$( "#intermediate-year" ).keyup(function() {
					$('#intermediate-year').removeClass("border-highlight");
				});
				return false;
			} else if(intermediateInstitute == "" || intermediateInstitute == null || intermediateInstitute == 'undefined' ) {
				$('#intermediate-institute').addClass("border-highlight");
				showAlert('Error',"Please enter intermediate institute");
				$('#intermediate-institute').focus();
	        	$( "#intermediate-institute" ).keyup(function() {
					$('#intermediate-institute').removeClass("border-highlight");
				});
				return false;
			} else if(intermediateDuration == "" || intermediateDuration == null || intermediateDuration == 'undefined') {
				$('#intermediate-duration').addClass("border-highlight");
				showAlert('Error',"Please enter intermediate duration");
				$('#intermediate-duration').focus();
	        	$( "#intermediate-duration" ).keyup(function() {
					$('#intermediate-duration').removeClass("border-highlight");
				});
				return false;
			} else if(intermediateMode == "" || intermediateMode == null || intermediateMode == 'undefined') {
				$('#intermediate-mode').addClass("border-highlight");
				showAlert('Error',"Please select intermediate mode");
				$('#intermediate-mode').focus();
	        	$( "#intermediate-mode" ).keyup(function() {
					$('#intermediate-mode').removeClass("border-highlight");
				});
				return false;
			} else if(intermediateGrade == "" || intermediateGrade == null || intermediateGrade == 'undefined') {
				$('#intermediate-grade').addClass("border-highlight");
				showAlert('Error',"Please select intermediate grade");
				$('#intermediate-grade').focus();
	        	$( "#intermediate-grade" ).keyup(function() {
					$('#intermediate-grade').removeClass("border-highlight");
				});
				return false;
			} else if(intermediateMarksObtained == "" || intermediateMarksObtained == null || intermediateMarksObtained == 'undefined') {
				$('#intermediate-marks-obtained').addClass("border-highlight");
				showAlert('Error',"Please enter intermediate marks obtained");
				$('#intermediate-marks-obtained').focus();
	        	$( "#intermediate-marks-obtained" ).keyup(function() {
					$('#intermediate-marks-obtained').removeClass("border-highlight");
				});
				return false;
			} else if(intermediateMarksMax == "" || intermediateMarksMax == null || intermediateMarksMax == 'undefined') {
				$('#intermediate-marks-max').addClass("border-highlight");
				showAlert('Error',"Please enter intermediate marks max");
				$('#intermediate-marks-max').focus();
	        	$( "#intermediate-marks-max" ).keyup(function() {
					$('#intermediate-marks-max').removeClass("border-highlight");
				});
				return false;
			} else if(intermediateMarksPercentage == "" || intermediateMarksPercentage == null || intermediateMarksPercentage == 'undefined') {
				$('#intermediate-marks-percentage').addClass("border-highlight");
				showAlert('Error',"Please enter intermediate marks percentage");
				$('#intermediate-marks-percentage').focus();
	        	$( "#intermediate-marks-percentage" ).keyup(function() {
					$('#intermediate-marks-percentage').removeClass("border-highlight");
				});
				return false;
			}
		}
		
		educationDetail = {};
		educationDetail['qualification']=intermediateQualification;
		educationDetail['trade']=intermediateTrade;
		educationDetail['month']=intermediateMonth;
		educationDetail['year']=intermediateYear;
		educationDetail['institute']=intermediateInstitute;
		educationDetail['duration']=intermediateDuration;
		educationDetail['mode']=intermediateMode;
		educationDetail['grade']=intermediateGrade;
		educationDetail['marksObtained']=intermediateMarksObtained;
		educationDetail['marksMax']=intermediateMarksMax;
		educationDetail['marksPercentage']=intermediateMarksPercentage;
		educationDetailList[index]=educationDetail;
		index++;
		
		var diplomaQualification = $('#diploma-qualification').val();
		var diplomaTrade = $('#diploma-trade').val();
		var diplomaMonth = $('#diploma-month').val();
		var diplomaYear = $('#diploma-year').val();
		var diplomaInstitute = $('#diploma-institute').val();
		var diplomaDuration = $('#diploma-duration').val();
		var diplomaMode = $('#diploma-mode option:selected').val();
		var diplomaGrade = $('#diploma-grade option:selected').val();
		var diplomaMarksObtained = $('#diploma-marks-obtained').val();
		var diplomaMarksMax = $('#diploma-marks-max').val();
		var diplomaMarksPercentage = $('#diploma-marks-percentage').val();
		if(postAppliedForId!='7') {
			if(diplomaTrade.trim() == "" || diplomaTrade == 'undefined' ) {
				$('#diploma-trade').addClass("border-highlight");
				showAlert('Error',"Please enter diploma trade");
				$('#diploma-trade').focus();
	        	$( "#diploma-trade" ).keyup(function() {
					$('#diploma-trade').removeClass("border-highlight");
				});
	        	return false;
			} else if(diplomaMonth == "" || diplomaMonth == null || diplomaMonth == 'undefined' ) {
				$('#diploma-month').addClass("border-highlight");
				showAlert('Error',"Please enter diploma month");
				$('#diploma-month').focus();
	        	$( "#diploma-month" ).keyup(function() {
					$('#diploma-month').removeClass("border-highlight");
				});
				return false;
			} else if(diplomaYear == "" || diplomaYear == null || diplomaYear == 'undefined' ) {
				$('#diploma-year').addClass("border-highlight");
				showAlert('Error',"Please enter diploma year");
				$('#diploma-year').focus();
	        	$( "#diploma-year" ).keyup(function() {
					$('#diploma-year').removeClass("border-highlight");
				});
				return false;
			} else if(diplomaInstitute == "" || diplomaInstitute == null || diplomaInstitute == 'undefined') {
				$('#diploma-institute').addClass("border-highlight");
				showAlert('Error',"Please enter diploma institute");
				$('#diploma-institute').focus();
	        	$( "#diploma-institute" ).keyup(function() {
					$('#diploma-institute').removeClass("border-highlight");
				});
				return false;
			} else if(diplomaDuration == "" || diplomaDuration == null || diplomaDuration == 'undefined') {
				$('#diploma-duration').addClass("border-highlight");
				showAlert('Error',"Please enter diploma duration");
				$('#diploma-duration').focus();
	        	$( "#diploma-duration" ).keyup(function() {
					$('#diploma-duration').removeClass("border-highlight");
				});
				return false;
			} else if(diplomaMode == "" || diplomaMode == null || diplomaMode == 'undefined') {
				$('#diploma-mode').addClass("border-highlight");
				showAlert('Error',"Please select diploma mode");
				$('#diploma-mode').focus();
	        	$( "#diploma-mode" ).keyup(function() {
					$('#diploma-mode').removeClass("border-highlight");
				});
				return false;
			} else if(diplomaGrade == "" || diplomaGrade == null || diplomaGrade == 'undefined') {
				$('#diploma-grade').addClass("border-highlight");
				showAlert('Error',"Please select diploma grade");
				$('#diploma-grade').focus();
	        	$( "#diploma-grade" ).keyup(function() {
					$('#diploma-grade').removeClass("border-highlight");
				});
				return false;
			} else if(diplomaMarksObtained == "" || diplomaMarksObtained == null || diplomaMarksObtained == 'undefined') {
				$('#diploma-marks-obtained').addClass("border-highlight");
				showAlert('Error',"Please enter diploma marks obtained");
				$('#diploma-marks-obtained').focus();
	        	$( "#diploma-marks-obtained" ).keyup(function() {
					$('#diploma-marks-obtained').removeClass("border-highlight");
				});
				return false;
			} else if(diplomaMarksMax == "" || diplomaMarksMax == null || diplomaMarksMax == 'undefined') {
				$('#diploma-marks-max').addClass("border-highlight");
				showAlert('Error',"Please enter diploma marks max");
				$('#diploma-marks-max').focus();
	        	$( "#diploma-marks-max" ).keyup(function() {
					$('#diploma-marks-max').removeClass("border-highlight");
				});
				return false;
			} else if(diplomaMarksPercentage == "" || diplomaMarksPercentage == null || diplomaMarksPercentage == 'undefined') {
				$('#diploma-marks-percentage').addClass("border-highlight");
				showAlert('Error',"Please enter diploma marks percentage");
				$('#diploma-marks-percentage').focus();
	        	$( "#diploma-marks-percentage" ).keyup(function() {
					$('#diploma-marks-percentage').removeClass("border-highlight");
				});
				return false;
			}
		}
		educationDetail = {};
		educationDetail['qualification']=diplomaQualification;
		educationDetail['trade']=diplomaTrade;
		educationDetail['month']=diplomaMonth;
		educationDetail['year']=diplomaYear;
		educationDetail['institute']=diplomaInstitute;
		educationDetail['duration']=diplomaDuration;
		educationDetail['mode']=diplomaMode;
		educationDetail['grade']=diplomaGrade;
		educationDetail['marksObtained']=diplomaMarksObtained;
		educationDetail['marksMax']=diplomaMarksMax;
		educationDetail['marksPercentage']=diplomaMarksPercentage;
		educationDetailList[index]=educationDetail;
		index++;
		
		var other1Qualification = $('#other-one-qualification').val();
		var other1Trade = $('#other-one-trade').val();
		var other1Month = $('#other-one-month').val();
		var other1Year = $('#other-one-year').val();
		var other1Institute = $('#other-one-institute').val();
		var other1Duration = $('#other-one-duration').val();
		var other1Mode = $('#other-one-mode option:selected').val();
		var other1Grade = $('#other-one-grade option:selected').val();
		var other1MarksObtained = $('#other-one-marks-obtained').val();
		var other1MarksMax = $('#other-one-marks-max').val();
		var other1MarksPercentage = $('#other-one-marks-percentage').val();
		if(other1Qualification != null && other1Qualification != '') {
			educationDetail = {};
			educationDetail['qualification']=other1Qualification;
			educationDetail['trade']=other1Trade;
			educationDetail['month']=other1Month;
			educationDetail['year']=other1Year;
			educationDetail['institute']=other1Institute;
			educationDetail['duration']=other1Duration;
			educationDetail['mode']=other1Mode;
			educationDetail['grade']=other1Grade;
			educationDetail['marksObtained']=other1MarksObtained;
			educationDetail['marksMax']=other1MarksMax;
			educationDetail['marksPercentage']=other1MarksPercentage;
			educationDetailList[index]=educationDetail;
			index++;
		}		
		
		var other2Qualification = $('#other-two-qualification').val();
		var other2Trade = $('#other-two-trade').val();
		var other2Month = $('#other-two-month').val();
		var other2Year = $('#other-two-year').val();
		var other2Institute = $('#other-two-institute').val();
		var other2Duration = $('#other-two-duration').val();
		var other2Mode = $('#other-two-mode option:selected').val();
		var other2Grade = $('#other-two-grade option:selected').val();
		var other2MarksObtained = $('#other-two-marks-obtained').val();
		var other2MarksMax = $('#other-two-marks-max').val();
		var other2MarksPercentage = $('#other-two-marks-percentage').val();
		if(other2Qualification != null && other2Qualification != '') {
			educationDetail = {};
			educationDetail['qualification']=other2Qualification;
			educationDetail['trade']=other2Trade;
			educationDetail['month']=other2Month;
			educationDetail['year']=other2Year;
			educationDetail['institute']=other2Institute;
			educationDetail['duration']=other2Duration;
			educationDetail['mode']=other2Mode;
			educationDetail['grade']=other2Grade;
			educationDetail['marksObtained']=other2MarksObtained;
			educationDetail['marksMax']=other2MarksMax;
			educationDetail['marksPercentage']=other2MarksPercentage;
			educationDetailList[index]=educationDetail;
			index++;
		}
		
		var other3Qualification = $('#other-three-qualification').val();
		var other3Trade = $('#other-three-trade').val();
		var other3Month = $('#other-three-month').val();
		var other3Year = $('#other-three-year').val();
		var other3Institute = $('#other-three-institute').val();
		var other3Duration = $('#other-three-duration').val();
		var other3Mode = $('#other-three-mode option:selected').val();
		var other3Grade = $('#other-three-grade option:selected').val();
		var other3MarksObtained = $('#other-three-marks-obtained').val();
		var other3MarksMax = $('#other-three-marks-max').val();
		var other3MarksPercentage = $('#other-three-marks-percentage').val();
		if(other3Qualification != null && other3Qualification != '') {
			educationDetail = {};
			educationDetail['qualification']=other3Qualification;
			educationDetail['trade']=other3Trade;
			educationDetail['month']=other3Month;
			educationDetail['year']=other3Year;
			educationDetail['institute']=other3Institute;
			educationDetail['duration']=other3Duration;
			educationDetail['mode']=other3Mode;
			educationDetail['grade']=other3Grade;
			educationDetail['marksObtained']=other3MarksObtained;
			educationDetail['marksMax']=other3MarksMax;
			educationDetail['marksPercentage']=other3MarksPercentage;
			educationDetailList[index]=educationDetail;
			index++;
		}
		
		inputParams['educationDetailList']=educationDetailList;
			
		// Work Experience Details
		
		index = 0;
		var experienceDetailList = [];
		var experienceDetail = {};
		$(".experience").each(function() {
			if($('#'+this.id).attr('type')!='hidden') {
				if(this.value =='' || this.value == 'undefined') {
					if($('#'+this.id).attr('type')!='text') {
						$('#'+this.id).css('border-color', 'red');
						$('#'+this.id).focus();
						$('#'+this.id).change(function() {
							$('#'+this.id).css('border-color', '');
						});
						showAlert('Error',"Please select "+this.id.replaceAll("_"," "));
						e.preventPropagation();
						returnValue=false;
						return false;
					} else {
						$('#'+this.id).css('border-color', 'red');
						$('#'+this.id).focus();
						$('#'+this.id).keyup(function() {
							$('#'+this.id).css('border-color', '');
						});
						showAlert('Error',"Please enter "+this.id.replaceAll("_"," "));
						e.preventPropagation();
						returnValue=false;
						return false;
					}
				} else {
					var nameRegex = /^([A-Za-z]+ )+[A-Za-z]+$|^[A-Za-z]+$/; 
					var dateRegex = /^\d{2}-\d{2}-\d{4}$/;
					
					if((this.id.split('_')[this.id.split('_').length - 1]=='serviceFrom' || this.id.split('_')[this.id.split('_').length - 1]=='serviceTo') && $('#'+this.id).attr('type')=='text' && !dateRegex.test(this.value)) {
						$('#'+this.id).css('border-color', 'red');
						$('#'+this.id).focus();
						$('#'+this.id).change(function() {
							$('#'+this.id).css('border-color', '');
						});
						showAlert('Error',"Please enter valid "+this.id.replaceAll("_"," "));
						e.preventPropagation();
						returnValue=false;
						return false;
					} else if((this.id.split('_')[this.id.split('_').length - 1] == 'employerName' || this.id.split('_')[this.id.split('_').length - 1] == 'natureOfDuty' || this.id.split('_')[this.id.split('_').length - 1] == 'reasonForLeaving') && !nameRegex.test(this.value)) {
						$('#'+this.id).css('border-color', 'red');
						$('#'+this.id).focus();
						$('#'+this.id).change(function() {
							$('#'+this.id).css('border-color', '');
						});
						showAlert('Error',"Please enter valid "+this.id.replaceAll("_"," "));
						e.preventPropagation();
						returnValue=false;
						return false;
					} else {
						experienceDetail[this.id.split('_')[this.id.split('_').length - 1]]=this.value;
					}
				}
			}
			if($('#'+this.id).attr('type')=='hidden') {
				experienceDetailList[index]=experienceDetail;
				experienceDetail = {};
				index++;
			}
			return returnValue;
		});
		inputParams['experienceDetailList']=experienceDetailList;
		inputParams['totalExperience']=$('#totalExperience').val();
		
		// Language Details		
		index = 0;
		languageDetailList=[];		
		$(".language").each(function() {
			var languageDetail = {};
			
			var language = this.id.substr(0, this.id.lastIndexOf("_")); // alert("language : "+language);
			var languageRead = $('input[name='+language+'-language-read]').is(":checked")?"1":"0"; // alert("languageRead : "+languageRead);
			var languageWrite = $('input[name='+language+'-language-write]').is(":checked")?"1":"0"; // alert("languageWrite : "+languageWrite);
			var languageSpeak = $('input[name='+language+'-language-speak]').is(":checked")?"1":"0"; // alert("languageSpeak : "+languageSpeak);
			
			languageDetail['language']=language;
			languageDetail['read']=languageRead;
			languageDetail['write']=languageWrite;
			languageDetail['speak']=languageSpeak;
			
			languageDetailList[index]=languageDetail;
			index++;
		});
		$(".add-language").each(function() {
			var languageDetail = {};
			
			var languageNumber = this.id.substr(0, this.id.lastIndexOf("_")); // alert("languageNumber : "+languageNumber);
			var language = $('#'+languageNumber+'_language').val(); // alert("language : "+language);
			var languageRead = $('input[name='+languageNumber+'-language-read]').is(":checked")?"1":"0"; // alert("languageRead : "+languageRead);
			var languageWrite = $('input[name='+languageNumber+'-language-write]').is(":checked")?"1":"0"; // alert("languageWrite : "+languageWrite);
			var languageSpeak = $('input[name='+languageNumber+'-language-speak]').is(":checked")?"1":"0"; // alert("languageSpeak : "+languageSpeak);
			
			languageDetail['language']=language;
			languageDetail['read']=languageRead;
			languageDetail['write']=languageWrite;
			languageDetail['speak']=languageSpeak;
			
			languageDetailList[index]=languageDetail;
			index++;
		});
		inputParams['languageDetailList']=languageDetailList;
		// showAlert("Info", JSON.stringify(inputParams)); e.preventPropagation();

		var whetherCollegeAICTEApproved = $("#whetherCollegeAICTEApproved option:selected").val();
		var collegeInstituteName = $("#collegeInstituteName").val();
		var otherStatutoryBody = $("#otherStatutoryBody").val();
		var employeedInPSU = $("#employeedInPSU option:selected").val();
		var visibleMarksIdentification = $("#visibleMarksIdentification").val();
		var extraCurricularActivity = $("#extraCurricularActivity").val();
		var criminalCaseDetails = $("#criminalCaseDetails").val();
		
		whetherCollegeAICTEApproved = whetherCollegeAICTEApproved==''?'no':whetherCollegeAICTEApproved;
		employeedInPSU = employeedInPSU==''?'no':employeedInPSU;
		
		if(whetherCollegeAICTEApproved == "" || whetherCollegeAICTEApproved == 'undefined') {
			$('#whetherCollegeAICTEApproved').css('border-color', 'red');
			showAlert('Error', "Please select whetherCollegeAICTEApproved");
			$('#whetherCollegeAICTEApproved').focus();
        	$( "#whetherCollegeAICTEApproved" ).change(function() {
				$('#whetherCollegeAICTEApproved').css('border-color', '');
			});
        	return false;
		}
		/* else if(whetherCollegeAICTEApproved == "yes" && (collegeInstituteName == "" || collegeInstituteName == 'undefined')) {
			$('#collegeInstituteName').css('border-color', 'red');
			showAlert('Error',"Please enter collegeInstituteName");
			$('#collegeInstituteName').focus();
        	$( "#collegeInstituteName" ).keyup(function() {
				$('#collegeInstituteName').css('border-color', '');
			});
        	return false;
		} */
		else if(whetherCollegeAICTEApproved == "no" && (otherStatutoryBody == "" || otherStatutoryBody == 'undefined')) {
			$('#otherStatutoryBody').css('border-color', 'red');
			showAlert('Error',"Please enter otherStatutoryBody");
			$('#otherStatutoryBody').focus();
        	$( "#otherStatutoryBody" ).keyup(function() {
				$('#otherStatutoryBody').css('border-color', '');
			});
        	return false;
		} else if(employeedInPSU == "" || employeedInPSU == 'undefined') {
			$('#employeedInPSU').css('border-color', 'red');
			showAlert('Error', "Please select whether employeedInPSU");
			$('#employeedInPSU').focus();
        	$( "#employeedInPSU" ).change(function() {
				$('#employeedInPSU').css('border-color', '');
			});
        	return false;
		} else if(visibleMarksIdentification.trim() == "" || visibleMarksIdentification == 'undefined') {
			$('#visibleMarksIdentification').css('border-color', 'red');
			showAlert('Error',"Please enter visibleMarksIdentification");
			$('#visibleMarksIdentification').focus();
        	$( "#visibleMarksIdentification" ).keyup(function() {
				$('#visibleMarksIdentification').css('border-color', '');
			});
        	return false;
		} else if(criminalCaseDetails.trim() == "" || criminalCaseDetails == 'undefined') {
			$('#criminalCaseDetails').css('border-color', 'red');
			showAlert('Error',"Please enter criminalCaseDetails");
			$('#criminalCaseDetails').focus();
        	$( "#criminalCaseDetails" ).keyup(function() {
				$('#criminalCaseDetails').css('border-color', '');
			});
        	return false;
		}

		inputParams['whetherCollegeAICTEApproved']=whetherCollegeAICTEApproved;
		inputParams['collegeInstituteName']=collegeInstituteName;
		inputParams['otherStatutoryBody']=otherStatutoryBody;
		inputParams['employeedInPSU']=employeedInPSU;
		inputParams['visibleMarksIdentification']=visibleMarksIdentification;
		inputParams['extraCurricularActivity']=extraCurricularActivity;
		inputParams['criminalCaseDetails']=criminalCaseDetails;
		
		var candidateProvisionalApplicationNumber = $( "#candidateProvisionalApplicationNumber" ).val();
		if(candidateProvisionalApplicationNumber == "" || candidateProvisionalApplicationNumber == 'undefined' ) {
			inputParams['provisionalApplicationNumber']=candidateProvisionalApplicationNumber;
			//Save operation
			$('#loading').css("display", "block");
			$.ajax({
				type : "POST",
				url : "save-education-details",
				data : JSON.stringify(inputParams),
				async: false,
				datatype : 'json',
				contentType: "application/json; charset=utf-8",
				success : function(result) {
					$('#loading').css("display", "none");
					if(result['status']=='error') {
						showAlert(result['status'], result['message']);
					} else {
						window.location.href = 'sign-photo';
					}
				}
			});
		} else {
			inputParams['provisionalApplicationNumber']=candidateProvisionalApplicationNumber;
			//showAlert("Info", JSON.stringify(inputParams)); e.preventPropagation();
			//alert(JSON.stringify(inputParams));
			//Update operation
			$('#loading').css("display", "block");
			$.ajax({
				type : "POST",
				url : "update-education-details",
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
		}
	});	
	//load-edit-qualification-details
	/*********************************************************************************************/
	
	/*$(".experience_serviceFrom").blur(function(){
		
	})*/
	
	/*	---------------close Error or success message in modal---------------------*/	
	$('.close-modal').click(function() {
		$('#alert').css("display", "none");
	});	
	/*********************************************************************************************/	
});

/***************************Function needs to call from html elements******************************************************************/
function serviceDateDiff(current) {
	
	var idPrefix = current.id.split("_")[0]+"_"+current.id.split("_")[1]; // experience_${count}_serviceFrom
	var serviceFromId = idPrefix+"_serviceFrom";
	var fromDate = $("#"+serviceFromId).val();
	
	var dateRegex = /^\d{2}-\d{2}-\d{4}$/;
	if(fromDate != "" && !dateRegex.test(fromDate)) {
		$("#"+serviceFromId).val('');
		$("#"+serviceFromId).focus();
		showAlert('Info', 'Please enter valid service from date');
		e.preventPropagation();
	}
	
	var serviceFromYear = fromDate.split('-')[2];
	var dobYear = $('#dobYear').val();
	if(serviceFromYear < dobYear) {
		$('#'+serviceFromId).css('border-color', 'red');
		showAlert('Error',"Please enter valid experience start date, Can not be less than year of date of birth");
		$('#'+serviceFromId).val('');
		$('#'+serviceFromId).focus();
		$('#'+serviceFromId).keyup(function() {
			$('#'+serviceFromId).css('border-color', '');
		});
		e.preventPropagation();
	}
	
	var serviceToId = idPrefix+"_serviceTo";
	var toDate = $("#"+serviceToId).val();
	
	if(toDate != "") {
		if(!dateRegex.test(toDate)) {
			$("#"+serviceToId).val('');
			$("#"+serviceToId).focus();
			showAlert('Info', 'Please enter valid service to date');
			e.preventPropagation();
		}
	}
	
	var serviceToYear = toDate.split('-')[2];
	if(serviceFromYear > serviceToYear) {
		$('#'+serviceToId).css('border-color', 'red');
		showAlert('Error',"Please enter valid experience end date, Can not be less than year of experience start date");
		$('#'+serviceToId).val('');
		$('#'+serviceToId).focus();
		$('#'+serviceToId).keyup(function() {
			$('#'+serviceToId).css('border-color', '');
		});
		e.preventPropagation();
	}
	
	$('#loading').css("display", "block");
	$.ajax({
		type : "POST",
		url : "service-date-diff",
		data : 'fromDate='+fromDate+'&toDate='+toDate,
		async: false,
		datatype : 'json',
		success : function(result) {
			$('#loading').css("display", "none");
			if(result.status=='success') {
				$("#"+idPrefix+"_Year").val(result.years);
				$("#"+idPrefix+"_month").val(result.months);
				$("#"+idPrefix+"_day").val(result.days);
				calculateTotalExperience();
			} else {
				showAlert(result.status, result.message);
			}			
		}
	});	
	/*------------------------------------------------------------------------------*/	
}

/***********************************************************************************************************/
function removeExperience(experience) {
	alert("Are you sure to remove this experience ?");
	var candidateProvisionalApplicationNumber = $("#candidateProvisionalApplicationNumber").val();
	// In case of fresh application
	if($(experience).hasClass("fresh")) {
		$('#experienceDetailList').find('.exp_'+experience.id.split("_")[2]).remove();
		calculateTotalExperience();
	} else {
		// In case of edit application
		var id = $("#experience_"+experience.id.split("_")[2]+"_id").val();
		$('#loading').css("display", "block");
		$.ajax({
			type : "POST",
			url : "remove-experience",
			data : 'id='+id+'&provisionalApplicationNumber='+candidateProvisionalApplicationNumber,
			async: false,
			datatype : 'json',
			success : function(result) {
				$('#loading').css("display", "none");
				if(result['status']=='error') {
					showAlert(result['status'], result['message']);
				} else {
					$('#experienceDetailList').find('.exp_'+experience.id.split("_")[2]).remove();
					calculateTotalExperience();
				}
			}
		});
	}
}

function removeLanguage(language) {
	alert("Are you sure to remove this language ?");
	var candidateProvisionalApplicationNumber = $("#candidateProvisionalApplicationNumber").val();
	// In case of fresh application
	if($(language).hasClass("fresh")) {
		$('#languageDetailList').find('.lan_'+language.id.split("_")[2]).remove();
	} else {
		// In case of edit application
		var id = $("#language_"+language.id.split("_")[2]+"_id").val();
		$('#loading').css("display", "block");
		$.ajax({
			type : "POST",
			url : "remove-language",
			data : 'id='+id+'&provisionalApplicationNumber='+candidateProvisionalApplicationNumber,
			async: false,
			datatype : 'json',
			success : function(result) {
				$('#loading').css("display", "none");
				if(result['status']=='error') {
					showAlert(result['status'], result['message']);
				} else {
					$('#languageDetailList').find('.lan_'+language.id.split("_")[2]).remove();
				}
			}
		});
	}
}

function calculateTotalExperience() {
	var yearSum = 0;
	var monthSum = 0;
	var daySum = 0;
	
	$(".experience_Year").each(function() {
		if(this.value!='' && this.value!='undefined') {
			yearSum+=parseInt(this.value);
		}
	});
	
	$(".experience_month").each(function() {
		if(this.value!='' && this.value!='undefined') {
			monthSum+=parseInt(this.value);
		}
	});
	
	$(".experience_day").each(function() {
		if(this.value!='' && this.value!='undefined') {
			daySum+=parseInt(this.value);
		}
	});
	
	var day = daySum%30;
	var extraMonth = Math.trunc(daySum/30);
	
	var month = (monthSum+extraMonth)%12;
	var extraYear = Math.trunc((monthSum+extraMonth)/12);
	
	var year = yearSum+extraYear;
	
	$("#totalExperience").val(year+" years, "+ month + " months and "+ day + " days");
}

/* ---------------Show Error or success message in modal--------------------- */
function showAlert(status, message) {
	$('.modal-title').text(status);
	$('.modal-body').text(message);
	$('#alert').css("display", "block");
}