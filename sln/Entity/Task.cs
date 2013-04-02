using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Task
    {
        public int ID { get; set; }
        public int ID_Client { get; set; }
        public int ID_Agent { get; set; }
        public int ID_State { get; set; }
        public int ID_Localization { get; set; }
        public string Description { get; set; }
        public string Address { get; set; }
        public DateTime InitDate { get; set; }
        public DateTime EndDate  { get; set; }
        public DateTime ExpectedInitDate { get; set; }
        public DateTime ExpectedEndDate { get; set; }
        public DateTime ProcedureDate { get; set; }
        public string Comment { get; set; }
    }
}
