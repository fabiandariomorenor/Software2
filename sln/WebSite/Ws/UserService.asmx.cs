using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BO;
using Entity;
using System.Web.Script.Serialization;
using System.Globalization;
using System.Threading;

namespace WebSite.Ws
{
    /// <summary>
    /// Descripción breve de UserService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio Web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    [System.Web.Script.Services.ScriptService]
    public class UserService : System.Web.Services.WebService
    {
        RolBO rolBo = new RolBO();
        UserBO userBo = new UserBO();
        string sessionName = "Document";

        [WebMethod]
        public List<Rol> RolList()
        {
            return rolBo.List();
        }

        [WebMethod(EnableSession=true)]
        public bool Validate(decimal document, string password)
        {
            if(userBo.Validate(document, password))
            {
                Session[sessionName] = document;
                return true;
            }
            else{
                Session[sessionName] = null;
                return false;
            }
        }

        [WebMethod(EnableSession = true)]
        public int ClientValidate(decimal document, string date)
        {
            //id del cliente
            return 1323123;
        }

        [WebMethod]
        public int Save(int rol, decimal document, int localization, string name, decimal phone, string password, string address, string date, int managerId, string specialized)
        {
            CultureInfo ci = new CultureInfo("en-US");
            Thread.CurrentThread.CurrentCulture = ci;
            Thread.CurrentThread.CurrentUICulture = ci;

            switch(rol)
            {
                case 1:
                    return 0;

                case 2:
                    Agent agent = new Agent();
                    AgentBO agentBo = new AgentBO();
                    agent.ID_Rol = rol;
                    agent.ID_Localization = localization;
                    agent.Document = document;
                    agent.Name = name;
                    agent.Phone = phone;
                    agent.Password = password;
                    agent.Specialization = specialized;
                    agent.ID_Manager = managerId;
                    return agentBo.Save(agent);

                case 3:
                    Client client = new Client();
                    ClientBO clientBO = new ClientBO();
                    client.ID_Rol = rol;
                    client.ID_Localization = localization;
                    client.Document = document;
                    client.Name = name;
                    client.Phone = phone;
                    client.Password = password;
                    client.DateExpDocument = date;
                    client.Address = address;
                    return clientBO.Save(client);

                default:
                    //Por implementar
                    return 0;
            }
            //return userBo.Save(user);
           
        }

        [WebMethod]
        public List<User> List(String name)
        {
            User user = new User();
            user.Name = name;
            return userBo.List(user);
        }
    }
}
