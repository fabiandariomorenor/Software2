using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BO;
using Entity;
using System.Web.Script.Serialization;

namespace WebSite.Ws
{
    /// <summary>
    /// Descripción breve de AgentService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class AgentService : System.Web.Services.WebService
    {
        AgentBO agentBO = new AgentBO();

        [WebMethod]
        public List<Agent> List(string name)
        {
            Agent agent = new Agent();
            agent.Name=name;
            return agentBO.List(agent);
        }

        [WebMethod]
        public int Delete(decimal document)
        {
            Agent agent = new Agent();
            agent.Document = document;
            return agentBO.Delete(agent);
        }

        [WebMethod]
        public Agent Get(decimal document)
        {
            return agentBO.Get(document);
        }

        [WebMethod]
        public int  Count()
        {
            
           return  agentBO.Count();
        }
    }
}
