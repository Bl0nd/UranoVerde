using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UranoVerde.DTO;
using UranoVerde.DAL;


namespace UranoVerde.BLL
{
    public class UsuarioBLL
    {
        UsuarioDAL objBLL = new UsuarioDAL();

        //cadastrar
        public void CadastraUsuario(UsuarioDTO objCad)
        {
            objBLL.Cadastrar(objCad);
        }
        //listar
        public List<UsuarioDTO> ListarUsuario()
        {
            return objBLL.Listar();
        }
        //editar
        public void EditarUsuario(UsuarioDTO objEdita)
        {
            objBLL.Editar(objEdita);
        }
        //excluir
        public void ExcluirUsuario(int objExclui)
        {
            objBLL.Excluir(objExclui);
        }
    }
}
