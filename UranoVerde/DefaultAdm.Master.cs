using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UranoVerde
{
    public partial class DefaultAdm : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("..entrar.aspx");
            }
            lblMessage.Text = "Bem vindo " + Session["Usuario"] + " a UranoVerde ";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("../entrar.aspx");
        }
    }
}