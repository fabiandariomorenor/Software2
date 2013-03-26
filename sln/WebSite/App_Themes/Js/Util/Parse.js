String.prototype.ToObject = function () {
    try {
        if (this != null && this.length > 0)
            return eval('(' + Util.ReplaceAll(this, "\\", "/") + ')');
    }
    catch (ex) { }
    return new Object();
};

function Parse() {
    this.ToInt = function (str) {
        var int = parseInt(str);

        if (isNaN(int))
            int = null;

        return int;
    }

    this.PixelToInt = function (str) {
        var int = parseInt(str.split("px")[0]);

        if (isNaN(int))
            int = null;

        return int;
    }

    this.ToDictionary = function (data, key, value) {
        var lst = new Array();

        try {
            for (var i = 0; i < data.length; i++) {
                lst.push([data[i][key].toString(), data[i][value]])
            }
        }
        catch (exc) {
        }
        return lst;
    }

    this.ToBoolean = function (string) {
        if ("1" == string || "true" == string || "True" == string || "Checked" == string || "checked" == string || string == true)
            return true;
        else
            return false;
    }

    this.ToString = function (str) {
        if (str != undefined)
            return str;
        else
            return "";
    }

    this.ToUTC = function (val) {
        var dateParts = Util.ReplaceAll(val, "-", "/").split("/");
        return Date.UTC(dateParts[0], dateParts[1] - 1, dateParts[2]);
    }
}

var Parse = new Parse();