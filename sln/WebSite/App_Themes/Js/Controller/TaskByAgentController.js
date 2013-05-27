TaskByAgentController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new TaskModel();
        this.view = new TaskByAgentView();
        this.view.onFindHandler = jQuery.proxy(this.list, this);
        this.view.onEditHandler = jQuery.proxy(this.edit, this);
        this.view.onPlayHandler = jQuery.proxy(this.play, this);
        this.view.onStopHandler = jQuery.proxy(this.stop, this);
        this.view.onDeleteHandler = jQuery.proxy(this["delete"], this);
        this.model.set({ agentId: agentId });
        this.list();
    },

    play: function (id) {
        this.model.updateStatus(id, 2, jQuery.proxy(this.playCallback, this));
    },

    stop: function (id) {
        this.model.updateStatus(id, 3, jQuery.proxy(this.playCallback, this));
    },

    playCallback: function (res) {
        this.list();
    },

    edit: function (id) {
        window.location = "task.aspx?Id=" + id + "&agentId=" + agentId;
    },

    "delete": function (id) {
        this.model["delete"](id, jQuery.proxy(this.list, this));
    },

    list: function (obj) {
        if (obj != undefined)
            this.model.set(obj);

        this.model.listByAgent(this.model.attributes, jQuery.proxy(this.listCallback, this));
    },

    listCallback: function (data) {
        this.view.render(data);
    }
});


var taskByAgentController;
$(document).ready(function () {
    taskByAgentController = new TaskByAgentController();
});