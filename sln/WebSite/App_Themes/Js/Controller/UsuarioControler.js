UsuarioController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        model = new UsuarioModel();
        view = new UsuarioView();
    }

});


var usuarioController;
$(document).ready(function () {
    usuarioController = new UsuarioController();
});