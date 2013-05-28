TaskController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new TaskModel();
        this.view = new TaskView();
        this.view.onSaveHandler = jQuery.proxy(this.save, this);
        this.view.onChangeDate = jQuery.proxy(this.listAgent, this);
        this.load();
    },

    load: function () {
        this.model.taskAgentHour(jQuery.proxy(this.taskAgentHourCallback, this));
    },

    taskAgentHourCallback: function (res) {
        var events_array = new Array();
        Date.prototype.addHours = function (h) {
            this.setHours(this.getHours() + h);
            return this;
        }

        for (var i = 0; i < res.length; i++) {
            var start = eval("new " + Util.ReplaceAll(res[i].TaskDate, "/", ""));
            var end = eval("new " + Util.ReplaceAll(res[i].TaskDate, "/", "")).addHours(1);
            var color = "#0A8C8E";
            var count = res[i].Task_PerHour;

            if (count == totalAgent)
                color = "#f00";
            events_array.push({
                title: (count + ' agente(s) ocupado(s) de ' + totalAgent),
                start: start,
                end: end,
                allDay: false,
                color: color
            });
        }

        console.log(events_array);

        this.view.addDisponibility(events_array);
    },

    listAgent: function (date) {
        this.model.listAgent(date, jQuery.proxy(this.listAgentCallback, this));
    },

    listAgentCallback: function (res) {

    },

    save: function (clientId, description, currentDate, agentId, comment, address) {
        this.model.save(taskId, clientId, description, currentDate, agentId, comment, address, jQuery.proxy(this.saveCallback, this));
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