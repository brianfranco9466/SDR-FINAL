<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_MODIFICAR_MIS_RECETAS.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_MODIFICAR_MIS_RECETAS" %>

<!DOCTYPE html>

 <html xmlns="http://www.w3.org/1999/xhtml">

        <head runat="server">
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
           
        <title>Modificar mi receta</title>
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
              
        

            <%--<form>--%>
                    <div class="form-row" style="margin-top:10%">
                        <div class="form-group col-md-12">
                                <h1 class="text-center">
                                    Modificar mi receta
                                </h1>
                            <label for="TxtTitulo">Titulo:</label>
                            <input type="text" class="form-control" id="IngresoTitulo" placeholder="Ingrese Titulo...">
                            <br>
                            <label for="inputPassword4">Seleccione una imagen para Cambiarla</label>
                        </div>
                    </div>
                    <div class="flow-row" style= "display:flex">
                        <div class="form-group col-md-4">
                            <img src="Imagenes\Icono_Recetas.jpg" alt="Imagenes Recetas" class="img-thumbnail">
                            <button style="width: 60%;" type="button" class="btn btn-primary btn-block">Limpiar</button>
                        </div>
            
                        <div class="form-group col-md-4">
                            <img src="Imagenes\Icono_Recetas.jpg" alt="Imagenes Recetas" class="img-thumbnail">
                            <button style="width: 60% ;" type="button" class="btn btn-primary">Limpiar</button>
                        </div>
                        <div class="form-group col-md-4">
                            <img src="Imagenes\Icono_Recetas.jpg" alt="Imagenes Recetas" class="img-thumbnail">
                            <button style="width:60%" type="button" class="btn btn-primary">Limpiar </button>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="TxtDescripcion">Descripcion:</label>
                            <textarea  class="form-control" name="TxtDescripcion" id="IdDescripcionTextArea"  rows="5"  style="resize:none"></textarea>
                        </div>
                    </div>
            
                    
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="TitInstruccion">Titulo de Instruccion</label>
                            <input type="text" class="form-control">
            
                            <label for="TxtInstruccion">Texto de Instruccion:</label>
                            <textarea  class="form-control" name="TxtDescripcion" id="IdDescripcionTextArea"  rows="5"  style="resize:none"></textarea>
                            <button style="margin-top:10px" type="button" class="btn btn-primary btn-block">Agregar</button>
                        </div>
                    </hr>
                        <div class="form-group col-md-6">
                            <label for="Instruccion">Instruccion</label>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="CheckBox1">
                                <label class="custom-control-label" for="CheckBox1">Titulo de Procedimiento 1: Texto de Procedimiento 1</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="CheckBox2">
                                <label class="custom-control-label" for="CheckBox2">Titulo de Procedimiento 2: Texto de Procedimiento 2</label>
                            </div>
                            <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="CheckBox3">
                            <label class="custom-control-label" for="CheckBox3">Titulo de Procedimiento 3: Texto de Procedimiento 3</label>
                        </div>
                        <div>
                            <button type="button" class="btn btn-primary">Eliminar Instruccion</button>    
                           </div>
                    </div>      
                </div> 
                   
                    
            
                       
            
                    
              <div class="form-row" style="margin-top:2%">
                <div class="form-group col-sm-3">
                        <label for="Ingredientes">Ingredientes:</label>
                    <div class="dropdown" style="margin-bottom: 5%;">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Ingredientes
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Peperoni</a>
                          <a class="dropdown-item" href="#">Morrones</a>
                          <a class="dropdown-item" href="#">Ali Oli</a>
                          <a class="dropdown-item" href="#">Otro...</a>
                        </div>
                      </div>
                      <div class="dropdown" style="margin-bottom: 5%;">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Medidas
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Gr</a>
                          <a class="dropdown-item" href="#">Mgr</a>
                          <a class="dropdown-item" href="#">Kgr</a>
                          <a class="dropdown-item" href="#">Otro...</a>
                        </div>
                      </div>
                      <div>
                      <input type="number" id="IdNumCAnt" placeholder="Cantidad">
                    </div>
                    <div>
                <button  type="button" class="btn btn-primary" style="margin-top: 25px;">Agregar Ingrediente</button>
            
                    </div>
                </div>
               
            
                <div class="form-group col-sm-3">
                    <div>
                        <h4>List Box</h4>
                    </div>
                        <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="CheckBox4">
                        <label class="custom-control-label" for="CheckBox4" style="margin-left:10px">Igrediente/Medida/Cantidad</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="CheckBox5">
                        <label class="custom-control-label" for="CheckBox5" style="margin-left: 10px;">Igrediente/Medida/Cantidad</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="CheckBox6">
                    <label class="custom-control-label" for="CheckBox6"style="margin-left: 10px">Igrediente/Medida/Cantidad</label>
                </div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="CheckBox7">
                    <label class="custom-control-label" for="CheckBox7"style="margin-left: 10px">Igrediente/Medida/Cantidad</label>
                </div>
                <div>
                    <button type="button" class="btn btn-primary">Eliminar Ingrediente/s</button>    
            
                </div>
                </div>
            
                <div class="form-group col-sm-6">
                                <label for="Adicionales">Adicionales:</label>
                        
                    <div class="dropdown" style="margin-bottom: 5%;">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Dificultad
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="#">Facil</a>
                          <a class="dropdown-item" href="#">Intermedio</a>
                          <a class="dropdown-item" href="#">Dificil</a>
                          
                        </div>
                      </div>
                      <div>
                    <label  for="TiempodeDuracion" >Duracion:</label>
                     </div>
                     <div style="margin-bottom:5%">       
                        <input type="number">
                     </div>
                     
                      <div class="dropdown" >
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Unidad de Tiempo
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                              <a class="dropdown-item" href="#">Segundos</a>
                              <a class="dropdown-item" href="#">Minutos</a>
                              <a class="dropdown-item" href="#">Horas</a>
                              
                            </div>
                          </div>
            
                </div>
              </div>
              <div class="text-center" style="margin:50px; ">
                  <button class="btn btn-primary"><h1>Modificar Receta</h1></button>
              </div>
               
                
                
    </form>
    <%--</form>--%>
</body>
</html>
