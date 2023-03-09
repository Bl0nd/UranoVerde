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
                (dgv2.FooterRow.FindControl("txtNomeProdutoFooter") as TextBox).Focus();
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