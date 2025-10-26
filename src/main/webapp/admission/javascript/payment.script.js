$(document).ready(function() {	
	/*********************************************************************************************/	
	var dateRegex = /^\d{2}-\d{2}-\d{4}$/;
	$('#fee_date').blur(function() {
		if(this.value != "" && this.value != 'undefined' && !dateRegex.test(this.value)){
			$('#fee_date').css('border-color', 'red');
			showAlert('Error',"Please enter valid Fee date");
			$('#fee_date').val('');
        	$('#fee_date').focus();
        	$( "#fee_date" ).keyup(function() {
				$('#fee_date').css('border-color', '');
			});
		}
	});
	
	$('#backToPreview').click(function() {
		window.location.href = 'preview'
	})
	
	$('#payNowButton').click(function() {
		$('#backToPreview').hide();
	})
	
	// $('#online-payment-section').hide();
	$('#offline-payment-section').hide();
	
	var paymentOrderStatus = $('#payment-order-status').val(); // alert("paymentOrderStatus : "+paymentOrderStatus);
	if(paymentOrderStatus == 'Created') {
		$('#online-payment-section').show();
		$('#offline-payment-section').hide();
	}
	
	$("#paymentMode input[name='paymentMode']").click(function() {
	    if($('input:radio[name=paymentMode]:checked').val() == "online") {
			$('#online-payment-section').show();
	        $('#offline-payment-section').hide();
	    	/*showAlert('Notification','OTHER PAYMENT MODE THROUGH PAYMENT GATEWAY SHALL BE AVAILABLE SOON, SO PLEASE REFER TO SBI COLLECT ONLINE PAYMENT MODE TO MAKE THE PAYMENT FOR FINAL SUBMISSION OF YOUR APPLICATION.');
	    	$('input:radio[name=paymentMode]:checked').prop('checked', false);
	    	$('#offline-payment-section').hide();
	    	return;*/
	    } else if($('input:radio[name=paymentMode]:checked').val() == "offline") {
	        $('#online-payment-section').hide();
	        $('#offline-payment-section').show();
	    }
	});
	
	$('#bank_challan_receipt_upload_button').click(function() {
		if($('#bank_challan_receipt_file')[0].files.length == 0) {
			alert('Please choose challan receipt first');
			e.preventPropagation();
		}/* else if(Math.round('#'+documentType+'_file')[0].files[0].size/1024) > 50 || Math.round($('#photo')[0].files[0].size/1024) < 10) {
			showAlert('error','Image size must be in between [10 - 50] kb');
			$('#photo').val('');
			return false;
		}*/
		var provisionalApplicationNumber = $( "#provisionalApplicationNumber" ).val();
		var formData = new FormData();
		formData.append('file', $('#bank_challan_receipt_file')[0].files[0]);
		formData.append('provisionalApplicationNumber', provisionalApplicationNumber);
		formData.append('type', 'challanReceipt');
		
		// $('#loading').css("display", "block");
		$.ajax({
			url : 'https://www.dvcrecruitment.in/OnlineApplicationFormRestServicesDVC/file/upload',
		    type : 'POST',
		    data : formData,
		    processData: false,  // tell jQuery not to process the data
		    contentType: false,  // tell jQuery not to set contentType
		    success : function(data) {
		    	// $('#loading').css("display", "none");
		    	$('#bank_challan_receipt_path').val(data['fileURL']);
		    	$('#bank_challan_upload_status').html('Uploaded');
		    	$('#bank_challan_receipt').html('<a href="'+data['fileURL']+'" target="_blank"> Challan Document</a>');
		    	showAlert(data['status'], data['message']);
		    }
		});
	});
	
	$('#save-payment-challan').click(function() {
		var bankName = $('#bank_name').val();
		var bankChallanNo = $('#bank_challan_no').val();
		var bankChallanReceiptPath = $('#bank_challan_receipt_path').val();
		var feeDate = $('#fee_date').val();
		if(bankName.trim() == "" || bankName == 'undefined') {
			alert('Error : Please Enter Bank Name');
			$('#bank_name').focus();
        	$('#bank_name').css('border-color', 'red');
			$( "#bank_name" ).keyup(function() {
				$('#bank_name').css('border-color', '');
			});
			return false;
		} else if(bankChallanNo.trim() == "" || bankChallanNo == 'undefined') {
			alert('Error : Please Enter Bank Challan No');
			$('#bank_challan_no').focus();
        	$('#bank_challan_no').css('border-color', 'red');
			$( "#bank_challan_no" ).keyup(function() {
				$('#bank_challan_no').css('border-color', '');
			});
			return false;
		} else if(bankChallanReceiptPath.trim() == "" || bankChallanReceiptPath == 'undefined') {
			alert('Error : Please Upload Bank Challan Receipt');
			/*$('#bank_challan_receipt_upload_button').focus();
        	$('#bank_challan_receipt_upload_button').css('border-color', 'red');
			$( "#bank_challan_receipt_upload_button" ).keyup(function() {
				$('#bank_challan_receipt_upload_button').css('border-color', '');
			});*/
			return false;
		} else if(feeDate.trim() == "" || feeDate == 'undefined') {
			alert('Error : Please Enter Fee Date');
			$('#fee_date').focus();
        	$('#fee_date').css('border-color', 'red');
			$( "#fee_date" ).keyup(function() {
				$('#fee_date').css('border-color', '');
			});
			return false;
		}
		
		var inputParams = {};
		inputParams['bankName']=bankName;
		inputParams['bankChallanNo']=bankChallanNo;
		inputParams['bankChallanReceiptPath']=bankChallanReceiptPath;
		inputParams['feeDate']=feeDate;
		
		$.ajax({
			type : "POST",
			url : "save-payment-challan",
			data : JSON.stringify(inputParams),
			async: false,
			datatype : 'json',
			contentType: "application/json; charset=utf-8",
			success : function(data) {
				if(data['status']=='success') {
					alert(data['status']+" : "+data['message']);
					window.location.href = 'preview-after-payment';
				} else {
					alert("data['status'] : "+data['status']);
				}
	       }
		});
	})
	
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
	
	/*	---------------close Error or success message in modal---------------------*/	
	$('.close-modal').click(function() {
		$('#alert').css("display", "none");
	});	
	/*********************************************************************************************/	
	
});

function fileChooser(data) {
	var fileExtension = ['jpeg', 'jpg', 'png', 'doc', 'pdf'];
	if ($.inArray($(data).val().split('.').pop().toLowerCase(), fileExtension) == -1) {
        showAlert('Info', "Only formats are allowed : "+fileExtension.join(', '));
    }
	var extension = $(data).val().split('.').pop();
	$('#extension').val(extension);
	$('#bank_challan_upload_status').html('Pending');
}

/*	---------------Show Error or success message in modal---------------------*/
function showAlert(status, message) {
	$('.modal-title').text(status);
	$('.modal-body').text(message);
	$('#alert').css("display", "block");
}