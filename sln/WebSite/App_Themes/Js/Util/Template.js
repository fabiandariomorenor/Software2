template = (function (id) {

    getHtml = function (id, lstData, what, view) {
        var html = '';
        var templateHtml = '';

        if (Util.IsNull(view))
            var templateHtml = $("script[template=" + id + "]").html();
        else
            var templateHtml = $("script[template=" + id + "][view=" + view + "]").html();

        /*si la plantilla y los datos son validos*/
        if (templateHtml != null && lstData != undefined && lstData.length > 0) {
            var len = lstData.length;

            for (var i = 0; i < len; i++) {
                var templateItemHtml = templateHtml;
                lstData[i].RowIndex = i;

                //si es un objeto
                if (lstData[i].substr == undefined) {
                    templateItemHtml = Util.Format(templateItemHtml, lstData[i], null, null, what);
                }
                else {
                    templateItemHtml = Util.ReplaceAll(templateItemHtml, "{Value}", lstData[i]);
                    templateItemHtml = Util.ReplaceAll(templateItemHtml, "{RowIndex}", i);
                }

                html += templateItemHtml;
            }

            return html;
        }

        return null;
    };

    getEmptyPage = function (id) {
        var html = $("script[empty=" + id + "]").html();
        return html;
    }

    getPage = function (id, data, what, view) {
        var html = getHtml(id, data, what, view);

        return html;
    };

    return {
        dataBind: function (id, data, what, view) {

            if (!Util.IsNull(data)) {
                if (data.length > 0) {
                    $("#" + id).html(getPage(id, data, what, view));
                }
                else {
                    $("#" + id).html(getEmptyPage(id, data, what, view));
                }

                $("#" + id).show();
            }
            else {
                $("#" + id).hide();
            }
        },

        append: function (id, data, what, view) {
            $("#" + id).append(getPage(id, data, what, view));
        }
    }
})();
