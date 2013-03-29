﻿RegistryController = Backbone.Router.extend({
    view: null,
    model: null,
    onChangeHandler:null,

    initialize: function () {
        this.model = new UserModel();
        this.view = new RegistryView();
        this.view.onSaveHandler = jQuery.proxy(this.save, this);
    },

    save: function (id, rol, document, name, phone, password, address, date, specialized) {
        this.model.save(id, rol, document, name, phone, password, address, date, specialized, jQuery.proxy(this.saveCallback,this));
    },

    saveCallback: function (res) {

        console.log(res);
    },

    setData: function (obj) {
        this.view.show();
        this.view.setData(obj);
    },

    getCallback: function (res) {

    },

    add: function () {
        this.view.show();
    }
});


var registryController;
$(document).ready(function () {
    registryController = new RegistryController();
});