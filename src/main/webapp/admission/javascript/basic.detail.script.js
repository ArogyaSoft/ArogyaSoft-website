$(document).ready(function() {
	/*********************************************************************************************/
	var dateRegex = /^\d{2}-\d{2}-\d{4}$/;
	
	/*$('#anyValidGovtIdentityNumber').blur(function() {
		var regex = /^[a-zA-Z0-9]{1-20}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#anyValidGovtIdentityNumber').css('border-color', 'red');
			showAlert('Error', "Please enter valid govt identity number");
			$('#anyValidGovtIdentityNumber').val('');
        	$('#anyValidGovtIdentityNumber').focus();
        	$( "#anyValidGovtIdentityNumber" ).keyup(function() {
				$('#anyValidGovtIdentityNumber').css('border-color', '');
			});
		}
	});*/
	
	$('#religion').change(function() {
		if($('#religion').hasClass("border-highlight")) {
			$("#religion").removeClass("border-highlight");
		}
	});	
	$('#nationality').change(function() {
		if($('#nationality').hasClass("border-highlight")) {
			$("#nationality").removeClass("border-highlight");
		}
	});
	
	$('input:radio[name="maritalStatus"]').change(function() {
		if($('#maritalStatus').hasClass("bg-danger")) {
			$('#maritalStatus').removeClass("bg-danger");
			$('.maritalStatusLabel').removeClass("text-white");
		}
		if($(this).val() == 'married') {
			$("#spouse-name-section").show();
		} else {
			$("#spouse-name-section").hide();
		}
	});
		
	$('#fatherName').blur(function() {
		var regex = /^([A-Za-z]+ )+[A-Za-z]+$|^[A-Za-z]+$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#fatherName').css('border-color', 'red');
			showAlert('Error', "Please enter valid father's Name");
			$('#fatherName').val('');
        	$('#fatherName').focus();
        	$( "#fatherName" ).keyup(function() {
				$('#fatherName').css('border-color', '');
			});
		}
	});
	$('#motherName').blur(function() {
		var regex = /^([A-Za-z]+ )+[A-Za-z]+$|^[A-Za-z]+$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#motherName').css('border-color', 'red');
			showAlert('Error', "Please enter valid mother's Name");
			$('#motherName').val('');
        	$('#motherName').focus();
        	$( "#motherName" ).keyup(function() {
				$('#motherName').css('border-color', '');
			});
		}
	});
	$('input:radio[name="maritalStatus"]').change(function() {
		if($('#maritalStatus').hasClass("bg-danger")) {
			$('#maritalStatus').removeClass("bg-danger");
			$('.maritalStatusLabel').removeClass("text-white");
		}
	});
	$('#spouseName').blur(function() {
		var regex = /^([A-Za-z]+ )+[A-Za-z]+$|^[A-Za-z]+$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#spouseName').css('border-color', 'red');
			showAlert('Error', "Please enter valid spouse's Name");
			$('#spouseName').val('');
        	$('#spouseName').focus();
        	$( "#spouseName" ).keyup(function() {
				$('#spouseName').css('border-color', '');
			});
		}
	});
	$('#domicile').change(function() {
		if($('#domicile').hasClass("border-highlight")) {
			$("#domicile").removeClass("border-highlight");
		}
	});
	
	$('#caState').change(function() {
		if($('#caState').hasClass("border-highlight")) {
			$("#caState").removeClass("border-highlight");
		}
	});
	$('#caDistrict').change(function() {
		if($('#caDistrict').hasClass("border-highlight")) {
			$("#caDistrict").removeClass("border-highlight");
		}
	});	
	$('#paState').change(function() {
		if($('#paState').hasClass("border-highlight")) {
			$("#paState").removeClass("border-highlight");
		}
	});	
	$('#paDistrict').change(function() {
		if($('#paDistrict').hasClass("border-highlight")) {
			$("#paDistrict").removeClass("border-highlight");
		}
	});	
	$('#caPincode').blur(function() {
		var regex = /^[1-9][0-9]{5}$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#caPincode').css('border-color', 'red');
			showAlert('Error', "Please enter valid Postal Code");
			$('#caPincode').val('');
        	$('#caPincode').focus();
        	$( "#caPincode" ).keyup(function() {
				$('#caPincode').css('border-color', '');
			});
		}
	});
	$('#caNearestRailwayStation').blur(function() {
		var regex = /^([A-Za-z]+ )+[A-Za-z]+$|^[A-Za-z]+$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)){
			$('#caNearestRailwayStation').css('border-color', 'red');
			showAlert('Error', "Please enter valid Railway Station Name");
			$('#caNearestRailwayStation').val('');
        	$('#caNearestRailwayStation').focus();
        	$( "#caNearestRailwayStation" ).keyup(function() {
				$('#caNearestRailwayStation').css('border-color', '');
			});
		}
	});
	$('#paPincode').blur(function() {
		var regex = /^[1-9][0-9]{5}$/;;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#paPincode').css('border-color', 'red');
			showAlert('Error', "Please enter valid Postal Code");
			$('#paPincode').val('');
        	$('#paPincode').focus();
        	$( "#paPincode" ).keyup(function() {
				$('#paPincode').css('border-color', '');
			});
		}
	});
	$('#paNearestRailwayStation').blur(function() {
		var regex = /^([A-Za-z]+ )+[A-Za-z]+$|^[A-Za-z]+$/;
		if(this.value != "" && this.value != 'undefined' && !regex.test(this.value)) {
			$('#paNearestRailwayStation').css('border-color', 'red');
			showAlert('Error', "Please enter valid Railway Station Name");
			$('#paNearestRailwayStation').val('');
        	$('#paNearestRailwayStation').focus();
        	$( "#paNearestRailwayStation" ).keyup(function() {
				$('#paNearestRailwayStation').css('border-color', '');
			});
		}
	});	
	$( "#caState" ).change(function() {
	  	$('#loading').css("display", "block");
		$.ajax({
			type : "POST",
			url : 'loadDistrictForState',
			data : 'stateCode=' + this.value,
			async: false,
			datatype : 'json',
			success : function(result) {
				$('#loading').css("display", "none");
				// $('#caDistrict').find('option').not(':first').remove();
				$('#caDistrict').find('option').remove();
				$.each(result['districts'], function (key, value) {
					$('#caDistrict').append(`<option value="${key}">${value}</option>`);
				});
			}
		});
	});
	$( "#paState" ).change(function() {
		$('#loading').css("display", "block");
		$.ajax({
			type : "POST",
			url : 'loadDistrictForState',
			data : 'stateCode=' + this.value,
			async: false,
			datatype : 'json',
			success : function(result) {
				$('#loading').css("display", "none");
				// $('#paDistrict').find('option').not(':first').remove();
				$('#paDistrict').find('option').remove();
				$.each(result['districts'], function (key, value) {
					$('#paDistrict').append(`<option value="${key}">${value}</option>`);
				});
			}
		});
	});	
	
	$( "#examCity1" ).change(function() {
		var examCity1 = $( "#examCity1" ).val();
		var examCity2 = $( "#examCity2" ).val();
		var examCity3 = $( "#examCity3" ).val();
		if(examCity1==examCity2 || examCity1==examCity3) {
			showAlert('Error', examCity1+" is already choosen in other city preferences. Please choose a different one.");
			$( "#examCity1" ).val('');
		}
	});	
	$( "#examCity2" ).change(function() {
		var examCity1 = $( "#examCity1" ).val();
		var examCity2 = $( "#examCity2" ).val();
		var examCity3 = $( "#examCity3" ).val();
		if(examCity2==examCity1 || examCity2==examCity3) {
			showAlert('Error', examCity2+" is already choosen in other city preferences. Please choose a different one.");
			$( "#examCity2" ).val('');
		}
	});
	$( "#examCity3" ).change(function() {
		var examCity1 = $( "#examCity1" ).val();
		var examCity2 = $( "#examCity2" ).val();
		var examCity3 = $( "#examCity3" ).val();
		if(examCity3==examCity1 || examCity3==examCity2) {
			showAlert('Error', examCity3+" is already choosen in other city preferences. Please choose a different one.");
			$( "#examCity3" ).val('');
		}
	});
	
	$('#save-basic-details').click(function() {
		var provisionalApplicationNumber = $('#provisionalApplicationNumber').val();
		
		var postId = $('#postId').val();
		
		var religion = $( "#religion option:selected" ).text();
		var nationality = $( "#nationality option:selected" ).text();
		var nationalityCode = $( "#nationality option:selected" ).val();
		
		var fatherName = $('#fatherName').val();
		var motherName = $('#motherName').val();
		var maritalStatus = $('input:radio[name="maritalStatus"]:checked').val();
		var spouseName = $('#spouseName').val();
		var domicile = $( "#domicile option:selected" ).text();
		var domicileCode = $("#domicile option:selected" ).val();
		
		var caAddress1 = $('#caAddress1').val();
		var caAddress2 = $('#caAddress2').val();
		var caAddress3 = $('#caAddress3').val();
		var caState = $( "#caState option:selected" ).text();
		var caStateCode = $("#caState option:selected" ).val();
		var caDistrict = $("#caDistrict option:selected" ).text();
		var caDistrictCode = $("#caDistrict option:selected" ).val();
		var caPostOffice = $('#caPostOffice').val();
		var caPoliceStation = $('#caPoliceStation').val();
		var caPincode = $('#caPincode').val();
		var caNearestRailwayStation = $('#caNearestRailwayStation').val();
		
		var paAddress1 = $('#paAddress1').val();
		var paAddress2 = $('#paAddress2').val();
		var paAddress3 = $('#paAddress3').val();
		var paState = $( "#paState option:selected" ).text(); 
		var paStateCode = $("#paState option:selected" ).val();
		var paDistrict = $("#paDistrict option:selected" ).text();
		var paDistrictCode = $("#paDistrict option:selected" ).val();
		var paPostOffice = $('#paPostOffice').val();
		var paPoliceStation = $('#paPoliceStation').val();
		var paPincode = $('#paPincode').val();
		var paNearestRailwayStation = $('#paNearestRailwayStation').val();

		var examCityCode1 = $("#examCity1 option:selected" ).val();
		var examCity1 = $( "#examCity1 option:selected" ).text();
		var examCityCode2 = $("#examCity2 option:selected" ).val();
		var examCity2 = $( "#examCity2 option:selected" ).text();
		var examCityCode3 = $("#examCity3 option:selected" ).val();
		var examCity3 = $( "#examCity3 option:selected" ).text();
		
		var anyValidGovtIdentityNumber = $('#anyValidGovtIdentityNumber').val();
		
		if(religion.trim() == "" || religion == 'undefined') {
			$('#religion').css('border-color', 'red');
			showAlert('Error', "Please select from religion");
			$('#religion').focus();
			$( "#religion" ).change(function() {
				$('#religion').css('border-color', '');
			});
	        return false;
		} else if(nationalityCode.trim() == "" || nationalityCode == 'undefined') {
			$('#nationality').css('border-color', 'red');
			showAlert('Error', "Please select from nationality");
			$('#nationality').focus();
			$( "#nationality" ).change(function() {
				$('#nationality').css('border-color', '');
			});
	        return false;
		} else if(anyValidGovtIdentityNumber.trim() == "" || anyValidGovtIdentityNumber == 'undefined') {
			$('#anyValidGovtIdentityNumber').css('border-color', 'red');
			showAlert('Error',"Please enter any valid govt identity number");
			$('#anyValidGovtIdentityNumber').focus();
        	$( "#anyValidGovtIdentityNumber" ).keyup(function() {
				$('#anyValidGovtIdentityNumber').css('border-color', '');
			});
        	return false;
		} else if(fatherName.trim() == "" || fatherName == 'undefined') {
			$('#fatherName').css('border-color', 'red');
			showAlert('Error',"Please enter father name");
			$('#fatherName').focus();
        	$( "#fatherName" ).keyup(function() {
				$('#fatherName').css('border-color', '');
			});
        	return false;
		} else if(motherName.trim() == "" || motherName == 'undefined') {
			$('#motherName').css('border-color', 'red');
			showAlert('Error',"Please enter mother name");
			$('#motherName').focus();
        	$( "#motherName" ).keyup(function() {
				$('#motherName').css('border-color', '');
			});
        	return false;
		} else if(maritalStatus == "" || maritalStatus == null ) {
			showAlert('Error', "Please choose from marital status section");
			$('input:radio[name="maritalStatus"]').focus();
			$('#maritalStatus').addClass("bg-danger");
			$('.maritalStatusLabel').addClass("text-white");
			return false;
		} else if(maritalStatus == 'married' && (spouseName.trim() == "" || spouseName == 'undefined')) {
			$('#spouseName').css('border-color', 'red');
			showAlert('Error',"Please enter spouse name");
			$('#spouseName').focus();
        	$( "#spouseName" ).keyup(function() {
				$('#spouseName').css('border-color', '');
			});
        	return false;
		} else if(domicileCode.trim() == "" || domicileCode == 'undefined') {
			$('#domicile').css('border-color', 'red');
			showAlert('Error', "Please select from domicile section");
			$('#domicile').focus();
			$( "#domicile" ).change(function() {
				$('#domicile').css('border-color', '');
			});
	        return false;
		} else if(caAddress1 == "" || caAddress1 == null ) {
			showAlert('Error', "Please enter correspondence address");
			$("#caAddress1").focus();
			$("#caAddress1").addClass("border-highlight");
			return false;
		} else if(caStateCode == "" || caStateCode == null ) {
			showAlert('Error', "Please select correspondence state");
			$("#caState").focus();
			$("#caState").addClass("border-highlight");
			return false;
		} else if(caDistrictCode == "" || caDistrictCode == null ) {
			showAlert('Error', "Please select correspondence district");
			$("#caDistrict").focus();
			$("#caDistrict").addClass("border-highlight");
			return false;
		} else if(caPostOffice == "" || caPostOffice == null ) {
			showAlert('Error', "Please enter correspondence post office");
			$("#caPostOffice").focus();
			$("#caPostOffice").addClass("border-highlight");
			return false;
		} else if(caPoliceStation == "" || caPoliceStation == null ) {
			showAlert('Error', "Please enter correspondence police station");
			$("#caPincode").focus();
			$("#caPincode").addClass("border-highlight");
			return false;
		} else if(caPincode == "" || caPincode == null ) {
			showAlert('Error', "Please enter correspondence postal code");
			$("#caPincode").focus();
			$("#caPincode").addClass("border-highlight");
			return false;
		} else if(caNearestRailwayStation == "" || caNearestRailwayStation == null ) {
			showAlert('Error', "Please enter current address nearest railway station");
			$("#caNearestRailwayStation").focus();
			$("#caNearestRailwayStation").addClass("border-highlight");
			return false;
		} else if(paAddress1 == "" || paAddress1 == null ) {
			showAlert('Error', "Please enter permanent address");
			$("#paAddress1").focus();
			$("#paAddress1").addClass("border-highlight");
			return false;
		} else if(paStateCode == "" || paStateCode == null ) {
			showAlert('Error', "Please select permanent state");
			$("#paState").focus();
			$("#paState").addClass("border-highlight");
			return false;
		} else if(paDistrictCode == "" || paDistrictCode == null ) {
			showAlert('Error', "Please select permanent district");
			$("#paDistrict").focus();
			$("#paDistrict").addClass("border-highlight");
			return false;
		} else if(paPostOffice == "" || paPostOffice == null ) {
			showAlert('Error', "Please enter permanent post office");
			$("#paPostOffice").focus();
			$("#paPostOffice").addClass("border-highlight");
			return false;
		} else if(paPoliceStation == "" || paPoliceStation == null ) {
			showAlert('Error', "Please enter permanent police station");
			$("#paPincode").focus();
			$("#paPincode").addClass("border-highlight");
			return false;
		} else if(paPincode == "" || paPincode == null ) {
			showAlert('Error', "Please enter permanent postal code");
			$("#paPincode").focus();
			$("#paPincode").addClass("border-highlight");
			return false;
		} else if(paNearestRailwayStation == "" || paNearestRailwayStation == null ) {
			showAlert('Error', "Please enter permanent address nearest railway station");
			$("#paNearestRailwayStation").focus();
			$("#paNearestRailwayStation").addClass("border-highlight");
			return false;
		} else if(examCityCode1 == "" || examCityCode1 == null ) {
			showAlert('Error', "Please select exam city 1");
			$("#examCityCode1").focus();
			$("#examCityCode1").addClass("border-highlight");
			return false;
		} else if(examCityCode2 == "" || examCityCode2 == null ) {
			showAlert('Error', "Please select exam city 2");
			$("#examCityCode2").focus();
			$("#examCityCode2").addClass("border-highlight");
			return false;
		} else if(examCityCode3 == "" || examCityCode3 == null ) {
			showAlert('Error', "Please select exam city 3");
			$("#examCityCode3").focus();
			$("#examCityCode3").addClass("border-highlight");
			return false;
		} else {
			var candidateProvisionalApplicationNumber = $( "#candidateProvisionalApplicationNumber" ).val();
			if(candidateProvisionalApplicationNumber != "" && candidateProvisionalApplicationNumber != 'undefined') {
				//	---------------update basic details through Ajax Post request---------------------
				$('#loading').css("display", "block");
				$.ajax({
					type : "POST",
					url : "update-basic-details",
					data : 'provisionalApplicationNumber=' + candidateProvisionalApplicationNumber +'\
							&religion=' + religion + '\
							&nationality=' + nationality + '\
							&nationalityCode=' + nationalityCode + '\
							&fatherName=' + fatherName + '\
							&motherName=' + motherName + '\
							&maritalStatus=' + maritalStatus + '\
							&spouseName=' + spouseName + '\
							&domicile=' + domicile + '\
							&domicileCode=' + domicileCode + '\
							&caAddress1=' + caAddress1 + '\
							&caAddress2=' + caAddress2 + '\
							&caAddress3=' + caAddress3 + '\
							&caState=' + caState + '\
							&caStateCode=' + caStateCode + '\
							&caDistrict=' + caDistrict + '\
							&caDistrictCode=' + caDistrictCode + '\
							&caPostOffice=' + caPostOffice + '\
							&caPoliceStation=' + caPoliceStation + '\
							&caPincode=' + caPincode + '\
							&caNearestRailwayStation=' + caNearestRailwayStation + '\
							&paAddress1=' + paAddress1 + '\
							&paAddress2=' + paAddress2 + '\
							&paAddress3=' + paAddress3 + '\
							&paState=' + paState + '\
							&paStateCode=' + paStateCode + '\
							&paDistrict=' + paDistrict + '\
							&paDistrictCode=' + paDistrictCode + '\
							&paPostOffice=' + paPostOffice + '\
							&paPoliceStation=' + paPoliceStation + '\
							&paPincode=' + paPincode + '\
							&paNearestRailwayStation=' + paNearestRailwayStation + '\
							&examCityCode1=' + examCityCode1 + '\
							&examCity1=' + examCity1 +'\
							&examCityCode2=' + examCityCode2 + '\
							&examCity2=' + examCity2 +'\
							&examCityCode3=' + examCityCode3 + '\
							&examCity3=' + examCity3 + '\
							&anyValidGovtIdentityNumber=' + anyValidGovtIdentityNumber,
					async: false,
					datatype : 'json',
					success : function(result) {anyValidGovtIdentityNumber
						$('#loading').css("display", "none");
						if(result['status']=='error') {
							showAlert(result['status'], result['message']);
						} else {
							window.location.href = 'preview';
						}
					}
				});
			} else {
				// ---------------save basic details through Ajax Post request---------------------
				$('#loading').css("display", "block");
				$.ajax({
					type : "POST",
					url : "save-basic-details",
					data : 'religion=' + religion + '\
							&nationality=' + nationality + '\
							&nationalityCode=' + nationalityCode + '\
							&fatherName=' + fatherName + '\
							&motherName=' + motherName + '\
							&maritalStatus=' + maritalStatus + '\
							&spouseName=' + spouseName + '\
							&domicile=' + domicile + '\
							&domicileCode=' + domicileCode + '\
							&caAddress1=' + caAddress1 + '\
							&caAddress2=' + caAddress2 + '\
							&caAddress3=' + caAddress3 + '\
							&caState=' + caState + '\
							&caStateCode=' + caStateCode + '\
							&caDistrict=' + caDistrict + '\
							&caDistrictCode=' + caDistrictCode + '\
							&caPostOffice=' + caPostOffice + '\
							&caPoliceStation=' + caPoliceStation + '\
							&caPincode=' + caPincode + '\
							&caNearestRailwayStation=' + caNearestRailwayStation + '\
							&paAddress1=' + paAddress1 + '\
							&paAddress2=' + paAddress2 + '\
							&paAddress3=' + paAddress3 + '\
							&paState=' + paState + '\
							&paStateCode=' + paStateCode + '\
							&paDistrict=' + paDistrict + '\
							&paDistrictCode=' + paDistrictCode + '\
							&paPostOffice=' + paPostOffice + '\
							&paPoliceStation=' + paPoliceStation + '\
							&paPincode=' + paPincode + '\
							&paNearestRailwayStation=' + paNearestRailwayStation + '\
							&examCityCode1=' + examCityCode1 + '\
							&examCity1=' + examCity1 +'\
							&examCityCode2=' + examCityCode2 + '\
							&examCity2=' + examCity2 +'\
							&examCityCode3=' + examCityCode3 + '\
							&examCity3=' + examCity3 + '\
							&anyValidGovtIdentityNumber=' + anyValidGovtIdentityNumber,
					async: false,
					datatype : 'json',
					success : function(result) {
						$('#loading').css("display", "none");
						if(result['status']=='error') {
							showAlert(result['status'], result['message']);
						} else {
							window.location.href = 'qualification-details';
						}
					}
				});
			}
		}
	});
	
	/*	---------------close Error or success message in modal---------------------*/	
	$('.close-modal').click(function() {
		$('#alert').css("display", "none");
	});	
	/*********************************************************************************************/

});	

