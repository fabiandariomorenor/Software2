RegistryController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new UserModel();
        this.view = new RegistryView();
        this.view.onSaveHandler = jQuery.proxy(this.save, this);
    },

    save: function (id, rol, document, name, phone, password, address, date, specialized) {
        this.model.save(id, rol, document, name, phone, password, address, date, specialized, this.saveCallback);
    },

    saveCallback: function (res) {
        console.log(res);
    },

    get: function (id) {
        this.view.show();
    },

    add: function () {
        this.view.show();
    }
});


var registryController;
$(document).ready(function () {
    registryController = new RegistryController();
});