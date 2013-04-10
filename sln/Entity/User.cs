using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class User
    {
        public decimal Document { get; set; }
        public decimal Phone { get; set; }
        public String Name { get; set; }
        public String Password { get; set; }
        public int ID_Rol { get; set; }
        public int ID_Localization { get; set; }
    }
}
