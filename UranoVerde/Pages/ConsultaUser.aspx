<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultUser.Master" AutoEventWireup="true" CodeBehind="ConsultaUser.aspx.cs" Inherits="UranoVerde.Pages.ConsultaUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="gv1" AutoGenerateColumns="false">
        <columns>
            <asp:BoundField DataField="nomeUsuario" HeaderText="Nome" />
            <asp:BoundField DataField="emailUsuario" HeaderText="Email" />
            <asp:BoundField DataField="cellUsuario" HeaderText="Celular" />
            <asp:BoundField DataField="enderecoUsuario" HeaderText="Endereço" />
            <asp:BoundField DataField="cepUsuario" HeaderText="Cep" />
            <asp:BoundField DataField="tpUsuarioId" HeaderText="Tipo Usuário" />
        </columns>
    </asp:GridView>
</asp:Content>
