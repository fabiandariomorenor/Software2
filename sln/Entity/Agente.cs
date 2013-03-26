using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Agente : Usuario
    {
        public String Especializacion { get; set; }
        public int ID_Coordinador { get; set; }
    }
}
