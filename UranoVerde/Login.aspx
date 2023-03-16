<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UranoVerde.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/media_entrar.css">
    <%--  bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <%--boxicons--%>
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
    <link rel="shortcut icon" href="img/icon.png" type="icon">
    <title>Login</title>
</head>
<body>
    <body class="p-3 m-0 border-0 bd-example" style="background-color: #E4FCE9;">
        <div class="container">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid background-color: #E4FCE9">
                    <a class="navbar-brand" href="#">
                        <img src="../img/icon.png" alt="logo"></span></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="index.aspx">Início</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="produtos.aspx">Produtos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="entrar.aspx">Entrar</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <section id="login">
                <h4>Login</h4>
                <form id="form1" runat="server">
                    <div class="contactC">
                        <ul class="contactI">
                            <li>
                                <asp:TextBox ID="txtnomeUsuario" runat="server" AutoCompleteType="Disabled" MaxLength="150" Width="100%" Placeholder="Nome:" CssClass="cxTexto"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="RequiredNome"
                                    runat="server"
                                    ErrorMessage="Digite o usuario !!"
                                    ForeColor="Green"
                                    ControlToValidate="txtnomeUsuario"></asp:RequiredFieldValidator>
                            </li>
                            <li>
                                <asp:TextBox ID="txtsenhaUsuario" runat="server" AutoCompleteType="Disabled" MaxLength="4" TextMode="Password" Width="100%" Placeholder="Senha:" CssClass="cxTexto"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="RequiredSenha"
                                    runat="server"
                                    ErrorMessage="Digite sua senha !!"
                                    ForeColor="Green"
                                    ControlToValidate="txtsenhaUsuario"></asp:RequiredFieldValidator>
                            </li>
                            <li>
                                <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btnDefault" OnClick="btnEntrar_Click" />
                                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btnDefault" Onclick="btnCancelar_Click" />
                            </li>
                            <li>
                                <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                            </li>
                        </ul>
                    </div>
                    <script src="/script/script.js"></script>
                </form>
            </section>
            <footer>
                <div class="rodape">
                    <ul class="rodapeC">
                        <li>
                            <h4>Uma empresa da UranoDEITADO Industrias</h4>
                        </li>
                        <li>
                            <i class='bx bxl-facebook'></i>
                        </li>
                        <li>
                            <i class='bx bxl-instagram-alt'></i>
                        </li>
                        <li>
                            <i class='bx bxl-youtube'></i>
                        </li>
                        <li>
                            <i class='bx bxl-whatsapp'></i>
                        </li>
                        <li>
                            <h4>&copy; Copyrigth Todos os direitos reservados</h4>
                            <h4>VIVA A CLASSE PROLETÁRIA</h4>
                        </li>
                    </ul>
                </div>
            </footer>
    </body>
</html>
