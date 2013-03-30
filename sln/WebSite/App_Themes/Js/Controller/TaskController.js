TaskController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new TaskModel();
        this.view = new TaskView();
        this.view.onSaveHandler = jQuery.proxy(this.save, this);
    },

    save: function (clientId, description, currentDate, agentId, comment, address) {
        this.model.save(clientId, description, currentDate, agentId, comment, address, jQuery.proxy(this.saveCallback, this));
    },

    saveCallback: function (res) {
        
    }
});


var taskController;
$(document).ready(function () {
    taskController = new TaskController();
});