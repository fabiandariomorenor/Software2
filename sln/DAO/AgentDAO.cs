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
            agent.Documento = document;
            return Get<Agent>("AgentGet", agent);
        }


        public int CreateAgent(User user)
        {
            return ExecuteScalar("CreateAgent", user);
        }

        public int UpdateAgent(User user)
        {
            return ExecuteScalar("UpdateAgent", user);
        }
    }
}
