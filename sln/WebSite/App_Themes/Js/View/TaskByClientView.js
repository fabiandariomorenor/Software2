TaskByClientView = Backbone.View.extend({


    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $(".menu .client").addClass("select");
    },

    render: function (data) {
        template.dataBind("rptTask", data);
    }

});