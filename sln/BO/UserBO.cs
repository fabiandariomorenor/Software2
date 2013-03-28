using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAO;

namespace BO
{
    public class UserBO
    {
        UserDAO userDao = new UserDAO();

        public bool Validate (int document, string password)
        {
            if (userDao.Get(document, password) == null)
            {
                return false;
            }
            else 
            {
                return true;
            }
        }

        public User Get(int document)
        {
            return userDao.Get(document);
        }

        public int Save(User user)
        {
            if (Get(user.Document) == null)
            {
                //Create user
                return userDao.Create(user);

            }
            else
            {
                //Update user
                return userDao.Update(user);
            }
        }
    }
}
