using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSite.Ws;
using System.Web.Script.Serialization;

namespace WebSite.Admin
{
    public partial class Index : System.Web.UI.Page
    {
        protected int agentCount = 0;
        protected List<Entity.Agent> busyAgent = new List<Entity.Agent>();
        protected int clientCount = 0;
        protected int executionTaskCount = 0;
        protected List<Entity.Agent> freeAgent = new List<Entity.Agent>();
        protected List<Entity.Client> pendingClient = new List<Entity.Client>();
        protected int pendingTaskCount = 0;
        protected int taskCount = 0;
        protected int taskByReviewCount = 0;
        protected int taskCompletedCount = 0;
        JavaScriptSerializer serializer;

        protected string busyAgentSerialized = "";
        protected string freeAgentSerialized = "";
        protected string pendingClientSerialized = "";
        protected string taskAgentHourSerialized = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            Statistics stats = new Statistics();
            agentCount = stats.AgentCount();
            busyAgent = stats.BusyAgent(new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, DateTime.Now.Hour,0,0));
            clientCount = stats.ClientCount();
            executionTaskCount = stats.ExecutionTaskCount();
            freeAgent = stats.FreeAgent(new DateTime(DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day, DateTime.Now.Hour, 0, 0));
            pendingClient = stats.PendingClient();
            pendingTaskCount = stats.PendingTaskCount();
            taskCount = stats.TaskCount();
            taskByReviewCount = stats.TaskByReviewCount();
            taskCompletedCount = stats.TaskCompletedCount();
            
            serializer = new JavaScriptSerializer();

            busyAgentSerialized = serializer.Serialize(busyAgent);
            freeAgentSerialized = serializer.Serialize(freeAgent);
            pendingClientSerialized = serializer.Serialize(pendingClient);
            taskAgentHourSerialized = serializer.Serialize(new TaskService().TaskAgentHour(DateTime.Now.Subtract(new TimeSpan(365, 0, 0, 0)), DateTime.Now.Add(new TimeSpan(365, 0, 0, 0))));
        }
    }
}