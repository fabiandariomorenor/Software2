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
        UserBO userBO = new UserBO();

        public Client Get(decimal document)
        {
            return clientDao.Get(document);
        }

        public int Save(Client client)
        {
            if (Get(client.Document) == null)
            {
                //Create user
                return Insert(client);
            }
            else
            {
                //Update 
                return Update(client);
            }
        }

        private int Update(Client client)
        {
            userBO.Save((User)client);
            return clientDao.Update(client);
        }

        public List<Client> List(Client client)
        {
            return clientDao.List(client);
        }

         public List<Client> Listpendingclient(Client client)
        {
            return clientDao.Listpendingclient(client);
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
            userBO.Delete(client.Document);

            if (userBO.Get(client.Document) != null)
                return 0;
            else
                return 1;
        }
        private int Insert(Client client)
        {
            userBO.Save((User)client);
            return clientDao.Insert(client);
        }

    }
}