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

        public List<Agent> List(Agent agent)
        {
            return agentDao.List(agent);
        }

        public int Save(User user)
        {
            if (Get(user.Document) == null)
            {
                //Create user
                return agentDao.Create(user);
            }
            else
            {
                //Update user
                return agentDao.Update(user);
            }
        }
    }
}
