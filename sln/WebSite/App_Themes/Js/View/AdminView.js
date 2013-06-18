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
    }
})