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

        [WebMethod]
        public List<Rol> RolList()
        {
            return rolBo.List();
        }

        [WebMethod]
        public bool Validate(int document, string password)
        {
            return userBo.Validate(document, password);
        }

        [WebMethod]
        public int Save(int rol, int document, int location, string name, int phone, string password, string address, DateTime date, int idCoordinator, string specialized)
        {
            switch(rol)
            {
                case 1:
                    Client userC = new Client();
                    ClientBO clientBO = new ClientBO();
                    userC.ID_Rol = rol;
                    userC.ID_Localization = location;
                    userC.Document = document;
                    userC.Name = name;
                    userC.Password = password;
                    userC.FechaExpDocumento = date;
                    return clientBO.Save(userC);
                    break;
 
                case 2:
                    Agent userA = new Agent();
                    AgentBO agentBo = new AgentBO();
                    userA.ID_Rol = rol;
                    userA.ID_Localization = location;
                    userA.Document = document;
                    userA.Name = name;
                    userA.Password = password;
                    userA.Especializacion = specialized;
                    userA.ID_Coordinador = idCoordinator;
                    return agentBo.Save(userA);
                    break;

                case 3:
                    //Por implementar
                    return 0;
                    break;

                default:
                    //Por implementar
                    return 0;
                    break;
            }
            //return userBo.Save(user);
        }
    }
}
