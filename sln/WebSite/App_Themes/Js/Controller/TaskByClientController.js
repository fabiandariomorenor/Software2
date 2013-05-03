TaskByClientController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new TaskModel();
        this.view = new TaskByClientView();
        this.model.set({ clientId: clientId });
        this.list();
    },

    list: function (obj) {
        if (obj != undefined)
            this.model.set(obj);

        this.model.listByClient(this.model.attributes, jQuery.proxy(this.listCallback, this));
    },

    listCallback: function (data) {
        this.view.render(data);
    }
});


var taskByClientController;
$(document).ready(function () {
    taskByClientController = new TaskByClientController();
});