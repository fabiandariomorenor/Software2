using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected string url = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            url = Request.Url.AbsolutePath;
            var segments = Request.Url.Segments;
            var len = segments.Length;

            for (int i = 1; i <= 2; i++)
            {
                var lastSegment = Request.Url.Segments[len - i];
                var subStringIndex = url.LastIndexOf(lastSegment);
                url = url.Remove(subStringIndex);
            }

        }
    }
}