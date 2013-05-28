TaskView = Backbone.View.extend({
    calendar: null,
    currentDate: currentDate,
    onSaveHandler: null,
    onChangeDate: null,

    initialize: function () {
        this.addEvents();
        this.render();
    },

    addEvents: function () {
        $(".menu .client").addClass("select");

        $("#lnkCancel").click(jQuery.proxy(this.onClean, this));
        $("#lnkSave").click(jQuery.proxy(this.onSave, this));
    },

    onClean: function () {
        $("input, textarea").val("");

        if (mode != "Agent")
            window.location = "TaskByClient.aspx?clientId=" + clientId;
        else if (parseInt(agentId) > 0) {
            window.location = "TaskByAgent.aspx?agentId=" + agentId;
        }
    },

    onSave: function () {
        if (this.onSaveHandler != null) {

            var client = clientId;
            var description = $("#txtDescription").val();
            var address = $("#txtAddress").val();
            var agentId = 123456; // $("#ddlAgent option:selected").val();
            var comment = $("#lblComment").html();

            if (this.validate(client, description, address, agentId, comment, this.currentDate)) {

                var d = this.currentDate;
                var day = Util.FormatDigit(d.getDate());
                var month = Util.FormatDigit(d.getMonth() + 1);
                var year = Util.FormatDigit(d.getFullYear());
                var hour = Util.FormatDigit(d.getHours());

                var dateLabel = day + '/' + month + '/' + year + " " + hour + ":00";
                this.onSaveHandler(clientId, description, dateLabel, agentId, comment, address);
            }
        }
    },

    validate: function (client, description, address, agentId, comment, date) {
        if (!(clientId > 0)) {
            alert("El cliente no es valido");
            return false;
        }

        if (Util.Trim(address).length == 0) {
            alert("Ingrese una dirección de la tarea");
            return false;
        }

        if (Util.Trim(description).length == 0) {
            alert("Ingrese una descripción de la tarea");
            return false;
        }

        if (date == null) {
            alert("Por favor seleccione una fecha");
            return false;
        }


        if (!(agentId > 0)) {
            alert("Por favor seleccione un agente");
            return false;
        }


        return true;
    },

    render: function () {

        this.calendar = $('#calendar').fullCalendar({
            allDaySlot: false,
            minTime: 7,
            maxTime: 19,
            selectable: true,
            slotMinutes: 60,
            selectHelper: true,
            defaultView: 'agendaWeek',
            weekends: false,
            eventRender: function (event, element, view) {

            },
            dayClick: jQuery.proxy(this.onDateClick, this)
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

    onEventClick: function(event){
        this.currentDate = event.start;
        var d = event.start;
        var day = Util.FormatDigit(d.getDate());
        var month = Util.FormatDigit(d.getMonth() + 1);
        var year = Util.FormatDigit(d.getFullYear());
        var hour = Util.FormatDigit(d.getHours());

        var dateLabel = day + '/' + month + '/' + year + " " + hour + ":00";
        $(".lblCurrentDate").html(dateLabel);
        

        if (this.onChangeDate != null) {
            this.onChangeDate(dateLabel);
        }
    },

    onDateClick: function (date, allDay, jsEvent, view) {
        this.currentDate = date;
        var d = this.currentDate;
        var day = Util.FormatDigit(d.getDate());
        var month = Util.FormatDigit(d.getMonth() + 1);
        var year = Util.FormatDigit(d.getFullYear());
        var hour = Util.FormatDigit(d.getHours());

        var dateLabel = day + '/' + month + '/' + year + " " + hour + ":00";
        $(".lblCurrentDate").html(dateLabel);
        

        if (this.onChangeDate != null) {
            this.onChangeDate(dateLabel);
        }
    }
});