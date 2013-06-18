using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text;
using Entity;

namespace BO
{
    public class Security
    {
        public static bool Validate(PageEnum page, RolEnum rol){

            if (rol == RolEnum.Agent)
            {
                if (page == PageEnum.Agent)
                    return true;
                else
                    return false;
            }

            return true;
        }
    }
}
