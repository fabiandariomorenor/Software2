using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Client : User
    {
        public String Direccion { get; set; }
        public String FechaExpDocumento { get; set; }
    }
}
