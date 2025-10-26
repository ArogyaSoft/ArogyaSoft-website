$(document).ready(function() {
	
	$('#confirm-preview').click(function() {
		if(!$('#confirm_final_submit').is(":checked")) {
			showAlert('Error', 'Please check confirm checkbox first');
			e.preventPropagation();
		}
		
		if(!$('#confirm_sign').is(":checked")) {
			showAlert('Error', 'Please check confirm signature checkbox first');
			e.preventPropagation();
		}
		
		if(!confirm("Please verify all the details on this page! You won't be able to change any detail after this.")) return false;
		
		/*var applicationStatus = $('#application_status').val();
		if(applicationStatus=='completed') {
			window.location.href = 'payment';
		} else {*/
			$('#loading').css("display", "block");
			$.ajax({
				type : "GET",
				url : "save-confirm-preview-details",
				async: false,
				datatype : 'json',
				contentType: "application/json; charset=utf-8",
				success : function(result) {
					$('#loading').css("display", "none");
					if(result['status']=='error') {
						showAlert(result['status'], result['message']);
					} else {
						var pwbd = $('#pwbd').val();
						var isExServiceman = $('#isExServiceman').val();
						var category = $('#category').val();
						var departmentalCandidate = $('#departmentalCandidate').val();
						
						if(pwbd=='no' && isExServiceman=='no' && departmentalCandidate=="no" && (category=='general' || category=='ews' || category=='obc-ncl')) {
							window.location.href = 'payment';
						} else {
							window.location.href = 'preview-after-payment';
						}
					}
				}
			});
		//}		
	});
	
	/*var blink = document.getElementById('blink');  
    setInterval(function () {
        blink.style.opacity = 
        (blink.style.opacity == 0 ? 1 : 0);
    }, 250);*/
    
	/*	---------------close Error or success message in modal---------------------*/
	$('.close-modal').click(function() {
		$('#alert').css("display", "none");
	});	
    
});

/*function printDiv(divId) {
	var divToPrint=document.getElementById(divId);
  	var newWin=window.open('', 'Print-Window');
  	newWin.document.open();
  	newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');
  	newWin.document.close();
  	setTimeout(function(){newWin.close();}, 10);

/*	---------------Show Error or success message in modal---------------------*/
function showAlert(status, message) {
	$('.modal-title').text(status);
	$('.modal-body').text(message);
	$('#alert').css("display", "block");
}