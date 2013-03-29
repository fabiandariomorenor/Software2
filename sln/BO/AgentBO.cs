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

        public int Delete(Agent agent) 
        {
            agentDao.Delete(agent);
            UserBO userBO = new UserBO();
            return userBO.Delete(agent.Document);
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
                return agentDao.Update(agent);
            }
        }

        private int Insert(Agent agent)
        {
            UserBO userBO = new UserBO();
            User user = new User();
            user.Document = agent.Document;
            user.Name = agent.Name;
            user.Password = agent.Password;
            user.ID_Rol = agent.ID_Rol;
            user.ID_Localization = agent.ID_Localization;
            userBO.Save(user);
            return agentDao.Insert(agent);
        }
    }
}
