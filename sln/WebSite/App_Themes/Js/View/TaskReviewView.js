TaskReviewView = Backbone.View.extend({
    onSaveHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $(".menu .client").addClass("select");
        $("#txtFind").keyup(jQuery.proxy(this.onFind, this));
    },

    addItemEvents: function () {
        $(".box").find(".btnComment").click(jQuery.proxy(this.onSave, this));
    },

    onSave: function (e) {
        if (this.onSaveHandler != null) {
            var val = $(e.currentTarget).attr("Value");
            var comment = "El servicio fue calificado como " + $(".box[Value=" + val + "]  [name=rb" + val + "]:checked").attr("Value");
            this.onSaveHandler(val, comment);
        }
    },

    render: function (data) {
        for (var i = 0; i < data.length; i++) {
            var date = eval("new " + Util.ReplaceAll(data[i].InitDate, "/", ""));
            data[i].HourInitDate = date.getHours() + " : 00";
        }

        template.dataBind("rptTask", data);
        this.addItemEvents();

        if (data.length > 0) {
            $("#lblMsgReview").show();
        }
        else {
            $("#lblMsgReview").hide();
        }
    }

});