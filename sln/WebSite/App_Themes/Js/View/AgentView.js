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
    },

    addItemEvents: function (e) {
        $(e.currentTarget).find(".edit").click(jQuery.proxy(this.onEdit, this));
        $(e.currentTarget).find(".delete").click(jQuery.proxy(this.onDelete, this));
    },

    onEdit: function () {
        console.log("a")
        if (this.onEditHandler != null) {
            
        }
    },

    onDelete: function () {
        console.log("b")
        if (this.onDeleteHandler != null) {
            
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