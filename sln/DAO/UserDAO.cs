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
    }
}
