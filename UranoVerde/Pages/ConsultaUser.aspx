<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultUser.Master" AutoEventWireup="true" CodeBehind="ConsultaUser.aspx.cs" Inherits="UranoVerde.Pages.ConsultaUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" ID="gv1" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="nomeUsuario" HeaderText="Nome" />
            <asp:BoundField DataField="emailUsuario" HeaderText="Email" />
           <asp:BoundField DataField="descUsuarioTp" HeaderText="Descrição" />
        </Columns>
    </asp:GridView>
</asp:Content>
