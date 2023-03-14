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
        //instanciando objetos Produto
        ProdutoDTO objModelo = new ProdutoDTO();
        ProdutoBLL objBLL = new ProdutoBLL();

        //metodo PopularGVFilme
        public void PopularGVProduto()
        {
            dgv2.DataSource = objBLL.ListarProduto();
            dgv2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            dgv2.DataSource = objBLL.ListarProduto();
            dgv2.DataBind();
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

            if (string.IsNullOrEmpty((dgv2.FooterRow.FindControl("txtnomeProdutoFooter") as TextBox).Text.Trim()))
            {
                //(dgv1.FooterRow.FindControl("txtnomeProdutoFooter") as TextBox).BackColor= Color.Red;
                MsgBox("Digite o Produto !", Page, this);
                //(dgv1.FooterRow.FindControl("txtnomeProdutoFooter") as TextBox).BackColor = Color.White;
                (dgv2.FooterRow.FindControl("txtnomeProdutoFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv2.FooterRow.FindControl("txttipoProdutoFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite o tipo do Produto !", this.Page, this);
                (dgv2.FooterRow.FindControl("txttipoProdutoFooter") as TextBox).Focus();
                PageValido = false;
            }
            else if (string.IsNullOrEmpty((dgv2.FooterRow.FindControl("txtvalorProdutoFooter") as TextBox).Text.Trim()))
            {
                MsgBox("Digite a valor !", this.Page, this);
                (dgv2.FooterRow.FindControl("txtvalorProdutoFooter") as TextBox).Focus();
                PageValido = false;
            }
            else
            {
                PageValido = true;
            }
            return PageValido;

        }

        //cadastrar produto
        protected void dgv2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Add"))
            {
                objModelo.nomeProduto = (dgv2.FooterRow.FindControl("txtnomeProdutoFooter") as TextBox).Text.Trim();
                objModelo.tipoProduto = (dgv2.FooterRow.FindControl("txttipoProdutooFooter") as TextBox).Text.Trim();
                objModelo.valorProduto = (dgv2.FooterRow.FindControl("txtvalorProdutoFooter") as TextBox).Text.Trim();


                objBLL.CadastraProduto(objModelo);
                PopularGVProduto();
                (dgv2.FooterRow.FindControl("txtnomeProdutoFooter") as TextBox).Focus();
                lblMessage.Text = "Produto " + objModelo.nomeProduto + " Cadastrado com Sucesso !!";
            }
        }

        //atualizar Produto
        protected void dgv2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objModelo.nomeProduto = (dgv2.Rows[e.RowIndex].FindControl("txtnomeProduto") as TextBox).Text.Trim();
            objModelo.tipoProduto = (dgv2.Rows[e.RowIndex].FindControl("txttipoProduto") as TextBox).Text.Trim();
            objModelo.valorProduto = (dgv2.Rows[e.RowIndex].FindControl("txtvalorProduto") as TextBox).Text.Trim();

            objBLL.EditarProduto(objModelo);

            dgv2.EditIndex = -1;

            PopularGVProduto();

            lblMessage.Text = "Produto " + objModelo.nomeProduto + " Editado com sucesso !!";
        }

        //deletar Produto
        protected void dgv2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            objModelo.idProduto = Convert.ToInt32(dgv2.DataKeys[e.RowIndex].Value.ToString());
            objBLL.ExcluirProduto(objModelo.idProduto);
            PopularGVProduto();
            lblMessage.Text = "Produto " + objModelo.nomeProduto + " Deletado com Sucesso !!";
        }

        protected void dgv2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgv2.EditIndex = e.NewEditIndex;
            PopularGVProduto();
        }

        protected void dgv2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgv2.EditIndex = -1;
            PopularGVProduto();
        }
    }
}