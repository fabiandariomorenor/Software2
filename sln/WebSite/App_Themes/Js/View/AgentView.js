AgentView = Backbone.View.extend({
    onFindHandler: null,
    onDeleteHandler: null,
    onEditHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $(".box").mouseenter(function () {
            $(this).find(".edit,.delete").stop().fadeIn();
        });

        $(".box").mouseleave(function () {
            $(this).find(".edit,.delete").stop().hide();
        })

        $("#txtFind").keyup(jQuery.proxy(this.onFind, this));

        this.addItemEvents();
    },

    addItemEvents: function (e) {
        $(".box").find(".edit").click(jQuery.proxy(this.onEdit, this));
        $(".box").find(".delete").click(jQuery.proxy(this.onDelete, this));
    },

    onEdit: function () {
        console.log("a")
        if (this.onEditHandler != null) {
            this.onEditHandler(1);
        }
    },

    onDelete: function () {
        console.log("b")
        if (this.onDeleteHandler != null) {
            this.onDeleteHandler(1);
        }
    },

    onFind: function () {
        if (this.onFindHandler != null) {
            var text = $("#txtFind").val();
            this.onFindHandler(text);
        }
    },

    render: function (data, ref) {

    }
});