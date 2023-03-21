using UranoVerde.BLL;//
using UranoVerde.DTO;//
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace UranoVerde
{
    public partial class entrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtEmail.Focus();
            lblMessage.Font.Size = 50;
        }
        //limpar
        public void Limpar()
        {
            txtEmail.Text = txtSenha.Text = string.Empty;
            txtEmail.Focus();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpar();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //pegando a informacao digitada pelo usuario
                string objEmail = txtEmail.Text;
                string objSenha = txtSenha.Text;

                //instanciando objeto DTO
                UsuarioAutenticaDTO objModelo = new UsuarioAutenticaDTO();
                UsuarioBLL objValida = new UsuarioBLL();

                objModelo = objValida.AutenticaUsuario(objEmail, objSenha);
                if (objModelo != null)
                {
                    switch (objModelo.tpUsuarioId)
                    {
                        case 1:
                            Session["Usuario"] = txtEmail.Text.Trim().ToUpper();
                            Response.Redirect("Pages/ManagerUserAdm.aspx");

                            //lblMessage.Text = "Admin";
                            Limpar();
                            break;
                        case 2:
                            Session["Usuario"] = txtEmail.Text.Trim().ToUpper();
                            Response.Redirect("Pages/ConsultaUser.aspx");
                            //lblMessage.Text = "User";
                            Limpar();
                            break;
                    }
                }
                else
                {
                    lblMessage.Text = "Deu problema de novo !!";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Deu problema de novo !! " + ex.Message;
                Limpar();
            }
        }
    }
}