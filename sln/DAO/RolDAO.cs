using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAOBase;

namespace DAO
{
    public class RolDAO : Base
    {
        public List <Rol> List()
        {
            Rol rol = new Rol();
            return Execute<Rol>("RolList", rol);
        }
    }
}
    