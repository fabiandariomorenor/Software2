UsuarioView = Backbone.View.extend({
    isVisible: false,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $("#lnkLogin").click(jQuery.proxy(this.open, this));
    },

    open: function () {
        if(!this.isVisible){
            $(".login").stop(true, true).fadeIn();
        }
        else{
            $(".login").stop(true, true).fadeOut();
        }
        this.isVisible = !this.isVisible;
    }

});