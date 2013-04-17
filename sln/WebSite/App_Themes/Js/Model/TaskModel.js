TaskModel = AjaxModel.extend({
    service: "TaskService.asmx",

    list: function (name, callback, ref) {
        this.method = "List";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"name":"' + name + '"}'
        });
    },
    
    save: function(clientId, description, currentDate,  agentId, comment,address,  callback){
        this.method = "Save";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"endDate":"' + "01/01/2013" + '","locationId":' + 1 + ',"stateID":' + 0 + ',"id":' + 0 + ',"clientId":' + clientId + ',"description":"' + description + '","initDate":"' + "01/01/2013" + '","agentId":' + agentId + ',"comment":"' + comment + '","address":"' + address + '"}'
        });
    },

    "delete": function(document, callback){
        this.method = "Delete";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"document":' + document + '}'
        });
    }
});