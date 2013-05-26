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
        protected string Address = "0";
        protected string Description = "0";
        protected string Date = "0";
        protected string AgentId = "0";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ClientId"] != null)
                ClientId = Request.QueryString["ClientId"];

            //si viene el id es una actualizacion
            if (Request.QueryString["Id"] != null)
            {
                int id = int.Parse(Request.QueryString["Id"]);
                TaskBO taskBo = new TaskBO();
                var task = taskBo.Get(id);
                ClientId = task.ID_Client.ToString();
                AgentId = task.ID_Agent;
            }
        }
    }
}