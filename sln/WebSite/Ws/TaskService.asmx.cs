using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BO;
using Entity;

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

        [WebMethod]
        public int Save(int id, decimal clientId, decimal agentId, int stateID, int locationId, string description, string address, DateTime expectedInitDate, 
            DateTime expectedEndDate, string comment)
        {
            Task task = new Task();
            TaskBO taskBO = new TaskBO();
            task.ID = id;
            task.ID_Client = clientId;
            task.ID_Agent = agentId;
            task.ID_State = stateID;
            task.ID_Localization = locationId;
            task.Description = description;
            task.Address = address;
            task.InitDate = expectedInitDate;
            task.EndDate = expectedEndDate;
            task.ExpectedInitDate = expectedInitDate;
            task.ExpectedEndDate = expectedEndDate;
            task.ProcedureDate = DateTime.Now;
            task.Comment = comment;
            return taskBO.Save(task);
        }
    }
}
