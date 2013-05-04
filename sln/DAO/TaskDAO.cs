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

        public int Review(Task task)
        {
            return ExecuteScalar("TaskReviewClient", task);
        }
    }
}
