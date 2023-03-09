using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UranoVerde.DAL;
using UranoVerde.DTO;

namespace UranoVerde.BLL
{
    public class ProdutoBLL
    {

        ProdutoDAL objBLL = new ProdutoDAL();

        //cadastrar
        public void CadastraProduto(ProdutoDTO objCad)
        {
            objBLL.Cadastrar(objCad);
        }
        //listar
        public List<ProdutoDTO> ListarProduto()
        {
            return objBLL.Listar();
        }
        //editar
        public void EditarProduto(ProdutoDTO objEdita)
        {
            objBLL.Editar(objEdita);
        }
        //excluir
        public void ExcluirProduto(int objExclui)
        {
            objBLL.Excluir(objExclui);
        }

        //SelectById
        public ProdutoDTO SelectPorId(int objModelo)
        {
            return objBLL.BuscaPorId(objModelo);
        }


    }
}
