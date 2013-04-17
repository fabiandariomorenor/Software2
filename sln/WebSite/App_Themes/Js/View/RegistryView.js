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

            if (rolId == 3)
                password = $("#txtDate").val();

            //datos agente
            var specialized = $("#txtSpecialized").val();

            if (this.validate(rol, document, name, phone, password, address, date, specialized)) {
                this.onSaveHandler(rol, document, name, phone, password, address, date, specialized);
            }
        }
    },

    validate: function (rol, document, name, phone, password, address, date, specialized) {
        if (document.length < 6) {
            alert("Por favor ingrese un documento valido");
            return false;
        }
        else if (name.length < 6) {
            alert("Por favor ingrese un nombre valido");
            return false;
        }
        else if (phone.length < 6) {
            alert("Por favor ingrese un teléfono valido");
            return false;
        }

        //cliente
        else if (rol == 3) {
            if (address.length < 6) {
                alert("Por favor ingrese una dirección valida");
                return false;
            }
            else if (date.length < 6) {
                alert("Por favor seleccione la fecha de expedición del documento");
                return false;
            }
        }
        else if (rol == 2) {
            if (password.length < 6) {
                alert("Por favor ingrese una contraseña valida");
                return false;
            }
            else if (specialized.length < 6) {
                alert("Por favor ingrese la especialización del agente");
                return false;
            }
        }

        return true;
    },

    show: function () {
        $(".modal_content,.back_modal").fadeIn();
        $('#txtDate').datepicker({
            dateFormat: "mm/dd/yy",
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