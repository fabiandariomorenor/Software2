function Util() {
    this.IsNull = function (obj) {
        if (typeof (obj) == undefined || obj == undefined || obj == null)
            return true;
        return false;
    }

    this.ReplaceAll = function (text, word, newWord) {
        if (text != undefined) {
            var textReplace = text.toString();
            while (textReplace.indexOf(word) != -1)
                textReplace = textReplace.replace(word, newWord);
            return textReplace;
        }
        return text;
    }

    this.FormatDate = function (date) {
        if (date.indexOf("new Date(") == 0) {
            var d = eval(date);
            var day = Util.FormatDigits(d.getDate());
            var month = Util.FormatDigits(d.getMonth() + 1);
            var year = Util.FormatDigits(d.getFullYear());

            if (year > 1900) {
                date = month + "/" + day + "/" + year;
            }
            else {
                date = "";
            }
        }

        return date;
    }

    this.Format = function (template, obj, nullable, prefix, what, dateFormat) {
        if (template != null && obj != undefined && obj != null) {
            if (prefix != undefined)
                prefix = prefix + ".";
            else
                prefix = "";

            for (var property in obj) {
                if (obj.hasOwnProperty(property)) {
                    var propValue = obj[property];
                    var propName = prefix + property;

                    if (propValue instanceof Object) {
                        template = Util.Format(template, propValue, property);
                    }
                    else {
                        if (propValue == undefined)
                            propValue = "";

                        propValue = propValue.toString();
                        if ((propValue == null || propValue == "") && nullable)
                            propValue = "null";

                        propValue = Util.FormatDate(propValue);

                        if (propValue == "")
                            propValue = " Desconocido ";

                        if (what != undefined && what != "") {
                            propValue = Util.Highlight(propValue, what);
                        }

                        template = Util.ReplaceAll(template, "{" + propName + "}", propValue);
                        template = Util.ReplaceAll(template, "%7B" + propName + "%7D", propValue);
                    }
                }
            }
        }

        return template;
    }

    this.Insert = function (str, index, string) {
        if (index > 0)
            return str.substring(0, index) + string + str.substring(index, str.length);
        else
            return string + str;
    }

    this.Trim = function (str) {
        if (str != null)
            return str.replace(/^\s\s*/, '').replace(/\s\s*$/, '')
        else
            return "";
    }

    this.Highlight = function (value, what) {
        if (value != undefined) {
            var whatNormalize = Util.Normalize(what.toLowerCase());
            var normalize = Util.Normalize(value.toLowerCase());
            var index = normalize.indexOf(whatNormalize);

            if (index >= 0) {
                value = Util.Insert(value, index + what.length, "</b>");
                value = Util.Insert(value, index, "<b>");
            }
        }

        return value;
    }

    this.Normalize = function (str) {
        return Util.ReplaceAll(Util.ReplaceAll(Util.ReplaceAll(Util.ReplaceAll(Util.ReplaceAll(Util.ReplaceAll(Util.Trim(str).toLowerCase(), "á", "a"), "é", "e"), "í", "i"), "ó", "o"), "ú", "u"), "\\", "/");
    }

    this.AjaxSetup = function (obj, onSuccess, onFailed, ref) {

        if (Util.IsNull(onSuccess))
            onSuccess = null;

        if (Util.IsNull(onFailed))
            onFailed = null;

        if (Util.IsNull(ref))
            ref = "";

        $.ajaxSetup({
            type: obj.type,
            contentType: obj.contentType,
            dataType: obj.dataType,
            url: obj.domain + obj.service + "/" + obj.method,

            success: function (results) {

                if (!Util.IsNull(onSuccess)) {
                    var current = this;
                    if (this.context != undefined)
                        current = this.context;
                    else {
                        if (typeof (this) != "object")
                            current = this.toString();
                    }

                    if (results.d != undefined)
                        onSuccess(results.d, current)
                    else
                        onSuccess(results, current)
                }
            },
            failure: onFailed,
            context: ref
        });
    }
}

var Util = new Util();