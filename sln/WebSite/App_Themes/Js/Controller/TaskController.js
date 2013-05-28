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

    load : function(){
        
        var events_array = new Array();

        for (var i = 0; i < length; i++) {
            
        }
        /*
        events_array=[
             {
                 title: 'All Day Event',
                 start: new Date(2013,4,27,7),
                 allDay: false
             },
            {
                title: 'Long Event',
                start: new Date(y, m, d , 16, 0),
                allDay: false
            },
            {
                id: 999,
                title: 'Repeating Event',
                start: new Date(y, m, d - 3, 16, 0),
                allDay: false
            }
        ];

        this.view.render(events_array);*/
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