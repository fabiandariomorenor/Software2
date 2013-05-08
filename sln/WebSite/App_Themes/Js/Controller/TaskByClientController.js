TaskByClientController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new TaskModel();
        this.view = new TaskByClientView();
        this.view.onFindHandler = jQuery.proxy(this.list, this);
        this.view.onEditHandler = jQuery.proxy(this.edit, this);
        this.view.onDeleteHandler = jQuery.proxy(this["delete"], this);
        this.model.set({ clientId: clientId });
        this.list();
    },

    edit: function (id) {
        window.location = "task.aspx?Id=" + id;
    },

    "delete": function (id) {
        this.model["delete"](id, jQuery.proxy(this.list, this));
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