$( document ).ready(function() {
	/*********************************************************************************************/
	var baseURL = 'https://www.voletictechnology.com/UniversityERPRestServices/api/v1/';
    var login = baseURL + 'examination/cbtExam/candidateDetails/fetchAll';

	$('#login').click(function() {
	    console.log("in login...");
	    var provisionalApplicationNumber = $('#provisionalApplicationNumber').val();
	    var password = $('#password').val();
	    var pin = $('#pin').val();

	    if(provisionalApplicationNumber.length == 0) {
            alert("Please enter provisional Application Number first");
            return;
	    } else if(password.length == 0) {
            alert("Please enter password first");
            return;
        } else if(pin.length == 0) {
            alert("Please enter pin first");
            return;
       }
        var inputParams = {
                filterList: [
                {
                    key: "provisionalApplicationNumber",
                    value: provisionalApplicationNumber,
                    operation: "EQUAL",
                },
                {
                    key: "password",
                    value: password,
                    operation: "EQUAL",
                },
                {
                    key: "pin",
                    value: pin,
                    operation: "EQUAL",
                }
                ],
                globalOperator: "AND",
                pageRequestDTO: {
                    pageNumber: 0,
                    pageSize: 10,
                    sort: "ASC",
                    sortByColumn: "id",
                },
                }
        console.log('inputParams : '+JSON.stringify(inputParams));

        $('#loading').css("display", "block");
        $.ajax({
            type : "POST",
            url : login,
            data : JSON.stringify(inputParams),
            contentType: 'application/json',
            async: false,
            datatype : 'json',
            success : function(response) {
                console.log('response : '+JSON.stringify(response));
                $('#loading').css("display", "none");

                if (response.status === "success") {
                    var result = response.result;

                    if (result.numberOfElements == 1) {
                        showAlert("success", "login Sucessfully completed");
                        window.location.href = "/examination/profile";
                    } else {
                        showAlert("Error", "Login failed. Please check your credentials.");
                    }
                } else {
                    showAlert("Error", "Login failed. Please check your credentials.");
                }
            }
        });

   });

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