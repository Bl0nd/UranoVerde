using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UranoVerde.BLL;
using UranoVerde.DTO;

namespace UranoVerde.Pages
{
    public partial class ManagerUsuario : System.Web.UI.Page
    {
        UsuarioListDTO objModelo = new UsuarioListDTO();
        UsuarioBLL objBLL = new UsuarioBLL();

        public void PopularGV()
        {
            dgv1.DataSource = objBLL.ListarUsuario();
            dgv1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                PopularGV();
            }
        }
    }
}