<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_ADMINISTRADOR.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_ADMINISTRADOR" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="Estilos\Sopa_de_Recetas_PRINCIPAL_Estilo.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
       
    <title>Administrador</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
          
          <ul class="navbar-nav">
            <li class="nav-item">
                <span class="navbar-text">Administrador</span>

            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    <img src="Imagenes\user.png" alt="Usuario" style="width:40px">
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Sopa_de_Recetas_PERFIL_DE_ADMINISTRADOR.aspx">Perfil</a>
                    <a class="dropdown-item" href="#">Administrar</a>                    
                    <a class="dropdown-item" href="Sopa_de_Recetas_PRINCIPAL.aspx">Cerrar Sesion</a>
                </div>
            </li>
        </ul>
        </nav>
      </div>

    <div class="container" style="margin-top: 5%;">
        <div class="row">
            <div class="col-md-12">
              <div class="text-center">
                <h1>Administracion de Usuarios</h1>
                <hr>
              </div>
            </div>
        </div>
    </div>
              <div class="container-fluid" style="margin-top: 100px; border: 1px solid black;">
                  <div class="row">
                    <div class="col-md-3">
                     <!-- <form>-->
                        <div class="form-group">
                          <label for="Buscador">Buscar por:</label>
                        </div>
                        <div class="form-group">
                          <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="DMB" data-toggle="dropdown"
                              aria-haspopup="true" aria-expanded="false">
                              Seleccionar...
                            </button>
                            <div class="dropdown-menu" aria-labelledby="DMB">
                              <a class="dropdown-item" href="#">Nombre de Usuario</a>
                              <a class="dropdown-item" href="#">Categoria</a>
                              <a class="dropdown-item" href="#">Titulo</a>
                              <a class="dropdown-item" href="#">Ingrediente</a>
                              <a class="dropdown-item" href="#">Fecha</a>
                            </div>
                          </div>
                        </div>
              
                        <div class="form-group">
                          <label for="SegundaOpcion">Ordenar de:</label>
                        </div>
                        <div class="form-group">
                          <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="DMB1" data-toggle="dropdown"
                              aria-haspopup="true" aria-expanded="false">
                              Seleccionar...
                            </button>
                            <div class="dropdown-menu" aria-labelledby="DMB1">
                              <a class="dropdown-item" href="#">Igual</a>
                              <a class="dropdown-item" href="#">Menor</a>
                              <a class="dropdown-item" href="#">Mayor</a>
                            </div>
                          </div>
                        </div>
                        <div class="form-group" >
                          <label for="BusquedaTextual">Busqueda Textual:</label>
                        </div>
                        <div class="form-group">
                          <input type="text" name="Ingrese" id="BuscText">
                        </div>
                        <div class="form-group">
                          <button type="button" class="btn btn-dark">Buscar</button>
                        </div>
                      <!--</form>-->
                    </div>
                    <div class="col-md-9">
                      <div class="text-center">
                      <h1>Data Grid View</h1>
                    </div>
                    </div>
              
          </div>
        </div>
        
    </form>
</body>
</html>
