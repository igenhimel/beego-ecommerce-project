
    setTimeout(function () {
        $("#errorAlert, #successAlert").fadeOut(500, function () {
            $(this).remove();
        });
    }, 3000); 
