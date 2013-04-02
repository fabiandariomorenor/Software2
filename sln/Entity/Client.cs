using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Client : User
    {
        public int Document { get; set; }
        public string Address { get; set; }
        public DateTime DateExpDocument { get; set; }
    }
}
