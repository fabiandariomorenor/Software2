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
            var password = $("#txtUserPassword").val();

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
        $('#txtDate').datepicker({
            dateFormat: "dd/mm/yy",
            maxDate: new Date(),
            changeYear: true,
            changeMonth: true
        });
    },

    hide: function () {
        $(".modal_content,.back_modal").fadeOut();
        $(".modal_content input").val("");
    },

    setData: function (obj) {
        $("#txtDocument").val(obj.Document);
        $("#txtName").val(obj.Name);
        $("#txtPhone").val(obj.Phone);
        $("#txtUserPassword").val(obj.Password);

        //datos cliente
        $("#txtAddress").val(obj.Address);

        var date = eval("new " + Util.ReplaceAll(obj.DateExpDocument, "/", ""));

        $("#txtDate").datepicker("setDate", date);

        //datos agente
        $("#txtSpecialized").val(obj.Specialization);
    }
});