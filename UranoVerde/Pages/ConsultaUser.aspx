<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultUser.Master" AutoEventWireup="true" CodeBehind="ConsultaUser.aspx.cs" Inherits="UranoVerde.Pages.ConsultaUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="base">
        <asp:GridView runat="server" ID="dgv1" AutoGenerateColumns="false">


            <Columns>
                <asp:BoundField DataField="nomeUsuario" HeaderText="Nome" />
                <asp:BoundField DataField="emailUsuario" HeaderText="Email" />
                <asp:BoundField DataField="descUsuarioTp" HeaderText="Descrição" />
            </Columns>
        </asp:GridView>
    </div>

    <div class="base">
        <h1 id="produto">Produto</h1>

        <asp:GridView runat="server" ID="dgv2" GridLines="None" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="nomeProduto" HeaderText="Produto" />
                <asp:BoundField DataField="tipoProduto" HeaderText="Tipo" />
                <asp:BoundField DataField="valorProduto" HeaderText="Valor" />

            </Columns>


        </asp:GridView>
    </div>
</asp:Content>
