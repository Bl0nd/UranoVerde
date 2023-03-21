using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UranoVerde.BLL
{
    public static class Session
    {
        //usuario
        private static string Email;


        public static string emailUsuario
        {
            get { return Session.Email; }
            set { Session.Email = value; }
        }
    }
}
