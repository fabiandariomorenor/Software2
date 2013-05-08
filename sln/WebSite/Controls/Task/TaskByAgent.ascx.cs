using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;


namespace WebSite.Controls.Task
{
    public partial class TaskByAgent : System.Web.UI.UserControl
    {
        protected string agentName = "Anonimo";
        protected string agentId = "0";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var qs = Request.QueryString["agentId"];
                agentId = qs != null ? qs.ToString() : "0";

                AgentBO agentBO = new AgentBO();

                var agent = agentBO.Get(int.Parse(agentId));
                agentName = agent.Name;
            }
            catch
            {
            }
        }
    }
}