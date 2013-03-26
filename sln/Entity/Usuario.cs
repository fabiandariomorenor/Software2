using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Usuario
    {
        public int Documento { get; set; }
        public String Nombre { get; set; }
        private String Password { get; set; }
    }
}
