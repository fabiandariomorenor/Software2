RegistryController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new UsuarioModel();
        this.view = new RegistryView();
        this.view.onSaveHandler = jQuery.proxy(this.save, this);
    },

    save: function (id, rol, document, name, phone, password, address, date, specialized) {
        this.model.save(id, rol, document, name, phone, password, address, date, specialized, this.saveCallback);
    },

    saveCallback: function (res) {
        console.log(res);
    }
});


var usuarioController;
$(document).ready(function () {
    usuarioController = new UsuarioController();
});