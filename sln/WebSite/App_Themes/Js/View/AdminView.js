AdminView = Backbone.View.extend({

    initialize: function () {
        this.render();
    },

    render: function () {
        $('#calendar').fullCalendar({
            allDaySlot: false,
            minTime: 7,
            maxTime: 19,
            selectable: true,
            slotMinutes: 60,
            selectHelper: true,
            defaultView: 'agendaWeek',
            weekends: false
        });
    },

    addDisponibility: function (events_array) {
        $('#calendar').html("");
        this.calendar = $('#calendar').fullCalendar({
            allDaySlot: false,
            minTime: 7,
            maxTime: 19,
            selectable: true,
            slotMinutes: 60,
            selectHelper: true,
            defaultView: 'agendaWeek',
            events: events_array,
            weekends: false,
            eventRender: function (event, element, view) {

            },
            eventClick: jQuery.proxy(this.onEventClick, this),
            dayClick: jQuery.proxy(this.onDateClick, this)
        });
    },

    renderBusyAgent: function (data) {
        for (var i = 0; i < data.length; i++) {
            data[i].Image = data[i].Document % 10;
        }
        template.dataBind("busyAgent", data);
    },

    renderFreeAgent: function (data) {
        for (var i = 0; i < data.length; i++) {
            data[i].Image = data[i].Document % 10;
        }
        template.dataBind("freeAgent", data);
    },

    renderPendingClient: function (data) {
        for (var i = 0; i < data.length; i++) {
            data[i].Image = data[i].Document % 10;
        }
        template.dataBind("clientReview", data);
    },
})