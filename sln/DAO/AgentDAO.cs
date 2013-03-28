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

        public Agent Get(int document)
        {
            Agent agent = new Agent();
            agent.Document = document;
            return Get<Agent>("AgentGet", agent);
        }


        public int Create(User user)
        {
            return ExecuteScalar("CreateAgent", user);
        }

        public int Update(User user)
        {
            return ExecuteScalar("UpdateAgent", user);
        }

        public List<Agent> List(Agent agent)
        {
            return Execute<Agent>("AgentList", agent);
        }
    }
}
