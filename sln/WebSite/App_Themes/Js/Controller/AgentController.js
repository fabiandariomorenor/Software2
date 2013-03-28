AgentController = Backbone.Router.extend({
    view: null,
    model: null,
    registry: null,

    initialize: function () {
        this.model = new AgentModel();
        this.view = new AgentView();

        if (typeof (registryController)!="undefined")
            this.registry = registryController;

        this.view.onFindHandler = jQuery.proxy(this.list, this);
        this.view.onEditHandler = jQuery.proxy(this.edit, this);
        this.view.onDeleteHandler = jQuery.proxy(this.delete, this);
    },

    edit: function(id){
        this.registry.get(id);
    },

    delete: function(id){
        this.model.delete(id);
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