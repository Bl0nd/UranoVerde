<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entrar.aspx.cs" Inherits="UranoVerde.entrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
    <title>Entrar</title>
</head>

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

        <div class="entrar">
            <h1>ENTRAR</h1>
            <h2>Para entrar, digite seu e-mail e senha</h2>
            <div class="entrarC">

                <li>
                    <input type="text" placeholder="Nome:" autocomplete="off" id="nome" autofocus required>
                </li>
                <li>
                    <input type="password" placeholder="Senha:" autocomplete="off" id="senha" maxlength="5" required>
                </li>
                <li>
                    <input type="submit" class="btnDefault" value="ENTRAR">
                </li>
                <li>
                    <input type="submit" class="btnDefault" value="ESQUECI A SENHA">
                </li>


                <h1>CRIAR NOVA CONTA</h1>
                <h2>Para criar uma nova conta, digite ses dados</h2>


                <li>
                    <input type="text" placeholder="nome:" autocomplete="off" id="nome" autofocus required></li>
                <li>
                    <input type="email" placeholder="email:" autocomplete="off" id="email" required>
                </li>
                <li>
                    <input type="password" placeholder="senha:" autocomplete="off" id="senha" maxlength="4" autofocus
                        required>
                </li>
                <li>
                    <input type="tel" placeholder="celular:" autocomplete="off" id="celular" maxlength="11" required>
                </li>
                <li>
                    <input type="text" placeholder="endereço:" autocomplete="off" id="endereco" autofocus required>
                </li>
                <li>
                    <input type="text" placeholder="CEP:" autocomplete="off" id="CEP" maxlength="8" required></li>
                <li>
                    <input type="submit" class="btnDefault" value="CRIAR CONTRA">
                </li>

            </div>
        </div>


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
    <script src="/script/script.js"></script>
</body>

</html>
</body>
</html>
