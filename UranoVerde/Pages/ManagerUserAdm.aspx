<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultAdm.Master" AutoEventWireup="true" CodeBehind="ManagerUserAdm.aspx.cs" Inherits="UranoVerde.Pages.ManagerUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="gv1" AutoGenerateColumns="false">
        <columns>
            <asp:TemplateField HeaderText="Nome">
                <itemtemplate>
                    <asp:Label runat="server" Text='<%--#Eval ("nomeUsuario")--%>' />
                </itemtemplate>
                <edittemplate>
                    <asp:TextBox ID="txtnomeUsuario" runat="server" MaxLength="50" Text='<%--Eval ("nomeUsuario")--%>' />
                </edittemplate>
                <footertemplate>
                    <asp:TextBox ID="txtnomeUsuarioFooter" runat="server" />
                </footertemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Senha">
                <itemtemplate>
                    <asp:Label runat="server" Text='<%--#Eval ("senhaUsuario")--%>' />
                </itemtemplate>
                <edittemplate>
                    <asp:TextBox ID="txtsenhaUsuario" runat="server" MaxLength="4" Text='<%--Eval ("senhaUsuario")--%>' />
                </edittemplate>
                <footertemplate>
                    <asp:TextBox ID="txtsenhaUsuarioFooter" runat="server" />
                </footertemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Email">
                <itemtemplate>
                    <asp:Label runat="server" Text='<%--#Eval ("emailUsuario")--%>' />
                </itemtemplate>
                <edittemplate>
                    <asp:TextBox ID="txtemailUsuario" runat="server" MaxLength="50" Text='<%--Eval ("emailUsuario")--%>' />
                </edittemplate>
                <footertemplate>
                    <asp:TextBox ID="txtemailUsuarioFooter" runat="server" />
                </footertemplate>
            </asp:TemplateField>

        </columns>
    </asp:GridView>
</asp:Content>
