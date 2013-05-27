TaskReviewController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new TaskModel();
        this.view = new TaskReviewView();
        this.view.onSaveHandler = jQuery.proxy(this.save, this);
    },

    save: function (taskId, comment) {
        this.model.reviewClient(taskId, comment, jQuery.proxy(this.reviewClientCallback, this));
    },

    reviewClientCallback: function (res) {
        alert("Gracias por su opinion");
        this.list();
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