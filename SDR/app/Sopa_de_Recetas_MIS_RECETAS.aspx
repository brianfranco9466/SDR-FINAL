<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_MIS_RECETAS.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_MIS_RECETAS" %>

<!DOCTYPE html>


 <html xmlns="http://www.w3.org/1999/xhtml">

        <head runat="server">
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
           
        <title>Mis Recetas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Sopa_de_Recetas_RECETAS.aspx">Recetas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Sopa_de_Recetas_PRINCIPAL.aspx">Principal</a>
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
                                <img src="Imagenes\user.png" alt="Usuario" style="width:40px">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="Sopa_de_Recetas_PERFIL_DE_USUARIO.aspx">Perfil</a>
                                <a class="dropdown-item" href="Sopa_de_Recetas_MIS_RECETAS.aspx">Mis Recetas</a>
                                <a class="dropdown-item" href="Sopa_de_Recetas_PRINCIPAL.aspx">Cerrar Sesion</a>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>
              
            <div class="container" style="margin-top:5%">
                <div class="row">
                    <div class="col">
                        <div class="text-center">
                            <h1>Mis Recetas</h1>
                            <hr>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h1>ListView</h1>
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="text-center">
                            <a class="btn btn-primary" href="Sopa_de_Recetas_CREAR_RECETAS.aspx" role="button">Crear Nueva Receta</a>
                        </div>
                        
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
