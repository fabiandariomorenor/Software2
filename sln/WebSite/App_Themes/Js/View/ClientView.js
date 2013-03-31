ClientView = Backbone.View.extend({
    onFindHandler: null,
    onDeleteHandler: null,
    onEditHandler: null,
    onAddHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $(".menu .client").addClass("select");

        $("#txtFind").keyup(jQuery.proxy(this.onFind, this));

        $("#btnAdd").click(jQuery.proxy(this.onAdd, this));
    },

    addItemEvents: function () {
        $(".box").mouseenter(function () {
            $(this).find(".edit,.delete").stop().fadeIn();
        });

        $(".box").mouseleave(function () {
            $(this).find(".edit,.delete").stop().hide();
        })

        $(".box").find(".edit").click(jQuery.proxy(this.onEdit, this));
        $(".box").find(".delete").click(jQuery.proxy(this.onDelete, this));
    },

    onAdd: function () {
        if (this.onAddHandler != null) {
            this.onAddHandler();
        }
    },

    onEdit: function (e) {
        if (this.onEditHandler != null) {
            var val = $(e.currentTarget).attr("Value");
            this.onEditHandler(val);
        }
    },

    onDelete: function (e) {
        if (this.onDeleteHandler != null) {
            var val = $(e.currentTarget).attr("Value");
            this.onDeleteHandler(val);
        }
    },

    onFind: function () {
        if (this.onFindHandler != null) {
            var text = $("#txtFind").val();
            this.onFindHandler(text);
        }
    },

    render: function (data, ref) {

        for (var i = 0; i < data.length; i++) {
            data[i].Image = data[i].Document % 10;
        }
        template.dataBind("rptClient", data);

        this.addItemEvents();
    },

    getFilter: function () {
        return $("#txtFind").val();
    }
});