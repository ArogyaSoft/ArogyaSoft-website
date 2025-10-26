$( document ).ready(function() {
	/*********************************************************************************************/	
	$('#login').click(function() {
		/*	---------------check login details through Ajax Post request---------------------*/
		var username = $("#username").val();
		var password = $("#password").val();
		var securityCode = $("#securityCode").val();
		
		if(username.length == 0) {
			$("#username").attr("placeholder", "Enter your username");
			$("#username").css('border-color', 'red');
			$("#username").focus();
			return;
		} else if(password.length == 0) {
			$("#username").css('border-color', '');
			
			$("#password").attr("placeholder", "Enter your password");
			$("#password").css('border-color', 'red');
			$("#password").focus();
			return;
		} else if(securityCode.length == 0) {
			$("#username").css('border-color', '');
			$("#password").css('border-color', '');
			
			$("#securityCode").attr("placeholder", "Enter Valid Security Code");
			$("#securityCode").css('border-color', 'red');
			$("#securityCode").focus();
			return;
		}
		
		if(username != "" && username != 'undefined' && password != "" && password != 'undefined') {
			$('#loading').css("display", "block");
			$.ajax({
				type : "POST",
				url : "checkLoginDetails",
				data : 'username=' + username + '&password=' + password + '&securityCode=' + securityCode,
				async: false,
				datatype : 'json',
				success : function(result) {
					$('#loading').css("display", "none");
					if(result.status=='success') {
						var userCount = parseInt(result['size']);
						if(userCount==0) {
							$("#errorMessage").html("Invalid Application Number or Password").show().delay(5000).fadeOut();
							showAlert('Error',"Invalid Application Number or Password");
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
						} else {
							window.location.href = result['pageName'];
						}
					} else if(result.status=='error') {
						$("#errorMessage").html(result.message).show().delay(5000).fadeOut();
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
					}
				}
			});
		}
	});
	
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
			$("#errorMessage").html("Invalid security Code").show().delay(5000).fadeOut();
			$('#securityCode').val('');
			$('#securityCode').focus();
	    	$( "#securityCode" ).keyup(function() {
				$('#securityCode').css('border-color', '');
			});
		}
	});
	
	var blink = document.getElementById('blink');  
    setInterval(function () {
        blink.style.opacity = 
        (blink.style.opacity == 0 ? 1 : 0);
    }, 250);
    
    /*var blink1 = document.getElementById('blink1');  
    setInterval(function () {
        blink1.style.opacity = 
        (blink1.style.opacity == 0 ? 1 : 0);
    }, 250);*/
	
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