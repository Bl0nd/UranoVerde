using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UranoVerde.DTO
{
    public class UsuarioListDTO
    {
        public int idUsuario { get; set; }
        public string nomeUsuario { get; set; }
        public string emailUsuario { get; set; }
        public string senhaUsuario { get; set; }
        public string cellUsuario { get; set; }
        public string enderecoUsuario { get; set; }
        public string cepUsuario { get; set; }
        public string descUsuarioTp { get; set; }
    }
}
