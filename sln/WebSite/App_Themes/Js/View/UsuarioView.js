UsuarioView = Backbone.View.extend({
    isVisible: false,
    onLoginHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $("#lnkLogin").click(jQuery.proxy(this.open, this));
        $("#btnLogin").click(jQuery.proxy(this.onLoginClick, this));
    },

    onLoginClick: function () {
        var user = $("#txtDocumento").val();
        var pass = $("#txtPassword").val();

        if(user != "") {

            if(pass != "")
            {
                if (this.onLoginHandler != null) {
            
                    this.onLoginHandler(user, pass);
                }
            }
            else{
                alert("Ingrese la contraseña")
            }
        }
        else{
            alert("Ingrese el usuario")
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
    }

});