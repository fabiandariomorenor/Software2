AjaxModel = Backbone.Model.extend({
    type: "POST",
    domain: siteUrl + "Ws/",
    service: "",
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    method: ""
});