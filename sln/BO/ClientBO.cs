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

        public int Save(Client client)
        {
            if (Get(client.Document) == null)
            {
                //Create user
                return clientDao.Insert(client);
            }
            else
            {
                //Update user
                return clientDao.UpdateClient(client);
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

        private int Insert(Client client)
        {
            UserBO userBO = new UserBO();
            User user = new User();
            user.Document = client.Document;
            user.Name = client.Name;
            user.Password = client.Password;
            user.ID_Rol = client.ID_Rol;
            user.ID_Localization = client.ID_Localization;
            userBO.Save(user);
            return clientDao.Insert(client);
        }

    }
}
