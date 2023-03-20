using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UranoVerde.BLL;

namespace UranoVerde.Pages
{
    public partial class ConsultaUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioBLL objUser = new UsuarioBLL();
            dgv1.DataSource = objUser.ListarUsuario();
            dgv1.DataBind();

            ProdutoBLL objProduto = new ProdutoBLL();
            dgv2.DataSource = objProduto.ListarProduto(); //popular o objeto
            dgv2.DataBind(); //imprimir na tela
        }
    }
}