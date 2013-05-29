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
        protected string Address = "";
        protected string Description = "";
        protected DateTime Date = DateTime.Now;
        protected string AgentId = "0";
        protected string TaskId = "0";
        protected string Mode = "";
        protected string Total = "0";

        protected void Page_Load(object sender, EventArgs e)
        {
            AgentBO agentBo = new AgentBO();

            Total = agentBo.Count().ToString();

            if (Request.QueryString["ClientId"] != null)
                ClientId = Request.QueryString["ClientId"];

            //si viene el id es una actualizacion
            if (Request.QueryString["Id"] != null)
            {
                int id = int.Parse(Request.QueryString["Id"]);
                TaskBO taskBo = new TaskBO();
                var task = taskBo.Get(id);
                ClientId = task.ID_Client.ToString();
                TaskId = task.ID.ToString();
                AgentId = task.ID_Agent.ToString();
                Address = task.Address;
                Description = task.Description;
                Date = task.InitDate;


                
                var agent = agentBo.Get(task.ID_Agent);


                rptAgent.DataSource = new List<Entity.Agent>() { agent };
                rptAgent.DataBind();
            }

            if (Request.QueryString["AgentId"] != null)
            {
                pnlSave.Visible = false;
                Mode = "Agent";
            }
        }
    }
}