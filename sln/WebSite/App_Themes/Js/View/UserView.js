UserView = Backbone.View.extend({
    isVisible: false,
    onLoginHandler: null,
    onValidateHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $("#lnkLogin").click(jQuery.proxy(this.open, this));
        $("#btnLogin").click(jQuery.proxy(this.onLoginClick, this));

        if ($(".client_login #txtDate").length > 0) {

            $(".client_login #txtDate").datepicker({
                dateFormat: "mm/dd/yy",
                maxDate: new Date(),
                changeYear: true,
                changeMonth: true
            });

            $("#btnValidate").click(jQuery.proxy(this.onValidateClick, this));

        }
    },

    onValidateClick: function () {
        var user = $(".client_login #txtDocumento").val();
        var date = $(".client_login #txtDate").val();

        if (user != "") {

            if (date != "") {
                if (this.onValidateHandler != null) {

                    this.onValidateHandler(user, date);
                }
            }
            else {
                alert("Por favor ingrese la fecha de expedición del documento")
            }
        }
        else {
            alert("Por favor ingrese el usuario")
        }
    },

    onLoginClick: function () {
        var user = $("#txtDocumento").val();
        var pass = $("#txtPassword").val();

        if (user != "") {

            if (pass != "") {
                if (this.onLoginHandler != null) {

                    this.onLoginHandler(user, pass);
                }
            }
            else {
                alert("Por favor ingrese la contraseña")
            }
        }
        else {
            alert("Por favor ingrese el usuario")
        }
    },

    open: function () {
        if (!this.isVisible) {
            $(".login").stop(true, true).fadeIn();
        }
        else {
            $(".login").stop(true, true).fadeOut();
        }
        this.isVisible = !this.isVisible;
    },

    hideValidate: function () {
        $(".client_login").hide();
    }

});