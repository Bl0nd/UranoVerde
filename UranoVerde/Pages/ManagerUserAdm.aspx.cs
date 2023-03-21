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
    public partial class ManagerUserAdm : System.Web.UI.Page
    {
        //instanciando objetos Usuario
        UsuarioDTO objModelo = new UsuarioDTO();
        UsuarioBLL objBLL = new UsuarioBLL();

        public void PopularGV()
        {
            dgv1.DataSource = objBLL.ListarUsuario();
            dgv1.DataBind();
        }

       //messageBox
        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }

        //MsgBox("! your message !", this.Page, this);

        //validacao User
        private bool ValidaPage()
        {
            bool PageValido;

            if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtnomeUsuarioFooter") as TextBox).Text.Trim()))
            {
                //(dgv1.FooterRow.FindControl("txtnomeUsuarioFooter") as TextBox).BackColor= Color.Red;
                MsgBox("Digite o nome !", Page, this);
                //(dgv1.FooterRow.FindControl("txtnomeUsuarioFooter") as TextBox).BackColor = Color.White;
                (dgv1.FooterRow.FindControl("txtnomeUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtemailUsuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite o email !", this.Page, this);
                (dgv1.FooterRow.FindControl("txtemailUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtsenhaUsuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite a senha!", this.Page, this);
                (dgv1.FooterRow.FindControl("txtsenhaUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtcellUsuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite o celular !", this.Page, this);
                (dgv1.FooterRow.FindControl("txtcellUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtenderecoUsuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite o endereço !", this.Page, this);
                (dgv1.FooterRow.FindControl("txtenderecoUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv1.FooterRow.FindControl("txtcepUsuarioFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite o cep !", this.Page, this);
                (dgv1.FooterRow.FindControl("txtcepUsuarioFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if ((dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).SelectedIndex < 0)
            {
                MsgBox("Escolha uma das opções!", this.Page, this);
                (dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).Focus();
                PageValido = false;

            }
            else
            {
                PageValido = true;
            }
            return PageValido;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopularGV();
                lblMessage.Text = string.Empty;
            }
            ////iniciando session
            if (Session["email"] == null)
            {
                Response.Redirect("~/entrar.aspx");
            }
        }

        protected void dgv1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add"))
                if (ValidaPage())
                {
                    {
                        objModelo.nomeUsuario = (dgv1.FooterRow.FindControl("txtnomeUsuarioFooter") as TextBox).Text.Trim();
                        objModelo.emailUsuario = (dgv1.FooterRow.FindControl("txtemailUsuarioFooter") as TextBox).Text.Trim();
                        objModelo.senhaUsuario = (dgv1.FooterRow.FindControl("txtsenhaUsuarioFooter") as TextBox).Text.Trim();
                        objModelo.cellUsuario = (dgv1.FooterRow.FindControl("txtcellUsuarioFooter") as TextBox).Text.Trim();
                        objModelo.enderecoUsuario = (dgv1.FooterRow.FindControl("txtenderecoUsuarioFooter") as TextBox).Text.Trim();
                        objModelo.cepUsuario = (dgv1.FooterRow.FindControl("txtcepUsuarioFooter") as TextBox).Text.Trim();
                        objModelo.tpUsuarioId = (dgv1.FooterRow.FindControl("rbl1") as RadioButtonList).Text.Trim();

                        objBLL.CadastraUsuario(objModelo);
                        PopularGV();
                        (dgv1.FooterRow.FindControl("txtnomeUsuarioFooter") as TextBox).Focus();
                        lblMessage.Text = "Usuário " + objModelo.nomeUsuario + " Cadastrado com Sucesso !!";
                    }
                }
        }

        protected void dgv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objModelo.nomeUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtnomeUsuario") as TextBox).Text.Trim();
            objModelo.emailUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtemailUsuario") as TextBox).Text.Trim();
            objModelo.senhaUsuario = (dgv1.Rows[e.RowIndex].FindControl("txtsenhaUsuario") as TextBox).Text.Trim();
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