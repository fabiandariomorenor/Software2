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
        UserBO userBO = new UserBO();

        public Agent Get(decimal document)
        {
            return agentDao.Get(document);
        }

        public List<Agent> List(Agent agent)
        {
            return agentDao.List(agent);
        }

        public int Count()
        {
            return agentDao.Count();
        }

        public int Delete(Agent agent) 
        {
            agentDao.Delete(agent);
            UserBO userBO = new UserBO();
            userBO.Delete(agent.Document);

            if (userBO.Get(agent.Document) != null)
                return 0;
            else
                return 1;
        }

        public int Save(Agent agent)
        {
            if (Get(agent.Document) == null)
            {
                //Create user
                return Insert(agent);
            }
            else
            {
                //Update user
                return Update(agent);
            }
        }

        private int Update(Agent agent)
        {
            userBO.Save((User)agent);
            return agentDao.Update(agent);
        }

        private int Insert(Agent agent)
        {
            userBO.Save((User)agent);
            return agentDao.Insert(agent);
        }
    }
}
