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
        UsuarioDTO objModelo = new UsuarioDTO();
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
            ////iniciando session
            //if (Session["idUsuario"] == null)
            //{
            //    Response.Redirect("~/Login.aspx");
            //}
        }

        protected void dgv1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName.Equals("Add"))
            {
                objModelo.nomeUsuario = (dgv1.FooterRow.FindControl("txtNomeUsuarioFooter") as TextBox).Text.Trim();
                objModelo.emailUsuario = (dgv1.FooterRow.FindControl("txtEmailUsuarioFooter") as TextBox).Text.Trim();
                objModelo.senhaUsuario = (dgv1.FooterRow.FindControl("txtSenhaUsuarioFooter") as TextBox).Text.Trim();
                objModelo.cellUsuario = (dgv1.FooterRow.FindControl("txtCellUsuarioFooter") as TextBox).Text.Trim();
                objModelo.enderecoUsuario = (dgv1.FooterRow.FindControl("txtEnderecoUsuarioFooter") as TextBox).Text.Trim();
                objModelo.cepUsuario = (dgv1.FooterRow.FindControl("txtCepUsuarioFooter") as TextBox).Text.Trim();
                objModelo.tpUsuarioId = (dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).Text.Trim();

                objBLL.CadastraUsuario(objModelo);
                PopularGV();
                (dgv1.FooterRow.FindControl("txtNomeUsuarioFooter") as TextBox).Focus();
                lblMessage.Text = "Usuário " + objModelo.nomeUsuario + " Cadastrado com Sucesso !!";
            }
        }

        protected void dgv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objModelo.nomeUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtNomeUsuario") as TextBox).Text.Trim();
            objModelo.emailUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtEmailUsuario") as TextBox).Text.Trim();
            objModelo.senhaUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtSenhaUsuario") as TextBox).Text.Trim();
            objModelo.enderecoUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtenderecoUsuario") as TextBox).Text.Trim();
            objModelo.cellUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtcellUsuario") as TextBox).Text.Trim();
            objModelo.cepUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtcepUsuario") as TextBox).Text.Trim();
            objModelo.tpUsuarioId = (dgv1.Rows[e.RowIndex].FindControl("rbl1") as RadioButtonList).Text.Trim();
            objModelo.idUsuario = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Value.ToString());

            objBLL.EditarUsuario(objModelo);

            dgv1.EditIndex = -1;

            PopularGV();

            lblMessage.Text = "Usuário " + objModelo.nomeUsuario + " Editado com sucesso !!";
        }

        protected void dgv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            objModelo.idUsuario = Convert.ToInt32(dgv1.DataKeys[e.RowIndex].Value.ToString());
            objBLL.ExcluirUsuario(objModelo.idUsuario);
            PopularGV();
            lblMessage.Text = "Usuário " + objModelo.nomeUsuario + " Deletado com Sucesso !!";
        }

        protected void dgv1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgv1.EditIndex = e.NewEditIndex;
            PopularGV();
        }

        protected void dgv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgv1.EditIndex = -1;
            PopularGV();
        }
    }
}