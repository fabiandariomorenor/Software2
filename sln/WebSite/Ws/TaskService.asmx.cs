using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BO;
using Entity;
using System.Globalization;

namespace WebSite.Ws
{
    /// <summary>
    /// Descripción breve de TaskService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class TaskService : System.Web.Services.WebService
    {
        TaskBO taskBO = new TaskBO();

        [WebMethod]
        public int Save(int id, decimal clientId, decimal agentId, int stateID, int locationId, string description, string address, string initDate, 
            string endDate, string comment)
        {
            Task task = taskBO.Get(id);

            if (task == null)
                task = new Task();

            task.ID = id;
            task.ID_Client = clientId;
            task.ID_Agent = agentId;

            if (stateID > 0)
                task.ID_State = stateID;

            task.ID_Localization = locationId;
            task.Description = description;
            task.Address = address;
            task.InitDate = DateTime.ParseExact(initDate, "dd/MM/yyyy HH:mm", CultureInfo.InvariantCulture);
            task.EndDate = DateTime.ParseExact(endDate, "dd/MM/yyyy HH:mm", CultureInfo.InvariantCulture);
            task.ExpectedInitDate = DateTime.ParseExact(initDate, "dd/MM/yyyy HH:mm", CultureInfo.InvariantCulture);
            task.ExpectedEndDate = DateTime.ParseExact(endDate, "dd/MM/yyyy HH:mm", CultureInfo.InvariantCulture);
            task.ProcedureDate = DateTime.ParseExact(initDate, "dd/MM/yyyy HH:mm", CultureInfo.InvariantCulture);
            task.Comment = comment;
            return taskBO.Save(task);
        }

        [WebMethod]
        public List<Task> ListByClient(int clientId, string description)
        {
            Task task = new Task();
            task.ID_Client = clientId;
            task.Description = description;
            return taskBO.ListByClient(task);
        }

        [WebMethod]
        public List<Task> ListByAgent(int agentId, string description)
        {
            Task task = new Task();
            task.ID_Agent= agentId;
            task.Description = description;
            return taskBO.ListByAgent(task);
        }

        [WebMethod]
        public void ReviewClient(int taskId, string comment)
        {
            Task task = new Task();
            task.ID = taskId;
            task.ID_State = 4;
            task.Comment = comment;
            taskBO.ReviewClient(task);
        }

        [WebMethod]
        public void ReviewAgent(int taskId, int statusId)
        {
            Task task = new Task();
            task.ID = taskId;
            task.ID_State = statusId;
            taskBO.ReviewAgent(task);
        }

        [WebMethod]
        public List<Task> ListByState(int clientId, int statusId)
        {
            Task task = new Task();
            task.ID_Client = clientId;
            task.ID_State = statusId;
            return taskBO.ListByState(task);
        }

        [WebMethod]
        public void Delete(int id)
        {
            // taskBO.Delete(id);
            Task task = new Task();
            task.ID= id;
            taskBO.Delete(task);

        }

        [WebMethod]
        public List<Agent> AgentPerHour(string date)
        {
            Agent agent = new Agent();
            agent.Datetime = DateTime.ParseExact(date, "dd/MM/yyyy HH:mm", CultureInfo.InvariantCulture); ;
            return taskBO.AgentPerHour(agent);
        }

        [WebMethod]
        public List<Tasksearch> TaskAgentHour(DateTime initdate, DateTime enddate)
        {
            Tasksearch tasksearch = new Tasksearch();
            tasksearch.InitDate = initdate;
            tasksearch.EndDate = enddate;
            return taskBO.TaskAgentHour(tasksearch);
        }

    }
}
