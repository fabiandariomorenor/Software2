UserModel = AjaxModel.extend({
    service: "UserService.asmx",

    login: function (document, pass, callback) {
        this.method = "Validate";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"document":' + document + ',"password":"'+pass+'"}'
        });
    },

    validate: function (document, pass, callback) {
        this.method = "ClientValidate";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"document":' + document + ',"date":"' + pass + '"}'
        });
    },

    save: function (rol, document, name, phone, password, address, date, specialized, callback) {
        this.method = "Save";
        Util.AjaxSetup(this, callback);
        $.ajax({
            data: '{"rol":' + rol + ', "document":' + document + ',"name":"' + name + '","phone":"' + phone + '","password":"' + password + '","address":"' + address + '","date":"' + date + '","specialized":"' + specialized + '","localization":1,"managerId":1}'
        });
    }
});