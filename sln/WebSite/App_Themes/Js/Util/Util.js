function Util() {
    this.IsNull = function (obj) {
        if (typeof (obj) == undefined || obj == undefined || obj == null)
            return true;
        return false;
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