<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultAdm.Master" AutoEventWireup="true" CodeBehind="ManagerProdutoAdm.aspx.cs" Inherits="UranoVerde.Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="base">
        <h1 id="produto">Produto</h1>
        <asp:GridView runat="server" ID="dgv2" GridLines="None" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="idProduto" OnRowCommand="dgv2_RowCommand" OnRowUpdating="dgv2_RowUpdating" OnRowDeleting="dgv2_RowDeleting" OnRowEditing="dgv2_RowEditing"
            OnRowCancelingEdit="dgv2_RowCancelingEdit">
            <Columns>

                <%--template Produto--%>

                <asp:TemplateField HeaderText="Produto">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("nomeProduto")%>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <%--template Tipo--%>
                <asp:TemplateField HeaderText="Tipo">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("tipoProduto")%>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <%--template Valor--%>
                <asp:TemplateField HeaderText="Valor">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("valorProduto") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <%--buttons--%>
              <%--  <asp:TemplateField HeaderText="Opções">
                    <ItemTemplate>
                        <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Pages/img/edit.png" ToolTip="Editar" Width="30" Height="30" CommandName="Edit" />
                        <asp:ImageButton ID="btnExcluir" runat="server" ImageUrl="~/Pages/img/delete.png" ToolTip="Excluir" Width="30" Height="30" CommandName="Delete" OnClientClick="if (!confirm('Deseja eliminar esse registro ?'))return false" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ID="btnSalvar" runat="server" ImageUrl="~/Pages/img/save.png" ToolTip="Salvar" Width="30" Height="30" CommandName="Update" />
                        <asp:ImageButton ID="btnCancelar" runat="server" ImageUrl="~/Pages/img/cancel.png" ToolTip="Cancelar" Width="30" Height="30" CommandName="Cancel" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ID="btnAdicionar" runat="server" ImageUrl="~/Pages/img/add.png" ToolTip="Adicionar" Width="30" Height="30" CommandName="Add" />
                    </FooterTemplate>
                </asp:TemplateField>--%>

            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="lblMessage" ForeColor="Green" runat="server" Text="Label" />
    </div>

</asp:Content>
