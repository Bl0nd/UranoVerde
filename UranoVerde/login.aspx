<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="UranoVerde.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/media_entrar.css" />
    <%--  bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <%--boxicons--%>
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet' />
    <link rel="shortcut icon" href="img/icon.png" type="icon" />
    <title>Entrar</title>
</head>
<body class="p-3 m-0 border-0 bd-example" style="background-color: #E4FCE9;">
    <div class="container">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid background-color: #E4FCE9">
                <a class="navbar-brand" href="#">
                    <img src="../img/icon.png" alt="logo"></a>
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
                            <a class="nav-link" href="login.aspx">Entrar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="criar.aspx">Criar Conta</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <form id="form1" runat="server">
            <div class="entrar">
                <h1>ENTRAR</h1>
                <h2>Para entrar, digite seu e-mail e senha</h2>
                <div class="entrarC">

                    <li>
                        <%-- //<input type="text" placeholder="Nome:" autocomplete="off" id="nome" autofocus required>--%>
                        <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Disabled" MaxLength="150" Width="50%" Placeholder="Email:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredNome" runat="server" ErrorMessage="Digite seu email" ForeColor="Green" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <%-- <input type="password" placeholder="Senha:" autocomplete="off" id="senha" maxlength="5" required>--%>
                        <asp:TextBox ID="txtSenha" runat="server" AutoCompleteType="Disabled" MaxLength="4" TextMode="Password" Width="50%" Placeholder="Senha:"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredSenha" runat="server" ErrorMessage="Digite sua senha" ForeColor="Green" ControlToValidate="txtSenha"></asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btnDefault" OnClick="btnEntrar_Click"/>
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btnDefault" OnClick="btnCancelar_Click" />
                    </li>
                  <li>
                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </li>
                </div>
            </div>
        </form>
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
    </div>
    <%--Scripts--%>
    <script src="Scripts/script.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
