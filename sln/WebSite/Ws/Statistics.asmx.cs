﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Entity;

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
        /// <summary>
        /// Numero total de agentes
        /// </summary>
        /// <returns></returns>
        [WebMethod]
        public int AgentCount()
        {
            return 1;
        }

        /// <summary>
        /// Listado de agentes libres en la fecha de consulta
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public List<Agent> FreeAgent(DateTime date)
        {
            return new List<Agent>();
        }

        /// <summary>
        /// Listado de agentes ocupados en la fecha de consulta
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public List<Agent> BusyAgent(DateTime date)
        {
            return new List<Agent>();
        }

        /// <summary>
        /// Listado de clientes con tareas por calificar
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public List<Client> PendingClient(DateTime date)
        {
            return new List<Client>();
        }

        /// <summary>
        /// Numero total de tareas
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public int TaskCount()
        {
            return 0;
        }

        /// <summary>
        /// Numero de tareas en ejecucion
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public int ExecutionTaskCount()
        {
            return 0;
        }

        /// <summary>
        /// Numero de tareas pendientes
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public int PendingTaskCount()
        {
            return 0;
        }

        /// <summary>
        /// Numero de clientes
        /// </summary>
        /// <param name="date"></param>
        /// <returns></returns>
        [WebMethod]
        public int ClientCount()
        {
            return 0;
        }
    }
}
