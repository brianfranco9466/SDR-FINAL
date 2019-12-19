<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_MOSTRAR_RECETAS.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_MOSTRAR_RECETAS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link href="Estilo1.css" rel="stylesheet" />
        <link href="Estilos\Sopa_de_Recetas_INGRESO_Estilo.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            <title>Mostrar Recetas</title>
</head>
<body style="text-align: center;font-weight: bold;">
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

      
    <div class="container" style="margin-top:30%; margin-bottom: 10%;">
        <div class="row">
            <div class="col-md-12" style="margin-bottom: 2%;">
                    <h1>Titulo de Receta</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <img src="Imagenes\Icono_Recetas.jpg" alt="">
                   </div>
            <div class="col-md-4">
                    <img src="Imagenes\Icono_Recetas.jpg" alt="">
            </div>
                
    
            <div class="col-md-4">
                    <img src="Imagenes\Icono_Recetas.jpg" alt="" >
            </div>       
            
        </div>
        <div class="row" ">
            <div class="col-md-4">
                
                    <label for="descripcion">Descripcion</label>
                    <textarea name="ContenidodeInstrucciones" id="Desc." class="form-control"  rows="5" style="margin-bottom: 10%;resize: none;" readonly></textarea>
                   <div>
                    <label for="DificultadTit">Dificultad:</label>
                    <label for="DificultadText">X</label>

                </div>
                    <div>
                        <label for="DuracionTit">Duracion:</label>
                         <label for="Duracion">X</label>
                    </div>
                
            </div>
            <div class="col-md-4">
                <label for="Ingredientes">Ingredientes</label>
                <textarea name="ContenidodeInstrucciones" id="Inst1"  rows="10" class="form-control" style="resize: none;" readonly></textarea>
                <button class="btn btn-primary" style="margin-top: 20%;"> Agregar a Favoritos</button>
                <p class="col-md-12"><b>receta creada por:</b></p>
            </div>
            <div class="col-md-4">
                    <label for="Instrucciones">Instrucciones</label>
                    <textarea name="ContenidodeInstrucciones" id="Inst2"  rows="15" class="form-control" style="resize: none;" readonly></textarea>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
