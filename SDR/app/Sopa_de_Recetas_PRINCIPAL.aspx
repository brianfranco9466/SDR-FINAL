<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_PRINCIPAL.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_PRINCIPAL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <link rel="stylesheet" href="Estilos\Sopa_de_Recetas_PRINCIPAL_Estilo.css"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <title>Principal</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Sopa_de_Recetas_RECETAS.aspx">Recetas</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Principal</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Sopa_de_Recetas_INFORMACION.aspx">Información</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <span class="navbar-text">Usuario</span>

                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                                <img src="Imagenes\user.png" alt="Usuario" style="width: 40px">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="Sopa_de_Recetas_INGRESO.aspx">Logearme</a>
                                <a class="dropdown-item" href="Sopa_de_Recetas_REGISTRO.aspx">Registrarme</a>
                                <a class="dropdown-item" href="Sopa_de_Recetas_RECUPERAR_CLAVE.aspx">Recuperar Clave</a>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="jumbotron jumbotron bg-cover">
                <div class="overlay"></div>
                <div class="container"></div>
                <div class="text-center">
                    <img src="Imagenes\sopa.png" class="rounded" alt="Sopa" style="margin-top: 20px;">
                    <h1>Sopa de Recetas</h1>
                    <h3 style="color: gray">En esta pagina web podras encontrar la receta que mas te guste, guardarla en favoritos,
        crear tus propias recetas y agregarle comentarios a recetas de otros usuarios... </h3>

                </div>
            </div>

            <div class="container">

                <div class="row">
                    <div class="col-sm-6">
                        <div>
                            <h2>Top Recetas</h2>
                        </div>
                        <div id="carouselExampleControls" class="carousel slide w-100" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="Imagenes\Img1.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block"
                                        style="background: rgb(39, 37, 37); border-radius: 20%; background-size: cover;">
                                        <h5>Postres</h5>
                                        <p>Torta de Chocolate con Limon</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="Imagenes\Img2.jpg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block"
                                        style="background: rgb(39, 37, 37); border-radius: 20%; background-size: cover;">
                                        <h5>Sopas</h5>
                                        <p>Sopa de Habas y Nopales</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="Imagenes\Img3.jpg" alt="Third slide">
                                    <div class="carousel-caption d-none d-md-block"
                                        style="background: rgb(39, 37, 37); border-radius: 20%; background-size: cover;">
                                        <h5>Baos</h5>
                                        <p>Baos de pollo con Albahaca y Cilantro</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div>
                            <h2>Top Usuarios</h2>
                        </div>
                        <div id="CEC" class="carousel slide w-100" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="Imagenes\Top_User.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block"
                                        style="background: rgb(39, 37, 37); border-radius: 20%; background-size: cover;">
                                        <h5>Pepe</h5>
                                        <p>Mayor creador de Recetas</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="Imagenes\Top_User.jpg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block"
                                        style="background: rgb(39, 37, 37); border-radius: 20%; background-size: cover;">
                                        <h5>Creatividad</h5>
                                        <p>Mayor cantidad de favoritos</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="Imagenes\Top_User.jpg" alt="Third slide">
                                    <div class="carousel-caption d-none d-md-block"
                                        style="background: rgb(39, 37, 37); border-radius: 20%; background-size: cover;">
                                        <h5>Diversidad</h5>
                                        <p>Mayor cantidad de Recetas de distintas categorias</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#CEC" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#CEC" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-copyright text-center  py-3" style="margin-top: 5%"><b>Todos los Derechos Reservados ©2019</b></div>


        </div>
    </form>
</body>
</html>
