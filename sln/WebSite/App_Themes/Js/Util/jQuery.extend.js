jQuery.fn.SetIntegerInput = function () {
    $(this).keydown(function (event) {
        var keyCode = event.keyCode;
        console.log(keyCode);
        //si es un caracter valido, lo dejamos pasar
        if (keyCode < 40 || (keyCode > 45 && keyCode < 58) || (keyCode > 95 && keyCode < 106)) {
            return true;
        }
        else
            return false;
    });
}

jQuery.fn.SetSearchInput = function () {

    $(this).attr('maxlength', "30");

    $(this).focus(function (event) {
        $(this).select();
        $(this).css("color", "#000");
        $(this).css("font-style", "normal");
    });

    $(this).blur(function (event) {
        $(this).css("color", "#ccc");
        $(this).css("font-style", "italic");
    });

    //Asignamos el evento keydown
    $(this).keydown(function (event) {
        var keyCode = event.keyCode;

        //si es un caracter valido, lanzamos la busqueda
        if (keyCode > 36 && keyCode < 112 || keyCode == 8 ||
            keyCode == 12 || keyCode == 32 || keyCode == 36 ||
            keyCode == 35 || keyCode == 110 || keyCode == 190 ||
            keyCode == 188) {
            return true;
        }
        else
            return false;
    });

    //Asignamos el evento keyup
    $(this).keyup(function (event) {
        var keyCode = event.keyCode;

        //si es un caracter valido, lanzamos la busqueda
        if (keyCode > 40 && keyCode < 112 || keyCode == 8 ||
            keyCode == 13 || keyCode == 110 || keyCode == 190 ||
            keyCode == 188) {
            return true;
        }
        else
            return false;
    });
}

$(document).ready(function () {
    $("input[Integer=true]").each(function () {
        $(this).SetIntegerInput();
    });

    $("input[Search=true]").each(function () {
        $(this).SetSearchInput();
    });
});