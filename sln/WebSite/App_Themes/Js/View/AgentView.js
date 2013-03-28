AgentView = Backbone.View.extend({
    onFindHandler: null,
    onDeleteHandler: null,
    onEditHandler: null,
    onAddHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $(".menu .agent").addClass("select");

        $("#txtFind").keyup(jQuery.proxy(this.onFind, this));

        $("#btnAddAgent").click(jQuery.proxy(this.onAdd, this));
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
            this.onAddHandler(1);
        }
    },

    onEdit: function () {
        if (this.onEditHandler != null) {
            this.onEditHandler(1);
        }
    },

    onDelete: function () {
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

        for (var i = 0; i < data.length; i++) {
            data[i].Image = data[i].Document % 10;
        }
        template.dataBind("rptAgent", data);

        this.addItemEvents();
    }
});