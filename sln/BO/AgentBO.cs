using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAO;

namespace BO
{
    public class AgentBO
    {
        AgentDAO agentDao = new AgentDAO();

        public User Get(int document)
        {
            return agentDao.Get(document);
        }

        public int Save(User user)
        {
            if (Get(user.Documento) == null)
            {
                //Create user
                return agentDao.CreateAgent(user);
            }
            else
            {
                //Update user
                return agentDao.UpdateAgent(user);
            }
        }
    }
}
