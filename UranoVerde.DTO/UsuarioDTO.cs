using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UranoVerde.DTO
{
    public class UsuarioDTO
    {
        public int idUsuario { get; set; }
        public string nomeUsuario { get; set; }
        public string emailUsuario { get; set; }
        public string senhaUsuario { get; set; }
        public string cellUsuario { get; set; }
        public string enderecoUsuario { get; set; }
        public string cepUsuario { get; set; }
        public int tpUsuarioId { get; set; }

    }
}
