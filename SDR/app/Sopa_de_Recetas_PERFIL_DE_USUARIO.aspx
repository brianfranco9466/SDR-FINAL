<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_PERFIL_DE_USUARIO.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_PERFIL_DE_USUARIO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
      
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
          integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
          crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
          integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
          crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
          integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
          crossorigin="anonymous"></script>
        <title>Perfil de Usuario</title>
</head>
<body>
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
                        <a class="dropdown-item" href="#">Perfil</a>
                        <a class="dropdown-item" href="Sopa_de_Recetas_MIS_RECETAS.aspx">Mis Recetas</a>
                        <a class="dropdown-item" href="Sopa_de_Recetas_PRINCIPAL.aspx">Cerrar Sesion</a>
                      </div>
                    </li>
                  </ul>
                </nav>
              </div>
              
                <div class="container" style="margin-top:8%;">
                    <div class="row">
                        <div class="col-md-6">
                                <form id="form1" runat="server">
                                  <h1>Perfil de Usuario</h1>
                                        <div class="form-group">
                                          <label for="Nombre">Nombre</label>
                                          <input type="text" class="form-control" id="TxtNombre" aria-describedby="NombreHelp" placeholder="Nombre de Usuario">
                                          
                                          <label for="Dni">Dni</label>
                                          <input type="number" class="form-control" id="TxtDni" aria-describedby="DniHelp" placeholder="Dni de Usuario">
                                         
                                          <label for="Email">Email</label>
                                          <input type="email" class="form-control" id="TxtEmail" aria-describedby="emailHelp" placeholder="Email de Usuario">
                                        
                                          <label for="NumeroTelefono">Numero de Telefono</label>    
                                          <input type="tel" class="form-control" id="TxtTelefono" aria-describedby="TellHelp" placeholder="(Cod. de área) + Número de Telefono">
                                        </div>
                                        
                                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                                cambiar Contraseña
                                              </button>
                                          <div class="form-group">
                                                <div class="collapse" id="collapseExample">
                                                        <div class="card card-body">
                                          <input type="password" class="form-control" id="TxtContr1" aria-describedby="ContrlHelp" placeholder="Ingresar Contraseña">
                                          <input type="password" class="form-control" id="TxtContr2" aria-describedby="ContrlHelp" placeholder="Repetir Contraseña">
                                                            
                                                                <input class="btn btn-primary" type="button" value="Cambiar Contraseña">                                                     
                                                               </div>
                                                      </div>
                                                    </div>
                                      </form>
                                     
                                      
                                    </div>
                             <div class="col-md-6">
                                    <div>
                                      <img src="Imagenes\Icono_Recetas.jpg" class="rounded" alt="..." style="width:70%"/>
                                    </div>
                                    
                                     <div class="form-group">           
                                          <input type="file" class="form-control-file" id="AbrirArchivo">
                                      </div>
                                        
                                </div>       
                                      
                        </div>
                        
                        
                    </div>
                        <hr>
                        
                        <button type="button" class="btn btn-secondary btn-lg btn-block">Modificar perfil de Usuario</button>
                        
                        <hr>
                    
                      
                        <label for="MisRecetasFavoritas"><h1>Mis Recetas Favoritas</h1></label>
                        <hr>
                        <h1>List Box</h1>
</body>
</html>
