UsuarioController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new UsuarioModel();
        this.view = new UsuarioView();
        this.view.onLoginHandler = jQuery.proxy(this.login, this);

    },

    login: function (user, pass) {
        this.model.login(user, pass, this.loginCallback);
    },

    loginCallback: function (res) {

    }
});


var usuarioController;
$(document).ready(function () {
    usuarioController = new UsuarioController();
});