RegistryView = Backbone.View.extend({

    onSaveHandler: null,

    initialize: function () {
        this.addEvents();
    },

    addEvents: function () {
        $("#lnkCancel").click(jQuery.proxy(this.onClean, this));
        $("#lnkSave").click(jQuery.proxy(this.onSave, this));
        $("#ddlRol").change(jQuery.proxy(this.onChange, this));
    },

    onClean: function () {
        $("input").val("");
    },

    onSave: function () {
        if (this.onSaveHandler != null) {
            //datos basicos
            var id = 0;
            var rol = $("#ddlRol option:selected").val();
            var document = $("#txtDocument").val();
            var name = $("#txtName").val();
            var phone = $("#txtPhone").val();
            var password = $("#txtPassword").val();

            //datos cliente
            var address = $("#txtAddress").val();
            var date = $("#txtDate").val();

            //datos agente
            var specialized = $("#txtSpecialized").val();

            this.onSaveHandler(id, rol, document, name, phone, password, address, date, specialized);
        }
    }
});