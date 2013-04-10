using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAOBase;

namespace DAO
{
    public class AgentDAO : Base
    {
        public Agent Get(decimal document)
        {
            Agent agent = new Agent();
            agent.Document = document;
            return Get<Agent>("AgentGet", agent);
        }

        public int Insert(Agent agent)
        {
            return ExecuteScalar("AgentInsert", agent);
        }

        public int Update(User user)
        {
            return ExecuteScalar("AgentUpdate", user);
        }

        public List<Agent> List(Agent agent)
        {
            return Execute<Agent>("AgentList", agent);
        }

        public void Delete(Agent agent)
        {
            Execute<Agent>("AgentDelete", agent);
        }
    }
}
