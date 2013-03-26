using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Cliente : Usuario
    {
        public String Direccion { get; set; }
        public String FechaExpDocumento { get; set; }
    }
}
