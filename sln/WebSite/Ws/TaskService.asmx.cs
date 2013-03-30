using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

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
        public string Save(int clientId, string description, int currentDate, int agentId, string comment, string address)
        {
            return "Hello World";
        }
    }
}
