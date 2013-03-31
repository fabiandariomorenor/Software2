using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Entity;
using BO;
using System.Web.Script.Serialization;

namespace WebSite.Ws
{
    /// <summary>
    /// Descripción breve de ClientService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class ClientService : System.Web.Services.WebService
    {
        ClientBO clientBO = new ClientBO();
        [WebMethod]
        public List<Client> List(string name)
        {
            Client client = new Client();
            client.Name = name;
            return clientBO.List(client);
        }

        [WebMethod]
        public int Delete(int document)
        {
            Client client = new Client();
            client.Document = document;
            return clientBO.Delete(client);
        }

        [WebMethod]
        public Client Get(int document)
        {
            return new Client();
        }
    }
}
