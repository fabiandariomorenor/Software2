TaskModel = AjaxModel.extend({
    service: "TaskService.asmx",

    defaults:{
        clientId: 0,
        agentId: 0,
        description:""
    },

    listByClient: function (obj, callback, ref) {
        this.method = "ListByClient";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"description":"' + obj.description + '","clientId":' + obj.clientId + '}'
        });
    },

    listByClientByStatus: function (clientId, statusId, callback, ref) {
        this.method = "ListByState";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"statusId":' + statusId + ',"clientId":' + clientId + '}'
        });
    },

    listByAgent: function (obj, callback, ref) {
        this.method = "ListByAgent";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"description":"' + obj.description + '","agentId":' + obj.agentId + '}'
        });
    },
    
    save: function(taskId, clientId, description, currentDate,  agentId, comment,address,  callback){
        this.method = "Save";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"endDate":"' + currentDate + '","locationId":' + 1 + ',"stateID":' + 0 + ',"id":' + taskId + ',"clientId":' + clientId + ',"description":"' + description + '","initDate":"' + currentDate + '","agentId":' + agentId + ',"comment":"' + comment + '","address":"' + address + '"}'
        });
    },

    updateStatus: function (taskId, statusId, callback) {
        this.method = "ReviewAgent";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"taskId":' + taskId + ',"statusId":' + statusId + '}'
        });
    },

    "delete": function(id, callback){
        this.method = "Delete";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"id":' + id + '}'
        });
    }
});