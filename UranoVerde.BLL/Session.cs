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
        private static string Usuario;


        public static string nomeUsuario
        {
            get { return Session.Usuario; }
            set { Session.Usuario = value; }
        }
    }
}
