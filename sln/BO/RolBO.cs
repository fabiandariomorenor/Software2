using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAO;

namespace BO
{
    public class RolBO
    {
        RolDAO rolDao = new RolDAO();

        public List <Rol> List()
        {
            return rolDao.List();
        }
    }
}
