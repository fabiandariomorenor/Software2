using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;

namespace WebSite.Controls.Task
{
    public partial class TaskByClient : System.Web.UI.UserControl
    {
        protected string clientName = "Anonimo";
        protected string clientId = "0";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var qs = Request.QueryString["clientId"];
                clientId = qs != null ? qs.ToString() : "0";

                ClientBO clientBO = new ClientBO();

                var client = clientBO.Get(int.Parse(clientId));
                clientName = client.Name;
            }
            catch
            {
            }
        }
    }
}