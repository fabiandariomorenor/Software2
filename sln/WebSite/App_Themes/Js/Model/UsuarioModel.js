UsuarioModel = AjaxModel.extend({
    service: "User.asmx",

    login: function (document, pass, callback) {
        this.method = "Login";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"document":' + document + ',"password":"'+pass+'"}'
        });
    },

    save: function (id, rol, document, name, phone, password, address, date, specialized, callback) {
        this.method = "Save";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"id":'+id+',"rol":'+rol+', "document":'+document+',"name":"' + name + '","phone":"'+phone+'","password":"'+password+'","address":"'+address+'","date":"'+date+'","specialized":"'+specialized+'"}'
        });
    }
});