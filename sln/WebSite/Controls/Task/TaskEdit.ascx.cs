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
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientBO clientBO = new ClientBO();
            rptClient.DataSource = clientBO.List();
            rptClient.DataBind();
        }
    }
}