using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAOBase;

namespace DAO
{
    public class ClientDAO : Base
    {
        public Client Get(int document)
        {
            Client client = new Client();
            client.Document = document;
            return Get<Client>("ClientGet", client);
        }


        public int CreateClient(User user)
        {
            return ExecuteScalar("CreateClient", user);
        }

        public int UpdateClient(User user)
        {
            return ExecuteScalar("UpdateClient", user);
        }

        public List<Client> List(Client client)
        {
            return Execute<Client>("ClientList", client);
        }

        public void Delete(Client client)
        {
            Execute<Client>("ClientDelete", client);
        }
    }
}
