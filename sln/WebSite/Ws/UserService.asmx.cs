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
    }
}
