TaskReviewController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new TaskModel();
        this.view = new TaskReviewView();
        this.list();
    },

    edit: function (id) {
        window.location = "task.aspx?Id=" + id + "&agentId=" + agentId;
    },

    list: function () {
        this.model.listByClientByStatus(clientId, 3, jQuery.proxy(this.listCallback, this));
    },

    listCallback: function (data) {
        this.view.render(data);
    }
});


var taskReviewController;
$(document).ready(function () {
    taskReviewController = new TaskReviewController();
});