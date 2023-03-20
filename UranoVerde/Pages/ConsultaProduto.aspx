<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultAdm.Master" AutoEventWireup="true" CodeBehind="ConsultaProduto.aspx.cs" Inherits="UranoVerde.Pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/styleP.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="base">
        <h1 id="produto">Produto</h1>
        <asp:GridView runat="server" ID="dgv2" GridLines="None" AutoGenerateColumns="false">


            <Columns>
                <asp:BoundField DataField="nomeProduto" HeaderText="Produto" />
                <asp:BoundField DataField="tipoProduto" HeaderText="Tipo Produto" />
                <asp:BoundField DataField="valorProduto" HeaderText="Valor" />
            </Columns>
        </asp:GridView>

        <br />
        <asp:Label ID="lblMessage" ForeColor="Green" runat="server" Text="" />
    </div>

</asp:Content>
