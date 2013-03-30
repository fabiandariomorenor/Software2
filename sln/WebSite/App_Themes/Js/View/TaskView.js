TaskView = Backbone.View.extend({
    calendar: null,
    currentDate: null,
    onSaveHandler: null,

    initialize: function () {
        this.addEvents();
        this.render();
    },

    addEvents: function () {
        $(".menu .task").addClass("select");

        $("#lnkCancel").click(jQuery.proxy(this.onClean, this));
        $("#lnkSave").click(jQuery.proxy(this.onSave, this));
    },

    onClean: function () {
        $("input, textarea").val("");
    },

    onSave: function () {
        if (this.onSaveHandler != null) {

            var clientId = $("#ddlClient option:selected").val();
            var description = $("#txtDescription").val();
            var address = $("#txtAddress").val(); 
            var agentId = $("#ddlAgent option:selected").val();
            var comment = $("#lblComment").html();

            this.onSaveHandler(clientId, description, this.currentDate, agentId, comment, address);
        }
    },

    render: function () {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();

        this.calendar = $('#calendar').fullCalendar({
            allDaySlot: false,
            minTime: 7,
            maxTime: 19,
            selectable: true,
            slotMinutes: 60,
            selectHelper: true,
            defaultView: 'agendaWeek',
            events: [

				    {
				        title: 'Birthday Party',
				        start: new Date(y, m, d + 1, 19, 0),
				        end: new Date(y, m, d + 1, 22, 30),
				        allDay: false
				    }
			    ],

            dayClick: jQuery.proxy(this.onDateClick, this)
        });
    },

    onDateClick: function (date, allDay, jsEvent, view) {
        this.currentDate = date;
    }
});