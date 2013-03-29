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
        this.view.onAddHandler = jQuery.proxy(this.add, this);

        this.list();
    },

    add: function(){
        this.registry.add();
    },

    edit: function(id){
        this.model.get(id, jQuery.proxy(this.getCallback, this));
    },

    getCallback: function (res) {
        this.registry.setData(res);
    },

    delete: function(id){
        this.model.delete(id, jQuery.proxy(this.deleteCallback, this));
    },

    deleteCallback: function(){
        var name = this.view.getFilter();
        this.list(name);
    },

    list: function (name) {
        
        if (name == undefined)
            name = "";

        this.model.list(name,jQuery.proxy(this.listCallback, this), name);
    },

    listCallback: function (data, ref) {
        this.view.render(data, ref);
    }
});


var agentController;
$(document).ready(function () {
    agentController = new AgentController();
});