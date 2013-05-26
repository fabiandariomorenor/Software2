﻿TaskByClientView = Backbone.View.extend({
    onFindHandler: null,
    onDeleteHandler: null,
    onEditHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $(".menu .client").addClass("select");
        $("#txtFind").keyup(jQuery.proxy(this.onFind, this));
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
        }

        template.dataBind("rptTask", data);
        this.addItemEvents();
    }

});