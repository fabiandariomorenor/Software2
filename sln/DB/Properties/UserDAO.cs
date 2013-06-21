using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAOBase;

namespace DAO
{
    public class UserDAO : Base
    {
        public User Get(decimal document, string password)
        {
            User user = new User();
            user.Document = document;
            user.Password = password;
            return Get<User>("UserValidate", user);
        }

        public Client GetClient(decimal document, string date)
        {
            Client client = new Client();
            client.Document = document;
            client.DateExpDocument = date;
            return client;
        }

        public User Get(decimal document)
        {
            User user = new User();
            user.Document = document;
            return Get<User>("UserGet", user);
        }

        public int Insert(User user)
        {
            return ExecuteScalar("UserInsert", user);
        }

        public int Update(User user)
        {
            return ExecuteScalar("UserUpdate", user);
        }

        public int Delete(User user) 
        {
            return ExecuteScalar("UserDelete", user);
        }

        public List <User> List(User user)
        {
            return Execute<User>("UserList", user);
        }
    }
}
