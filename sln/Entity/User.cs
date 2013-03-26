using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class User
    {
        public int Documento { get; set; }
        public String Nombre { get; set; }
        public String Password { get; set; }
        public int ID_Rol { get; set; }
        public int ID_Localizacion { get; set; }
    }
}
