<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_RECUPERAR_CLAVE.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_RECUPERAR_CLAVE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link href="Estilos\Estilo1.css" rel="stylesheet" />
<link href="Estilos\Sopa_de_Recetas_INGRESO_Estilo.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Recuperar Contraseña</title>
</head>
<body class="text-center">
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
                        <img src="Imagenes\user.png" alt="Usuario" style="width:40px"/>
                      </a>
                      <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Sopa_de_Recetas_INGRESO.aspx">Logearme</a>
                        <a class="dropdown-item" href="Sopa_de_Recetas_REGISTRO.aspx">Registrarme</a>
                        <a class="dropdown-item" href="#">Recuperar Clave</a>
                      </div>
                    </li>
                  </ul>
                </nav>
              </div>
    <form id="form1" runat="server" class="form-signin" style="margin-top: 10%;">

           
            <img class="mb-4" src="Imagenes\sopa.png" alt="Titulo Sopa" />
            <label for="inputEmail" class="sr-only">Direccion de Email</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Ingrese Direccion de Email" required="" autofocus=""/>
        
          <div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
            <p class="mt-5 mb-3"><b>Todos los derechos reservados ©2019</b></p>
        </div>
    </form>
</body>
</html>
