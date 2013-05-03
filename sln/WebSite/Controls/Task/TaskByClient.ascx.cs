using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite.Controls.Task
{
    public partial class TaskByClient : System.Web.UI.UserControl
    {
        protected string clientId = "0";

        protected void Page_Load(object sender, EventArgs e)
        {
            var qs = Request.QueryString["clientId"];
            clientId = qs != null? qs.ToString():"0";
        }
    }
}