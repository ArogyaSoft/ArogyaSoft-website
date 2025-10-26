$(document).ready(function() {
	
	$('#email').blur(function() {
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
		}
	});
	
	$('#forgot-application-number').click(function() {
		var email = $('#email').val();
		var securityCode = $("#securityCode").val();
		
		if(email.trim() == "" || email == 'undefined') {
			$('#email').css('border-color', 'red');
			showAlert('Error', "Please enter email id first");
			$('#email').focus();
        	$("#email").keyup(function() {
				$('#email').css('border-color', '');
			});
        	return false;
		} else if(securityCode.length == 0) {
			showAlert('Error', "Please enter security code first");
			$("#securityCode").attr("placeholder", "Enter Valid Security Code");
			$("#securityCode").css('border-color', 'red');
			$("#securityCode").focus();
			return false;
		}
		
		// $('#loading').css("display", "block");
		$.ajax({
			type : "POST",
			url : "forgot-application-number",
			data : 'email=' + email + '&securityCode=' + securityCode,
			async: false,
			datatype : 'json',
			success : function(result) {
				$('#loading').css("display", "none");
				if(result['status']=='error') {
					alert(result['message']);
					// showAlert('Error', result['message']);
				} else {
					// showAlert('Success', result['message']);
					alert(result['message']);
					// window.location.href = 'forgot-application-number';
				}
			}
		});
	});
	
	/*	---------------Generate securityCode on page load through Ajax Post request---------------------*/
	$.ajax({
		type : "POST",
		url : "../generateSecurityCode",
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
			url : "../generateSecurityCode",
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
			$("#errorMessage").html("Invalid security Code").show().delay(5000).fadeOut();
			$('#securityCode').val('');
			$('#securityCode').focus();
	    	$( "#securityCode" ).keyup(function() {
				$('#securityCode').css('border-color', '');
			});
		}
	});
	
	/*	---------------close Error or success message in modal---------------------*/	
	$('.close-modal').click(function() {
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