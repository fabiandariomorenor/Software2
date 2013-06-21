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
        public Client Get(decimal document)
        {
            Client client = new Client();
            client.Document = document;
            return Get<Client>("ClientGet", client);
        }

        public int Update(Client user)
        {
            return ExecuteScalar("ClientUpdate", user);
        }

        public int Count()
        {
            return ExecuteScalar("ClientCount", new Client());
        }

        public List<Client> List(Client client)
        {
            return Execute<Client>("ClientList", client);
        }
         
        public void Delete(Client client)
        {
            Execute<Client>("ClientDelete", client);
        }

        public int Insert(Client client)
        {
            return ExecuteScalar("ClientInsert", client);
        }

        public List<Client> Listpendingclient(Client client)
        {
            return Execute<Client>("PendingClientList", client);
        }

        /*public int ConfirmTask(decimal document, string password)
        {
            return ExecuteScalar("ConfirmTask", Task);
        }*/

    }
}
//modificacion