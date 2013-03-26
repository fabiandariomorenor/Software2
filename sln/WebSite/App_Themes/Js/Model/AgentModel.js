AgentModel = AjaxModel.extend({
    service: "AgentService.asmx",

    list: function (name, callback, ref) {
        this.method = "List";
        Util.AjaxSetup(this, callback, null, ref);
        $.ajax({
            data: '{"name":' + name + '}'
        });
    }
});