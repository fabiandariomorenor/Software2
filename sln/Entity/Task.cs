using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Task
    {
        public int ID { get; set; }
        public int ID_Cliente { get; set; }
        public int ID_Agente { get; set; }
        public int ID_Estado { get; set; }
        public int ID_Localizacion { get; set; }
        public String Descripcion { get; set; }
        public String Direccion { get; set; }
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFinalizacion { get; set; }
        public DateTime FechaEsperadaInit { get; set; }
        public DateTime FechaEsperadaFin { get; set; }
        public DateTime FechaRadicacion { get; set; }
        public String Comentario { get; set; }
    }
}
