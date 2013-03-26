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
        public User Get(int document, string password)
        {
            User user = new User();
            user.Documento = document;
            user.Password = password;
            return Get<User>("UserValidate", user);
        }

        public User Get(int document)
        {
            User user = new User();
            user.Documento = document;
            return Get<User>("UserGet", user);
        }

        public int CreateUser(User user)
        {
            return ExecuteScalar("CreateUser", user);
        }

        public int UpdateUser(User user)
        {
            return ExecuteScalar("UpdateUser", user);
        }
    }
}
