﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
    public class Agent : User
    {
        public string Especializacion { get; set; }
        public int ID_Coordinador { get; set; }
    }
}