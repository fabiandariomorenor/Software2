TaskByAgentView = Backbone.View.extend({
    onFindHandler: null,
    onDeleteHandler: null,
    onEditHandler: null,
    onPlayHandler: null,
    onStopHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $(".menu .agent").addClass("select");
        $("#txtFind").keyup(jQuery.proxy(this.onFind, this));
    },

    addItemEvents: function () {
        $(".box").mouseenter(function () {
            $(this).find(".edit,.delete,.play,.stop").stop().fadeIn();
        });

        $(".box").mouseleave(function () {
            $(this).find(".edit,.delete,.play,.stop").stop().hide();
        })

        $(".box").find(".edit").click(jQuery.proxy(this.onEdit, this));
        $(".box").find(".delete").click(jQuery.proxy(this.onDelete, this));
        $(".box").find(".play").click(jQuery.proxy(this.onPlay, this));
        $(".box").find(".stop").click(jQuery.proxy(this.onStop, this));
    },

    onStop: function (e) {
        if (this.onStopHandler != null) {
            var val = $(e.currentTarget).attr("Value");
            this.onStopHandler(val);
        }
    },

    onPlay: function (e) {
        if (this.onPlayHandler != null) {
            var val = $(e.currentTarget).attr("Value");
            this.onPlayHandler(val);
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
            this.onFindHandler({ description: text });
        }
    },

    render: function (data) {
        for (var i = 0; i < data.length; i++) {
            var date = eval("new " + Util.ReplaceAll(data[i].InitDate, "/", ""));
            data[i].HourInitDate = date.getHours() + " : 00";

            data[i].PlayEnabled = "none";
            data[i].StopEnabled = "none";

            if (data[i].ID_State == 1) {
                data[i].PlayEnabled = "block";
            }
            else if (data[i].ID_State == 2) {
                data[i].StopEnabled = "block";
            }
        }

        template.dataBind("rptTask", data);
        this.addItemEvents();
    }

});