AdminController = Backbone.Router.extend({
    view: null,
    
    initialize: function () {
        this.view = new AdminView();
    }
})


var adminController;
$(document).ready(function () {
    adminController = new AdminController();
});