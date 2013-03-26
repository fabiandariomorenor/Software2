using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Client : User
    {
        public string Direccion { get; set; }
        public DateTime FechaExpDocumento { get; set; }
    }
}
