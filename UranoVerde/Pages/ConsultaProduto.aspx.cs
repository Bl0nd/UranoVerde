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
        protected void Page_Load(object sender, EventArgs e)
        {
            ProdutoBLL objBLL = new ProdutoBLL();
            dgv2.DataSource = objBLL.ListarProduto();
            dgv2.DataBind();
        }
    }
}