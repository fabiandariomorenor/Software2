using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Cliente : Usuario
    {
        public String Direccion { get; set; }
        private String FechaExpDocumento { get; set; }
    }
}
