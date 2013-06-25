using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Entity;
using BO;

using System.Web.Script.Serialization;
using System.Globalization;
using System.Threading;

namespace WebSite.Ws
{
    /// <summary>
    /// Descripción breve de Statistics
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class Statistics : System.Web.Services.WebService
    {
         AgentBO agentBO = new AgentBO();
         TaskBO taskBO = new TaskBO();
         ClientBO clientBO = new ClientBO();
        /// <summary>
        /// Numero total de agentes
        /// </summary>
        /// <returns></returns>
        [WebMethod]
        public int AgentCount()
        {
            return agentBO.Count();
        }

        /// <summary>
        /// Listado de agentes libres en la fecha de consulta
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public List<Agent> FreeAgent(DateTime date)
        {
            CultureInfo ci = new CultureInfo("en-US");
            Thread.CurrentThread.CurrentCulture = ci;
            Thread.CurrentThread.CurrentUICulture = ci;
            return agentBO.FreeAgent(date);
        }

        /// <summary>
        /// Listado de agentes ocupados en la fecha de consulta
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public List<Agent> BusyAgent(DateTime date)
        {
            CultureInfo ci = new CultureInfo("en-US");
            Thread.CurrentThread.CurrentCulture = ci;
            Thread.CurrentThread.CurrentUICulture = ci;
            return agentBO.BusyAgent(date);
        }

        /// <summary>
        /// Listado de clientes con tareas por calificar
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public List<Client> PendingClient()
        {
            CultureInfo ci = new CultureInfo("en-US");
            Thread.CurrentThread.CurrentCulture = ci;
            Thread.CurrentThread.CurrentUICulture = ci;
            Client client = new Client();

            return clientBO.Listpendingclient(client);
        }

        /// <summary>
        /// Numero total de tareas
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public int TaskCount()
        {
            return taskBO.Count();
        }

        [WebMethod]
        public int TaskByReviewCount()
        {
            return taskBO.TaskByReviewCount();
        }

        [WebMethod]
        public int TaskCompletedCount()
        {
            return taskBO.TaskCompletedCount();
        }

        /// <summary>
        /// Numero de tareas en ejecucion
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public int ExecutionTaskCount()
        {
            Task task = new Task();
            return taskBO.ExecutionTaskCount(task);
        }

        /// <summary>
        /// Numero de tareas pendientes
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public int PendingTaskCount()
        {
            Task task = new Task();
            return taskBO.PendingTaskCount(task);
        }

        /// <summary>
        /// Numero de clientes
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public int ClientCount()
        {
            return clientBO.Count();
        }
    }
}
