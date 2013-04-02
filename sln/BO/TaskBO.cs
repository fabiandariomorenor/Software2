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
            if (Get(task.ID) == null)
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
    }
}
