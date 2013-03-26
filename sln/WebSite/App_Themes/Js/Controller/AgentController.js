AgentController = Backbone.Router.extend({
    view: null,
    model: null,

    initialize: function () {
        this.model = new AgentModel();
        this.view = new AgentView();
        this.view.onFindHandler = jQuery.proxy(this.list, this);
    },

    list: function (name) {
        console.log(name);
        if (name == undefined)
            name = "";

        this.model.list(name, this.listCallback, name);
    },

    listCallback: function (res, ref) {
        var data = res.ToObject();
        this.view.render(data, ref);
    }
});


var agentController;
$(document).ready(function () {
    agentController = new AgentController();
});