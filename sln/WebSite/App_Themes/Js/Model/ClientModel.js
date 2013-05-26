ClientModel = AjaxModel.extend({
    service: "ClientService.asmx",

    list: function (name, callback, ref) {
        this.method = "List";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"name":"' + name + '"}'
        });
    },
    
    "delete": function(document, callback){
        this.method = "Delete";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"document":' + document + '}'
        });
     },

     get: function(document, callback){
        this.method = "Get";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"document":' + document + '}'
        });
    }

});