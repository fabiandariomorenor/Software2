﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAO;

namespace BO
{
    public class TaskBO
    {
        TaskDAO taskDao = new TaskDAO();

        public Task Get(int id)
        {
            return taskDao.Get(id);
        }

        public int Save(Task task)
        {
            if (task.ID == 0)
            {
                //Create task
                //Por defecto al crear ID_State es 1
                task.ID_State = 1;
                return taskDao.Insert(task);
            }
            else
            {
                //Update task
                return taskDao.Update(task);
            }
        }

        public List<Task> ListByClient(Task task)
        {
            return taskDao.ListByClient(task);
        }

        public List<Task> ListByAgent(Task task)
        {
            return taskDao.ListByAgent(task);
        }

        public int ReviewClient(Task task)
        {
            return taskDao.ReviewClient(task);
        }

        public int ReviewAgent(Task task)
        {
            return taskDao.ReviewAgent(task);
        }

        public List<Task> ListByState(Task task)
        {
            return taskDao.ListByState(task);
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}
