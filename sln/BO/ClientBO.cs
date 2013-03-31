﻿using System;
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
            if (Get(user.Document) == null)
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

        public List<Client> List(Client client)
        {
            return clientDao.List(client);
        }

        public List<Client> List()
        {
            var client = new Client();
            client.Name = string.Empty;
            return List(client);
        }
         
        public int Delete(Client client)
        {
            clientDao.Delete(client);
            UserBO userBO = new UserBO();
            return userBO.Delete(client.Document);
        }
    }
}
