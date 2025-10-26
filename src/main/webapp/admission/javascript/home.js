$( document ).ready(function() {

    $('#forgotYourPassword').click(function() {
        $('#userLogin').hide();
        $('#forgotPassword').show();
    })

    $('#backToLogin').click(function() {
        $('#userLogin').show();
        $('#forgotPassword').hide();
    })

});