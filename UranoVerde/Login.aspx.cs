using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UranoVerde.BLL;
using UranoVerde.DTO;

namespace UranoVerde
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            {
                txtnomeUsuario.Focus();
                lblMessage.Font.Size = 50;
            }
        }
        //limpar


        public void Limpar()
        {
            txtnomeUsuario.Text = txtsenhaUsuario.Text = string.Empty;
            txtnomeUsuario.Focus();
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            try
            {
                //pegando a informacao digitada pelo usuario
                string objNome = txtnomeUsuario.Text;
                string objSenha = txtsenhaUsuario.Text;

                //instanciando objeto DTO
                UsuarioAutenticaDTO objModelo = new UsuarioAutenticaDTO();
                UsuarioBLL objValida = new UsuarioBLL();

                objModelo = objValida.AutenticaUsuario(objNome, objSenha);
                if (objModelo != null)
                {
                    switch (objModelo.tpUsuarioId)
                    {
                        case 1:
                            Session["Usuario"] = txtnomeUsuario.Text.Trim();
                            Response.Redirect("Pages/IndexAdmin.aspx");
                            //lblMessage.Text = "Admin";
                            Limpar();
                            break;
                        case 2:
                            Session["Usuario"] = txtnomeUsuario.Text.Trim();
                            Response.Redirect("Pages/IndexUser.aspx");
                            //lblMessage.Text = "User";
                            Limpar();
                            break;
                    }
                }
                else
                {
                    lblMessage.Text = "Deu problema Denovo !!";
                }

            }
            catch (Exception ex)
            {
                lblMessage.Text = "Deu Problema denovo !! " + ex.Message;
                Limpar();
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpar();
        }
    }
}
