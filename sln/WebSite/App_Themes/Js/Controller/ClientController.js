ClientController = Backbone.Router.extend({
    view: null,
    model: null,
    registry: null,

    initialize: function () {
        this.model = new ClientModel();
        this.view = new ClientView();

        if (typeof (registryController)!="undefined")
            this.registry = registryController;

        this.view.onFindHandler = jQuery.proxy(this.list, this);
        this.view.onEditHandler = jQuery.proxy(this.edit, this);
        this.view.onDeleteHandler = jQuery.proxy(this.delete, this);
        this.view.onAddHandler = jQuery.proxy(this.add, this);
    },

    add: function(){
        this.registry.add();
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


var clientController;
$(document).ready(function () {
    clientController = new ClientController();
});