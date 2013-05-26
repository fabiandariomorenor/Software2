using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;

namespace WebSite.Controls.Task
{
    public partial class TaskEdit : System.Web.UI.UserControl
    {
        protected string ClientId = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null)
                ClientId = Request.QueryString["ClientId"];
        }
    }
}