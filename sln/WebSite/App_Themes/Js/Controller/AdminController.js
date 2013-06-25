AdminController = Backbone.Router.extend({
    view: null,

    initialize: function () {
        this.view = new AdminView();

        this.view.renderBusyAgent(busyAgent);
        this.view.renderFreeAgent(freeAgent);
        this.view.renderPendingClient(pendingClient);


        var events_array = new Array();
        Date.prototype.addHours = function (h) {
            this.setHours(this.getHours() + h);
            return this;
        }

        var res = taskAgentHour;
        for (var i = 0; i < res.length; i++) {
            var start = eval("new " + Util.ReplaceAll(res[i].TaskDate, "/", ""));
            var end = eval("new " + Util.ReplaceAll(res[i].TaskDate, "/", "")).addHours(1);
            var color = "#0A8C8E";
            var count = res[i].Task_PerHour;

            if (count == totalAgent)
                color = "#f00";
            events_array.push({
                title: (count + "/"+totalAgent+ ' agentes ocupados'),
                start: start,
                end: end,
                allDay: false,
                color: color
            });
        }

        console.log(events_array);

        this.view.addDisponibility(events_array);
    }
})


var adminController;
$(document).ready(function () {
    adminController = new AdminController();
});