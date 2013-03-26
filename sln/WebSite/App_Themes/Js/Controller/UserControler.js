UserController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new UserModel();
        this.view = new UserView();
        this.view.onLoginHandler = jQuery.proxy(this.login, this);

    },

    login: function (user, pass) {
        this.model.login(user, pass, this.loginCallback);
    },

    loginCallback: function (res) {
        if (res) {
            window.location = "/Admin/Index.aspx";
        }
        else {
            alert("El usuario o la contraseña no son validos");
        }
    }
});


var userController;
$(document).ready(function () {
    userController = new UserController();
});