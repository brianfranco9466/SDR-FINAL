<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_PERFIL_DE_ADMINISTRADOR.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_PERFIL_DE_ADMINISTRADOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
     
    <title>Perfil de Administrador</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
          
          <ul class="navbar-nav">
            <li class="nav-item">
                <span class="navbar-text">Administrador</span>

            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    <img src="Imagenes\user.png" alt="Usuario" style="width:40px"/>
                </a>
                <div class="dropdown-menu ">
                    <a class="dropdown-item" href="#">Perfil</a>
                    <a class="dropdown-item" href="Sopa_de_Recetas_ADMINISTRADOR.aspx">Aministrar</a>                    
                    <a class="dropdown-item" href="Sopa_de_Recetas_PRINCIPAL.aspx">Cerrar Sesion</a>
                </div>
            </li>
          </ul>
        </nav>
      </div>





    <div class="container" style="margin-top:8%;">
        <div class="row">
            <div class="col-md-6">
                    <!--<form>-->
                      <h1>Perfil de Administrador</h1>
                            <div class="form-group">
                              <label for="Nombre">Nombre</label>
                              <input type="text" class="form-control" id="TxtNombre" aria-describedby="NombreHelp" placeholder="Nombre de Usuario"/>
                              
                              <label for="Dni">Dni</label>
                              <input type="number" class="form-control" id="TxtDni" aria-describedby="DniHelp" placeholder="Dni de Usuario"/>
                             
                              <label for="Email">Email</label>
                              <input type="email" class="form-control" id="TxtEmail" aria-describedby="emailHelp" placeholder="Email de Usuario"/>
                            
                              <label for="NumeroTelefono">Numero de Telefono</label>    
                              <input type="tel" class="form-control" id="TxtTelefono" aria-describedby="TellHelp" placeholder="(Cod. de área) + Número de Telefono"/>
                            </div>
                            
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                    cambiar Contraseña
                                  </button>
                              <div class="form-group">
                                    <div class="collapse" id="collapseExample">
                                            <div class="card card-body">
                              <input type="password" class="form-control" id="TxtContr1" aria-describedby="ContrlHelp" placeholder="Ingresar Contraseña"/>
                              <input type="password" class="form-control" id="TxtContr2" aria-describedby="ContrlHelp" placeholder="Repetir Contraseña"/>
                                                
                                                    <input class="btn btn-primary" type="button" value="Cambiar Contraseña"/>                                                     
                                                   </div>
                                          </div>
                                        </div>
                          <!--</form>-->
                         
                          
                        </div>
                 <div class="col-md-6">
                        <div>
                          <img src="Imagenes\Icono_Recetas.jpg" class="rounded" alt="..." style="width:70%"/>
                        </div>
                        <!--<form>-->
                         <div class="form-group">           
                              <input type="file" class="form-control-file" id="AbrirArchivo"/>
                          </div>
                       <!--</form>-->       
                    </div>       
                          
            </div>
            
            
        </div>
            <hr/>
            
            <button type="button" class="btn btn-secondary btn-lg btn-block">Modificar perfil de Administrador</button>
           
        </div>
    </form>
</body>
</html>
