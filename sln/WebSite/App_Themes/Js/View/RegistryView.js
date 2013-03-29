RegistryView = Backbone.View.extend({

    onSaveHandler: null,

    initialize: function () {
        this.addEvents();
        this.enabledPanels();
    },

    addEvents: function () {
        $("#lnkCancel").click(jQuery.proxy(this.onClean, this));
        $("#lnkSave").click(jQuery.proxy(this.onSave, this));
        $("#ddlRol").change(jQuery.proxy(this.onChange, this));
    },

    enabledPanels: function () {
        switch (rolId) {
            case 1: //Coordiador
                {
                    $("[rel=client]").show();
                    break;
                }
            case 2: //Agente
                {
                    $("[rel=agent]").show();
                    break;
                }
            case 3: //Cliente
                {
                    $("[rel=client]").show();
                    break;
                }
        }
    },

    onClean: function () {
        $("input").val("");
        $(".modal_content,.back_modal").fadeOut();
    },

    onSave: function () {
        if (this.onSaveHandler != null) {
            //datos basicos
            var rol = rolId;
            var document = $("#txtDocument").val();
            var name = $("#txtName").val();
            var phone = $("#txtPhone").val();
            var password = $("#txtPassword").val();

            //datos cliente
            var address = $("#txtAddress").val();
            var date = $("#txtDate").val();

            //datos agente
            var specialized = $("#txtSpecialized").val();

            this.onSaveHandler(rol, document, name, phone, password, address, date, specialized);
        }
    },

    show: function () {
        $(".modal_content,.back_modal").fadeIn();
    }
});