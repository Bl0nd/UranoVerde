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
    public partial class WebForm1 : System.Web.UI.Page
    {
        //instanciando objetos Filme
        ProdutoDTO objProduto = new ProdutoDTO();
        ProdutoBLL objBLL = new ProdutoBLL();

        //metodo PopularGVProduto
        public void PopularGVProduto()
        {
            dgv2.DataSource = objBLL.ListarProduto();
            dgv2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopularGVProduto();
                lblMessage.Text = string.Empty;
            }

            //iniciando session
            if (Session["Usuario"] == null)
            {
                Response.Redirect("~/entrar.aspx");
            }
        }
    }
}