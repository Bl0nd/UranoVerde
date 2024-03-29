﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultAdm.Master" AutoEventWireup="true" CodeBehind="ManagerUserAdm.aspx.cs" Inherits="UranoVerde.Pages.ManagerUserAdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="base">
        <br />
        <h1 id="user">Users</h1>
        <asp:GridView runat="server" ID="dgv1" GridLines="None" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="idUsuario" OnRowCommand="dgv1_RowCommand" OnRowUpdating="dgv1_RowUpdating" OnRowDeleting="dgv1_RowDeleting" OnRowEditing="dgv1_RowEditing"
            OnRowCancelingEdit="dgv1_RowCancelingEdit">
            <Columns>

                <%--template Nome--%>

                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("NomeUsuario")%>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNomeUsuario" runat="server" MaxLength="50" Text='<%#Eval("NomeUsuario")%>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="NomeUsuario"
                            runat="server"
                            ErrorMessage="Digite o nome !!"
                            ForeColor="Red"
                            ControlToValidate="txtNomeUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtnomeUsuarioFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Email--%>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("EmailUsuario")%>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmailUsuario" runat="server" MaxLength="50" Text='<%#Eval("EmailUsuario")%>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="EmailUsuario"
                            runat="server"
                            ErrorMessage="Digite o email !!"
                            ForeColor="Red"
                            ControlToValidate="txtEmailUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmailUsuarioFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Senha--%>
                <asp:TemplateField HeaderText="Senha">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("SenhaUsuario")%>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtSenhaUsuario" runat="server" MaxLength="4" Text='<%#Eval("SenhaUsuario")%>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="SenhaUsuario"
                            runat="server"
                            ErrorMessage="Digite sua senha !!"
                            ForeColor="Red"
                            ControlToValidate="txtSenhaUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtSenhaUsuarioFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Celular--%>
                <asp:TemplateField HeaderText="Cell">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CellUsuario")%>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtCellUsuario" MaxLength="50" Text='<%#Eval("CellUsuario")%>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="CellUsuario"
                            runat="server"
                            ErrorMessage="Digite seu cel !!"
                            ForeColor="Red"
                            ControlToValidate="txtCellUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtCellUsuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>

                <%--template Endereço--%>
                <asp:TemplateField HeaderText="Endereco">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("EnderecoUsuario")%>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtEnderecoUsuario" MaxLength="50" Text='<%#Eval("EnderecoUsuario")%>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="EnderecoUsuario"
                            runat="server"
                            ErrorMessage="Digite seu endereço !!"
                            ForeColor="Red"
                            ControlToValidate="txtEnderecoUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtEnderecoUsuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>


                <%--template Cep--%>
                <asp:TemplateField HeaderText="Cep">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("CepUsuario")%>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txtCepUsuario" MaxLength="50" Text='<%#Eval("CepUsuario")%>' />
                        <br />
                        <asp:RequiredFieldValidator
                            ID="CepUsuario"
                            runat="server"
                            ErrorMessage="Digite seu cep !!"
                            ForeColor="Red"
                            ControlToValidate="txtCepUsuario" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox runat="server" ID="txtCepUsuarioFooter" MaxLength="50" />
                    </FooterTemplate>
                </asp:TemplateField>


                <%--radio buttons--%>
                <asp:TemplateField HeaderText="Tipo Usuario">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("descUsuarioTp")%>' />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:RadioButtonList ID="rbl1" runat="server">
                            <asp:ListItem Value="1" Text=" Administrador" />
                            <asp:ListItem Value="2" Text=" Vendedor" />
                            <asp:ListItem Value="3" Text="Cliente" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator
                            ID="rblist"
                            runat="server"
                            ErrorMessage="Selecione uma opção !!"
                            ForeColor="Red"
                            ControlToValidate="rbl1" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:RadioButtonList ID="rbl1" runat="server">
                            <asp:ListItem Value="1" Text=" Administrador" />
                            <asp:ListItem Value="2" Text=" Vendedor" />
                            <asp:ListItem Value="3" Text="Cliente" />
                        </asp:RadioButtonList>
                    </FooterTemplate>
                </asp:TemplateField>

                <%--buttons--%>
                <asp:TemplateField HeaderText="Opções">
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
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="lblMessage" ForeColor="Green" runat="server" Text="" />
    </div>

</asp:Content>
