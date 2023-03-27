<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produtos.aspx.cs" Inherits="UranoVerde.produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="css/media_produtos.css" rel="stylesheet" />
    <%--  bootstrap--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <%--boxicons--%>
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet' />
    <link rel="shortcut icon" href="img/icon.png" type="icon" />
    <title>Produtos</title>
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
                            <a class="nav-link" href="index.aspx">Início</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="produtos.aspx">Produtos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.aspx">Entrar</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <main>

            <div class="capa">

                <div class="capaI">
                    <h1>Urano<span>VERDE</span></h1>
                    <h2>Os melhores produtos do UranoDEITADO Indústrias</h2>
                </div>

            </div>

            <div class="arbusto">
                <h2>Arbusto</h2>

                <div class="row row-cols-1 row-cols-md-2 g-4">
                    <div class="col">
                        <div class="col">
                            <div class="card">
                                <img src="img/foto01.jpg" class="card-img-top" alt="Jabuticaba-Amarela">
                                <div class="card-body">
                                    <h5 class="card-title">Jabuticaba-Amarela</h5>
                                    <p class="card-text">
                                        Arbusto<br>
                                        R$25,00
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="img/foto02.jpg" class="card-img-top" alt="Clusia">
                            <div class="card-body">
                                <h5 class="card-title">Clusia</h5>
                                <p class="card-text">
                                    Arbusto<br>
                                    R$20,00
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="img/foto03.jpg" class="card-img-top" alt="Guaimbé">
                            <div class="card-body">
                                <h5 class="card-title">Guaimbé</h5>
                                <p class="card-text">
                                    Arbusto<br>
                                    R$25,00
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="img/foto04.jpg" class="card-img-top" alt="Palmeira-de-Petropolis">
                            <div class="card-body">
                                <h5 class="card-title">Palmeira-de-Petropolis</h5>
                                <p class="card-text">
                                    Arbusto<br>
                                    R$25,00
                                </p>
                            </div>
                        </div>
                    </div>
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
                            <img src="img/foto23.jpg" class="card-img-top" alt="Daphne L.">
                            <div class="card-body">
                                <h5 class="card-title">Daphne L.</h5>
                                <p class="card-text">
                                    Arbusto<br>
                                    R$25,00
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="arvore">
                <h2>Árvores</h2>

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
                            <img src="img/foto07.jpg" class="card-img-top" alt="Jacarandá-da-Bahia">
                            <div class="card-body">
                                <h5 class="card-title">Jacarandá-da-Bahia</h5>
                                <p class="card-text">
                                    Árvore<br>
                                    R$25,00
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
                    <div class="col">
                        <div class="card">
                            <img src="img/foto22.jpg" class="card-img-top" alt=" 	Araucária">
                            <div class="card-body">
                                <h5 class="card-title">Araucária</h5>
                                <p class="card-text">
                                    Árvore<br>
                                    R$28,00
                                </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <div class="flor">
                <h2>Flor</h2>

                <div class="row row-cols-1 row-cols-md-2 g-4">

                    <div class="col">
                        <div class="card">
                            <img src="img/foto11.jpg" class="card-img-top" alt="Flor Azaleia">
                            <div class="card-body">
                                <h5 class="card-title">Azaleia</h5>
                                <p class="card-text">
                                    Flor<br>
                                    R$22,00
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card">
                            <img src="img/foto12.jpg" class="card-img-top" alt="Flor Girassól">
                            <div class="card-body">
                                <h5 class="card-title">Girassól</h5>
                                <p class="card-text">
                                    Flor<br>
                                    R$24,00
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card">
                            <img src="img/foto13.jpg" class="card-img-top" alt="Copo-de-Leite">
                            <div class="card-body">
                                <h5 class="card-title">Copo-de-Leite</h5>
                                <p class="card-text">
                                    Flor<br>
                                    R$21,00
                                </p>
                            </div>
                        </div>
                    </div>


                    <div class="col">
                        <div class="card">
                            <img src="img/foto14.jpg" class="card-img-top" alt="Orquídeas">
                            <div class="card-body">
                                <h5 class="card-title">Orquídeas</h5>
                                <p class="card-text">
                                    Flor<br>
                                    R$24,00
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card">
                            <img src="img/foto15.jpg" class="card-img-top" alt="Rosa">
                            <div class="card-body">
                                <h5 class="card-title">Rosa</h5>
                                <p class="card-text">
                                    Flor<br>
                                    R$21,00
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="card">
                            <img src="img/foto28.jpg" class="card-img-top" alt="Margarida">
                            <div class="card-body">
                                <h5 class="card-title">Margarida</h5>
                                <p class="card-text">
                                    Flor<br>
                                    R$22,00
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="semente">
                <h2>Semente</h2>

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
                            <img src="img/foto19.jpg" class="card-img-top" alt="Semente de Jambolão">
                            <div class="card-body">
                                <h5 class="card-title">Semente de Jambolão</h5>
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
    <%--Scripts--%>
    <script src="scripts/script.js"></script>
    <script src="scripts/bootstrap.js"></script>
</body>

</html>
