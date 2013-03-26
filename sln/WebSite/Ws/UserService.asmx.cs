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
        User user = new User();

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

        //[WebMethod]
        /*public Entity.User insert(int id, int rol, int document, string name, int phone, string password, string address, DateTime date, string specialized)
        {
            //Create user
            if(id == 0)
            {
                user.ID_Rol= rol;
                user.Documento = document;
                user.Nombre = name;
                user.Password = password;
            }
            
        }*/
        
    }
}
