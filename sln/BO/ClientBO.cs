using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAO;

namespace BO
{
    public class ClientBO
    {
        ClientDAO clientDao = new ClientDAO();

        public User Get(int document)
        {
            return clientDao.Get(document);
        }

        public int Save(User user)
        {
            if (Get(user.Documento) == null)
            {
                //Create user
                return clientDao.CreateClient(user);
            }
            else
            {
                //Update user
                return clientDao.UpdateClient(user);
            }
        }
    }
}
