$(document).ready(function() {
    /*********************************************************************************************/
    var baseURL = 'https://www.voletictechnology.com/UniversityERPRestServices/api/v1/';
    var addQuestions = baseURL + 'examination/cbtExam/candidateExamPaper/upsert';

    $('#AddQuestion').click(function() {

        var examPaperId = $('#examPaperId').val();
        var examSet = $('#examSet').val();
        var questionNumber = $('#questionNumber').val();
        var questionContentEnglish = $('#questionContentEnglish').val();
        var questionContentHindi = $('#questionContentHindi').val();
        var optionOneEnglish = $('#optionOneEnglish').val();
        var optionOneHindi = $('#optionOneHindi').val();
        var optionTwoEnglish = $('#optionTwoEnglish').val();
        var optionTwoHindi = $('#optionTwoHindi').val();
        var optionThreeEnglish = $('#optionThreeEnglish').val();
        var optionThreeHindi = $('#optionThreeHindi').val();
        var optionFourEnglish = $('#optionFourEnglish').val();
        var optionFourHindi = $('#optionFourHindi').val();

        if (examPaperId.length == 0) {
            alert("Please enter Exam Paper Id");
            return;
        } else if (examSet.length == 0) {
            alert("Please enter exam Set");
            return;
        } else if (questionNumber.length == 0) {
            alert("Please enter question Number");
            return;
        } else if (questionContentEnglish.length == 0) {
            alert("Please question Content English Set");
            return;
        } else if (questionContentHindi.length == 0) {
            alert("Please enter question Content Hindi");
            return;
        } else if (optionOneEnglish.length == 0) {
            alert("Please enter option One English");
            return;
        } else if (optionOneHindi.length == 0) {
            alert("Please enter option One Hindi");
            return;
        } else if (optionTwoEnglish.length == 0) {
            alert("Please enter option Two English");
            return;
        } else if (optionTwoHindi.length == 0) {
            alert("Please enter option Two Hindi");
            return;
        } else if (optionThreeEnglish.length == 0) {
            alert("Please enter option Three English");
            return;
        } else if (optionThreeHindi.length == 0) {
            alert("Please enter option Three Hindi");
            return;
        } else if (optionFourEnglish.length == 0) {
            alert("Please enter option Four English");
            return;
        } else if (optionFourHindi.length == 0) {
            alert("Please enter option Four Hindi");
            return;
        }

        var inputParams = {};
        inputParams['examPaperId'] = examPaperId;
        inputParams['examSet'] = examSet;
        inputParams['questionNumber'] = questionNumber;
        inputParams['questionContentEnglish'] = questionContentEnglish;
        inputParams['questionContentHindi'] = questionContentHindi;
        inputParams['optionOneEnglish'] = optionOneEnglish;
        inputParams['optionOneHindi'] = optionOneHindi;
        inputParams['optionTwoEnglish'] = optionTwoEnglish;
        inputParams['optionTwoHindi'] = optionTwoHindi;
        inputParams['optionThreeEnglish'] = optionThreeEnglish;
        inputParams['optionThreeHindi'] = optionThreeHindi;
        inputParams['optionFourEnglish'] = optionFourEnglish;
        inputParams['optionFourHindi'] = optionFourHindi;


        console.log('inputParams : ' + JSON.stringify(inputParams));

        $('#loading').css("display", "block");
        $.ajax({
            type: "POST",
            url: addQuestions,
            data: JSON.stringify(inputParams),
            contentType: 'application/json', // Ensure the server treats it as JSON
            async: false, // Keep it async false because we need to respond based on response
            datatype: 'json', // Expect JSON response from server
            success: function(response) {
                console.log('response : ' + JSON.stringify(response));
                $('#loading').css("display", "none");
                if (response.status == 'success') {
                    showAlert(response.status, response.message)
                    var result = response.result;
                    window.location.href = "/examination/adminPanel/examPapers";
                } else {
                    // Show error alert message if status is not 'success'
                    showAlert(response.status, response.message)
                }
            }
        });

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