function sameAddressUse() {
	var caAddress1 = document.getElementById('caAddress1').value;
	var caAddress2 = document.getElementById('caAddress2').value;
	var caAddress3 = document.getElementById('caAddress3').value;
	var caState = document.getElementById('caState').value;
	var caDistrict = document.getElementById('caDistrict').value;
	var caPostOffice = document.getElementById('caPostOffice').value;
	var caPoliceStation = document.getElementById('caPoliceStation').value;
	var caPincode = document.getElementById('caPincode').value;
	var caNearestRailwayStation = document.getElementById("caNearestRailwayStation").value;
	
	if (document.getElementById("sameAddress").checked == true) {
		document.getElementById("paAddress1").value = caAddress1;
		document.getElementById("paAddress2").value = caAddress2;
		document.getElementById("paAddress3").value = caAddress3;
		document.getElementById("paState").value = caState;
		document.getElementById("paDistrict").value = caDistrict;
		document.getElementById("paPostOffice").value = caPostOffice;
		document.getElementById("paPoliceStation").value = caPoliceStation;
		document.getElementById("paPincode").value = caPincode;
		document.getElementById("paNearestRailwayStation").value = caNearestRailwayStation;
		
		if (caState != null && caState != "") {
			getDistrictList(caState);
			document.getElementById("paDistrict").value = caDistrict;
		}
	}
	if (document.getElementById("sameAddress").checked == false) {
		document.getElementById("paAddress1").value = "";
		document.getElementById("paAddress2").value = "";
		document.getElementById("paAddress3").value = "";
		document.getElementById("paState").value = "";
		document.getElementById("paDistrict").value = "";
		document.getElementById("paPostOffice").value = "";
		document.getElementById("paPoliceStation").value = "";
		document.getElementById("paPincode").value = "";
		document.getElementById("paNearestRailwayStation").value = "";
	}
}

function getDistrictList(stateCode) {
	$('#loading').css("display", "block");
	$.ajax({
		type : "POST",
		url : 'loadDistrictForState',
		data : 'stateCode=' + stateCode,
		async: false,
		datatype : 'json',
		success : function(result) {
			$('#loading').css("display", "none");
			// $('#paDistrict').find('option').not(':first').remove();
			$('#paDistrict').find('option').remove();
			$.each(result['districts'], function (key, value) {
				$('#paDistrict').append(`<option value="${key}">${value}</option>`);
			});
		}
	});
}
	
/*	---------------Show Error or success message in modal---------------------*/
function showAlert(status, message) {
	$('.modal-title').text(status);
	$('.modal-body').text(message);
	$('#alert').css("display", "block");
}