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
        if (res > 0) {
            alert("Su tarea fue almacenada");
            window.location = "TaskByClient.aspx?clientId=" + clientId;
        }
        else {
            alert("Ocurrio un error almacenando la tarea");
        }
    }
});


var taskController;
$(document).ready(function () {
    taskController = new TaskController();
});