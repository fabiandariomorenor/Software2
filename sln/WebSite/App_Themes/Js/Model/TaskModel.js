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

    listByAgent: function (obj, callback, ref) {
        this.method = "ListByAgent";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"description":"' + obj.description + '","agentId":' + obj.agentId + '}'
        });
    },
    
    save: function(clientId, description, currentDate,  agentId, comment,address,  callback){
        this.method = "Save";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"endDate":"' + "01/01/2013" + '","locationId":' + 1 + ',"stateID":' + 0 + ',"id":' + 0 + ',"clientId":' + clientId + ',"description":"' + description + '","initDate":"' + "01/01/2013" + '","agentId":' + agentId + ',"comment":"' + comment + '","address":"' + address + '"}'
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