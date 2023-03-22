<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UranoVerde.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/media_inicio.css" />
    <%--  bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <%--boxicons--%>
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet' />
    <link rel="shortcut icon" href="img/icon.png" type="icon" />
    <title>uranoVERDE</title>
</head>

<body style="background-color: #E4FCE9;">
    <div class="container">

        <nav class="navbar navbar-expand-lg bg-body-tertiary;">
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
                            <a class="nav-link active" aria-current="page" href="index.aspx">Início</a>
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

        <main>
            <div class="inicio">
                <div class="inicioC" >
                    <video id="video" src="video/assassinato.mp4" muted></video>

                    <div class="inicioI">
                        <h1>Urano<span>VERDE</span></h1>
                        <h2>Loja de Plantas</h2>
                        <h2>As melhores plantas da internet a um clickplus de distância</h2>
                    </div>

                </div>
            </div>

            <div class="sobre">
                <h1>LOJA DE PLANTAS URANOVERDE</h1>
                <h3>Somos uma Loja especializada na venda e plantio de plantas, seja ela qual for, e que oporemos no
                    mercado há 5 anos e com mias de 10 mil árvores plantadas. Trabalhamos junto com ONGs e alianças
                    partidárias em prol do meio ambiente e contra as mudanças climáticas
                </h3>
                <a class="linkEx" href="https://www.unidadepopular.org.br/programa/">PROTEJA O MEIO AMBIENTE</a>
            </div>

            <div class="ambiente">

                <div class="card mb-3" style="max-width: 1300px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="img/cap.jpg" alt="capitalista">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h1 class="card-title">COMO PROTEJER O MEIO AMBIENTE</h1>
                                <h2>Entendendo o Problema</h2>
                                <p class="card-text">
                                    Todos nós sabemos que o planeta Terra não está bem! Estamos observando de perto as mudanças climáticas e, infelizmente, estamos sofrendo diretamente com todo o impacto negativo que o homem causa ao planeta. Fato é que não podemos só observar todas as mudanças, devemos buscar melhorias. O Sistema Capitalista corrompe todo o ecosistema atrás de lucro desesfreado, ignorando o fato dos recursos serem limitados.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card mb-3" style="max-width: 1300px;">
                    <div class="row g-0">
                        <div class="col-md-8">
                            <div class="card-body">
                                <h1 class="card-title">Lutando Contra</h1>
                                <h2>Ainda não é tarde</h2>
                                <p class="card-text">
                                    Temos que nos concentrar em quem e o quê que é os verdadeiros vilões, como a vontade dos 1% da população em detrimento dos outros 99%, da vontade da burguesia sobre a vida de bilhões de pessoas no mundo, e a unica forma de tudo isso mudar, de salvarmos nosso planeta e toda a vida nele, é preciso derrubar todo o sistema econômico que está degredinto toda a vida na Terra.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img src="img/arvoreafogada.jpg" alt="meioambiente">
                        </div>
                    </div>
                </div>

            </div>

            <div class="promocoes">

                <div class="relampagoP">
                    <h2>PROMOÇÕES RELÂMPAGO</h2>

                    <div class="row row-cols-1 row-cols-md-2 g-4">
                        <div class="col">
                            <div class="card">
                                <img src="img/foto05.jpg" class="card-img-top" alt="Leiteira-Vermelha">
                                <div class="card-body">
                                    <h5 class="card-title">Leiteira-Vermelha</h5>
                                    <p class="card-text">
                                        Arbusto<br>
                                        R$30,00
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="img/foto12.jpg" class="card-img-top" alt="Flor Girassól">
                                <div class="card-body">
                                    <h5 class="card-title">Flor Girassól</h5>
                                    <p class="card-text">
                                        Flor<br>
                                        R$24,00
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="img/foto08.jpg" class="card-img-top" alt="Canela-Imbuia">
                                <div class="card-body">
                                    <h5 class="card-title">Canela-Imbuia</h5>
                                    <p class="card-text">
                                        Árvore<br>
                                        R$15,00
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="img/foto26.jpg" class="card-img-top" alt="Semente de Tomate">
                                <div class="card-body">
                                    <h5 class="card-title">Semente de Tomate</h5>
                                    <p class="card-text">
                                        Semente<br>
                                        R$02,00
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="arvoresP">
                    <h2>PLANTE ÁRVORES</h2>

                    <div class="row row-cols-1 row-cols-md-2 g-4">
                        <div class="col">
                            <div class="card">
                                <img src="img/foto06.jpg" class="card-img-top" alt="Araucária">
                                <div class="card-body">
                                    <h5 class="card-title">Araucária</h5>
                                    <p class="card-text">
                                        Árvore<br>
                                        R$28,00
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="img/foto09.jpg" class="card-img-top" alt="Ipê Roxo">
                                <div class="card-body">
                                    <h5 class="card-title">Ipê Roxo</h5>
                                    <p class="card-text">
                                        Árvore<br>
                                        R$27,00
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="img/foto07.jpg" class="card-img-top" alt="Jacarandá-da-Bahia">
                                <div class="card-body">
                                    <h5 class="card-title">Jacarandá-da-Bahia</h5>
                                    <p class="card-text">
                                        Árvore<br>
                                        R$27,00
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="col">
                            <div class="card">
                                <img src="img/foto10.jpg" class="card-img-top" alt="Chuva-de-Ouro">
                                <div class="card-body">
                                    <h5 class="card-title">Chuva-de-Ouro</h5>
                                    <p class="card-text">
                                        Árvore<br>
                                        R$30,00
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sementesP">
                    <h2>PARA COMEÇAR SUA PRÓPRIA HORTA</h2>

                    <div class="row row-cols-1 row-cols-md-2 g-4">
                        <div class="col">
                            <div class="card">
                                <img src="img/foto16.jpg" class="card-img-top" alt="Semente de Amora">
                                <div class="card-body">
                                    <h5 class="card-title">Semente de Amora</h5>
                                    <p class="card-text">
                                        Semente<br>
                                        R$02,00
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="img/foto17.jpg" class="card-img-top" alt="Semente de Girassól">
                                <div class="card-body">
                                    <h5 class="card-title">Semente de Girassól</h5>
                                    <p class="card-text">
                                        Semente<br>
                                        R$05,00
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="img/foto20.jpg" class="card-img-top" alt="Semente de Uva">
                                <div class="card-body">
                                    <h5 class="card-title">Semente de Uva</h5>
                                    <p class="card-text">
                                        Semente<br>
                                        R$05,00
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card">
                                <img src="img/foto21.jpg" class="card-img-top" alt="Semente de Alface">
                                <div class="card-body">
                                    <h5 class="card-title">Semente de Alface</h5>
                                    <p class="card-text">
                                        Semente<br>
                                        R$09,00
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </main>

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
</html>
