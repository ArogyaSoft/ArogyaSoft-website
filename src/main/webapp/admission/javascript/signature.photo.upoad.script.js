$(document).ready(function() {
	/*********************************************************************************************/
	var fileUploadURL = 'https://www.dvcrecruitment.in/OnlineApplicationFormRestServicesDVC/file/upload';
	$('#upload-photo').click(function() {
 	   	$("#photo-preview").attr("src", 'images/upload-photo.png');
		if($('#photo')[0].files[0].type != 'image/jpeg') {
			showAlert('error','Please choose a JPG image');
			$('#photo').val('');
			return false;
		} else if(Math.round($('#photo')[0].files[0].size/1024) > 100 || Math.round($('#photo')[0].files[0].size/1024) < 10) {
			showAlert('error','Image size must be in between [10 - 100] kb');
			$('#photo').val('');
			return false;
		}

		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#photo')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'profilePicture');
		
		$('#loading').css("display", "block");
		$.ajax({
			   url : fileUploadURL, // 'upload-photo',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $("#photo-preview").attr("src", data['fileURL']);
		    	   $('#candidatePhotoUrl').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});	
	});
	
	$('#upload-signature').click(function() {
 	   	$("#signature-preview").attr("src", 'images/upload-singnature.png');
		if($('#signature')[0].files[0].type != 'image/jpeg') {
			showAlert('error', 'Please choose a JPG image');
			$('#signature').val('');
			return false;
		} else if(Math.round($('#signature')[0].files[0].size/1024) > 50 || Math.round($('#signature')[0].files[0].size/1024) < 2) {
			showAlert('error', 'Image size must be in between [2 - 50] kb');
			$('#signature').val('');
			return false;
		}
		
		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#signature')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'signature');

		$('#loading').css("display", "block");
		$.ajax({
			   url : fileUploadURL, // 'upload-signature',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $("#signature-preview").attr("src", data['fileURL']);
		    	   $('#candidateSignUrl').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});
	});	
	
	$('#highSchoolCertificateUpload').click(function() {
 	   	if($('#highSchoolCertificateFile')[0].files[0].type != 'application/pdf') {
			showAlert('error','Please choose a pdf file');
			$('#highSchoolCertificateFile').val('');
			return false;
		} else if(Math.round($('#highSchoolCertificateFile')[0].files[0].size/1024) > 1000 || Math.round($('#highSchoolCertificateFile')[0].files[0].size/1024) < 100) {
			showAlert('error','File size must be in between [100 - 1000] kb');
			$('#highSchoolCertificateFile').val('');
			return false;
		}

		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#highSchoolCertificateFile')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'highSchoolCertificate');
		
		$('#loading').css("display", "block");
		$.ajax({
		       url : fileUploadURL, // 'upload-photo',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $('#highSchoolCertificateUploadButton').hide();
		    	   $('#highSchoolCertificateViewButton').show();
		    	   $('#highSchoolCertificateURLView').attr("href", data['fileURL']);
		    	   $('#highSchoolCertificateURL').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});	
	});
	
	$('#intermediateCertificateUpload').click(function() {
 	   	if($('#intermediateCertificateFile')[0].files[0].type != 'application/pdf') {
			showAlert('error','Please choose a pdf file');
			$('#intermediateCertificateFile').val('');
			return false;
		} else if(Math.round($('#intermediateCertificateFile')[0].files[0].size/1024) > 1000 || Math.round($('#intermediateCertificateFile')[0].files[0].size/1024) < 100) {
			showAlert('error','File size must be in between [100 - 1000] kb');
			$('#intermediateCertificateFile').val('');
			return false;
		}

		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#intermediateCertificateFile')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'intermediateCertificate');
		
		$('#loading').css("display", "block");
		$.ajax({
		       url : fileUploadURL, // 'upload-photo',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $('#intermediateCertificateUploadButton').hide();
		    	   $('#intermediateCertificateViewButton').show();
		    	   $('#intermediateCertificateURLView').attr("href", data['fileURL']);
		    	   $('#intermediateCertificateURL').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});	
	});
	
	$('#engineeringDiplomaCertificateUpload').click(function() {
 	   	if($('#engineeringDiplomaCertificateFile')[0].files[0].type != 'application/pdf') {
			showAlert('error','Please choose a pdf file');
			$('#engineeringDiplomaCertificateFile').val('');
			return false;
		} else if(Math.round($('#engineeringDiplomaCertificateFile')[0].files[0].size/1024) > 1000 || Math.round($('#engineeringDiplomaCertificateFile')[0].files[0].size/1024) < 100) {
			showAlert('error','File size must be in between [100 - 1000] kb');
			$('#engineeringDiplomaCertificateFile').val('');
			return false;
		}

		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#engineeringDiplomaCertificateFile')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'engineeringDiplomaCertificate');
		
		$('#loading').css("display", "block");
		$.ajax({
		       url : fileUploadURL, // 'upload-photo',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $('#engineeringDiplomaCertificateUploadButton').hide();
		    	   $('#engineeringDiplomaCertificateViewButton').show();
		    	   $('#engineeringDiplomaCertificateURLView').attr("href", data['fileURL']);
		    	   $('#engineeringDiplomaCertificateURL').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});	
	});
	
	$('#mineSurveyorCertificateUpload').click(function() {
 	   	if($('#mineSurveyorCertificateFile')[0].files[0].type != 'application/pdf') {
			showAlert('error','Please choose a pdf file');
			$('#mineSurveyorCertificateFile').val('');
			return false;
		} else if(Math.round($('#mineSurveyorCertificateFile')[0].files[0].size/1024) > 1000 || Math.round($('#mineSurveyorCertificateFile')[0].files[0].size/1024) < 100) {
			showAlert('error','File size must be in between [100 - 1000] kb');
			$('#mineSurveyorCertificateFile').val('');
			return false;
		}

		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#mineSurveyorCertificateFile')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'mineSurveyorCertificate');
		
		$('#loading').css("display", "block");
		$.ajax({
		       url : fileUploadURL, // 'upload-photo',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $('#mineSurveyorCertificateUploadButton').hide();
		    	   $('#mineSurveyorCertificateViewButton').show();
		    	   $('#mineSurveyorCertificateURLView').attr("href", data['fileURL']);
		    	   $('mineSurveyorCertificateURL').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});	
	});
	
	$('#casteCertificateUpload').click(function() {
 	   	if($('#casteCertificateFile')[0].files[0].type != 'application/pdf') {
			showAlert('error','Please choose a pdf file');
			$('#casteCertificateFile').val('');
			return false;
		} else if(Math.round($('#casteCertificateFile')[0].files[0].size/1024) > 1000 || Math.round($('#casteCertificateFile')[0].files[0].size/1024) < 100) {
			showAlert('error','File size must be in between [100 - 1000] kb');
			$('#casteCertificateFile').val('');
			return false;
		}

		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#casteCertificateFile')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'casteCertificate');
		
		$('#loading').css("display", "block");
		$.ajax({
		       url : fileUploadURL, // 'upload-photo',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $('#casteCertificateUploadButton').hide();
		    	   $('#casteCertificateViewButton').show();
		    	   $('#casteCertificateURLView').attr("href", data['fileURL']);
		    	   $('#casteCertificateURL').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});	
	});
	
	$('#pwbdEWSCertificateUpload').click(function() {
 	   	if($('#pwbdEWSCertificateFile')[0].files[0].type != 'application/pdf') {
			showAlert('error','Please choose a pdf file');
			$('#pwbdEWSCertificateFile').val('');
			return false;
		} else if(Math.round($('#pwbdEWSCertificateFile')[0].files[0].size/1024) > 1000 || Math.round($('#pwbdEWSCertificateFile')[0].files[0].size/1024) < 100) {
			showAlert('error','File size must be in between [100 - 1000] kb');
			$('#pwbdEWSCertificateFile').val('');
			return false;
		}

		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#pwbdEWSCertificateFile')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'pwbdEWSCertificate');
		
		$('#loading').css("display", "block");
		$.ajax({
		       url : fileUploadURL, // 'upload-photo',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $('#pwbdEWSCertificateUploadButton').hide();
		    	   $('#pwbdEWSCertificateViewButton').show();
		    	   $('#pwbdEWSCertificateURLView').attr("href", data['fileURL']);
		    	   $('#pwbdEWSCertificateURL').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});	
	});
	
	$('#anyValidGovtIdentityProofCertificateUpload').click(function() {
 	   	if($('#anyValidGovtIdentityProofCertificateFile')[0].files[0].type != 'application/pdf') {
			showAlert('error','Please choose a pdf file');
			$('#anyValidGovtIdentityProofCertificateFile').val('');
			return false;
		} else if(Math.round($('#anyValidGovtIdentityProofCertificateFile')[0].files[0].size/1024) > 1000 || Math.round($('#anyValidGovtIdentityProofCertificateFile')[0].files[0].size/1024) < 100) {
			showAlert('error','File size must be in between [100 - 1000] kb');
			$('#anyValidGovtIdentityProofCertificateFile').val('');
			return false;
		}

		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#anyValidGovtIdentityProofCertificateFile')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'anyValidGovtIdentityProofCertificate');
		
		$('#loading').css("display", "block");
		$.ajax({
		       url : fileUploadURL, // 'upload-photo',
		       type : 'POST',
		       data : formData,
		       processData: false,  // tell jQuery not to process the data
		       contentType: false,  // tell jQuery not to set contentType
		       success : function(data) {
		    	   $('#loading').css("display", "none");
		    	   $('#anyValidGovtIdentityProofCertificateUploadButton').hide();
		    	   $('#anyValidGovtIdentityProofCertificateViewButton').show();
		    	   $('#anyValidGovtIdentityProofCertificateURLView').attr("href", data['fileURL']);
		    	   $('#anyValidGovtIdentityProofCertificateURL').val(data['fileURL']);
		    	   showAlert(data['status'], data['message']);
		       }
		});	
	});
	
	$('#save-sign-photo-details').click(function() {
		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		
		var photoURL = $('#candidatePhotoUrl').val();
		var signURL = $('#candidateSignUrl').val();
		var highSchoolCertificateURL = $('#highSchoolCertificateURL').val();
		var intermediateCertificateURL = $('#intermediateCertificateURL').val();
		var engineeringDiplomaCertificateURL = $('#engineeringDiplomaCertificateURL').val();
		var mineSurveyorCertificateURL = $('#mineSurveyorCertificateURL').val();
		var casteCertificateURL = $('#casteCertificateURL').val();
		var pwbdEWSCertificateURL = $('#pwbdEWSCertificateURL').val();
		var anyValidGovtIdentityProofCertificateURL = $('#anyValidGovtIdentityProofCertificateURL').val();
		
		var postAppliedForId = $('#postAppliedForId').val();
		var category = $('#category').val();
		var pwbd = $('#pwbd').val();
		
		if(photoURL == "" || photoURL == 'undefined') {
			showAlert('error', 'Please upload photo first');
			return false;
		} else if(signURL == "" || signURL == 'undefined') {
			showAlert('error', 'Please upload signature first');
			return false;
		} else if(highSchoolCertificateURL == "" || highSchoolCertificateURL == 'undefined') {
			showAlert('error', 'Please upload high school certificate first');
			return false;
		} else if(postAppliedForId == '6' && (intermediateCertificateURL == "" || intermediateCertificateURL == 'undefined')) {
			showAlert('error', 'Please upload intermediate certificate first');
			return false;
		} else if(postAppliedForId != '7' && (engineeringDiplomaCertificateURL == "" || engineeringDiplomaCertificateURL == 'undefined')) {
			showAlert('error', 'Please upload engineering diploma/degree certificate first');
			return false;
		} else if(postAppliedForId == '7' && (mineSurveyorCertificateURL == "" || mineSurveyorCertificateURL == 'undefined')) {
			showAlert('error', 'Please upload mine surveyor certificate first');
			return false;
		} else if(category != 'general' && (casteCertificateURL == "" || casteCertificateURL == 'undefined')) {
			showAlert('error', 'Please upload caste certificate first');
			return false;
		} else if((pwbd == 'yes' || category=='ews') && (pwbdEWSCertificateURL == "" || pwbdEWSCertificateURL == 'undefined')) {
			showAlert('error', 'Please upload pwbd or ews certificate first');
			return false;
		} else if(anyValidGovtIdentityProofCertificateURL == "" || anyValidGovtIdentityProofCertificateURL == 'undefined') {
			showAlert('error', 'Please upload any valid govt identity proof certificate first');
			return false;
		}
		var postData = '';
		postData = 'photoURL=' + photoURL;
		postData += '&signURL=' + signURL;
		postData += '&highSchoolCertificateURL=' + highSchoolCertificateURL;
		postData += '&intermediateCertificateURL=' + intermediateCertificateURL;
		postData += '&engineeringDiplomaCertificateURL=' + engineeringDiplomaCertificateURL;
		postData += '&mineSurveyorCertificateURL=' + mineSurveyorCertificateURL;
		postData += '&casteCertificateURL=' + casteCertificateURL;
		postData += '&pwbdEWSCertificateURL=' + pwbdEWSCertificateURL;
		postData += '&anyValidGovtIdentityProofCertificateURL=' + anyValidGovtIdentityProofCertificateURL;
		var candidateProvisionalApplicationNumber = $( "#candidateProvisionalApplicationNumber" ).val();
		if(candidateProvisionalApplicationNumber != "" && candidateProvisionalApplicationNumber != 'undefined') {
			/*	---------------update sign photo details through Ajax Post request---------------------*/
			postData += '&provisionalApplicationNumber=' + candidateProvisionalApplicationNumber;
			$('#loading').css("display", "block");
			$.ajax({
				type : "POST",
				url : "update-sign-photo-details",
				data : postData,
				async: false,
				datatype : 'json',
				success : function(result) {
					$('#loading').css("display", "none");
					if(result['status']=='error'){
						showAlert(result['status'], result['message']);
					} else {
						window.location.href = 'preview';
					}
				}
			});
		} else {
			/*	---------------save sign photo details through Ajax Post request--------------------- */
			postData += '&provisionalApplicationNumber=' + $( "#provisionalApplicationNumber" ).val();
			$('#loading').css("display", "block");
			$.ajax({
				type : "POST",
				url : "save-sign-photo-details",
				data : postData,
				async: false,
				datatype : 'json',
				success : function(result) {
					$('#loading').css("display", "none");
					if(result['status']=='error'){
						showAlert(result['status'], result['message']);
					} else {
						window.location.href = 'preview';
					}
				}
			});		
		}
	});
	
	/*	---------------close Error or success message in modal---------------------*/	
	$('.close-modal').click(function(){
		$('#alert').css("display", "none");
	});	
	/*********************************************************************************************/
});

function onFileChange(type) {
	$('#'+type+'CertificateUploadButton').show();
	$('#'+type+'CertificateViewButton').hide();
}

/*	---------------Show Error or success message in modal---------------------*/
function showAlert(status, message) {
	$('.modal-title').text(status);
	$('.modal-body').text(message);
	$('#alert').css("display", "block");
}