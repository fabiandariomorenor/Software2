using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAOBase;
using Entity;

namespace DAO
{
    public class TaskDAO : Base
    {
        public Task Get(int id)
        {
            Task task = new Task();
            task.ID = id;
            return Get<Task>("TaskGet", task);
        }

        public int Insert(Task task)
        {
            return ExecuteScalar("TaskInsert", task);
        }

        public int Delete(Task task)
        {
            return ExecuteScalar("TaskDelete", task);
        }

        public int Update(Task task)
        {
            return ExecuteScalar("TaskUpdate", task);
        }

        public List<Task> ListByClient(Task task)
        {
            return Execute<Task>("TaskByClient", task);
        }

        public List<Task> ListByAgent(Task task)
        {
            return Execute<Task>("TaskByAgent", task);
        }

        public int ReviewClient(Task task)
        {
            return ExecuteScalar("TaskReviewClient", task);
        }

        public List<Task> ListByState(Task task)
        {
            return Execute<Task>("TaskByState", task);
        }

        public int ReviewAgent(Task task)
        {
            return ExecuteScalar("TaskReviewAgent", task);
        }

        public List<Agent> AgentPerHour(Agent agent)
        {
            return Execute<Agent>("AgentPerHour", agent);
        }

        public List<Tasksearch> TaskAgentHour(Tasksearch tasksearch)
        {
            return Execute<Tasksearch>("TaskAgentHour", tasksearch);
        }
    }
}
