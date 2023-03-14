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
        public List<UsuarioListDTO> ListarUsuario()
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

        //Autenticar
        public UsuarioAutenticaDTO AutenticaUsuario(string objNome, string objSenha)
        {
            UsuarioAutenticaDTO user = objBLL.Autenticar(objNome, objSenha);
            if (user != null)
            {
                return user;
            }
            else
            {
                throw new Exception("Deu Problema !!");
            }
        }

        //SelectById
        public UsuarioDTO SelectPorId(int objModelo)
        {
            return objBLL.BuscaPorId(objModelo);
        }

        //Listar Admin
        public List<UsuarioDTO> ListarUserAdmin()
        {
            return objBLL.ListarAdmin();
        }
    }
}
