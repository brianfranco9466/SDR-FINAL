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
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Perfil</a>
                    <a class="dropdown-item" href="Sopa_de_Recetas_ADMINISTRADOR.aspx">Administrar</a>                    
                    <a class="dropdown-item" href="Sopa_de_Recetas_PRINCIPAL.aspx?cerrar=1">Cerrar Sesion</a>
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
                                <asp:TextBox ID="TxtNombre" CssClass="form-control" runat="server" placeholder="Nombre de Administrador"  ReadOnly="True" aria-describedby="NombreHelp"></asp:TextBox>
                              

                                <label for="Apellido">Apellido</label>
                                <asp:TextBox ID="TxtApellido" CssClass="form-control" runat="server" placeholder="Apellido de Administrador"  ReadOnly="True" aria-describedby="NombreHelp"></asp:TextBox>


                              <label for="Dni">Dni</label>
                              <asp:TextBox ID="TxtDni" CssClass="form-control"  runat="server" aria-describedby="DniHelp" placeholder="Dni del Administrador" ReadOnly="True"></asp:TextBox>
                             
                              <label for="Email">Email</label>
                                <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" ReadOnly="true" aria-describedby="emailHelp" placeholder="Email de Usuario"></asp:TextBox>                 
                             
                                <label for="NumeroTelefono"> Numero de Telefono</label>    
                                <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control" aria-describedby="TellHelp" placeholder="(Cod. de área) + Número de Telefono" ReadOnly="true"></asp:TextBox>
                            </div>
                            
                                            <div class="card card-body" >
                                                <asp:Button ID="BtnCollapse" runat="server" Text="Cambiar Contraseña" CssClass="btn btn-primary" OnClick="BtnCollapse_Click"/>
                                                <asp:TextBox ID="TxtContr1" runat="server" aria-describedby="ContrlHelp" placeholder="Ingresar Contraseña" TextMode="Password" Visible="False"></asp:TextBox>
                                                <asp:TextBox ID="TxtContr2" runat="server" aria-describedby="ContrlHelp" placeholder="Repetir Contraseña" TextMode="Password" Visible="False"></asp:TextBox>
                                                <asp:Button ID="btnCambiarContra" runat="server" Text="Cambiar Contraseña" CssClass="btn btn-primary" OnClick="btnCambiarContra_Click" Visible="False" />
                                                 
                                            </div>
                                        
                
                          <!--</form>-->
                         
                          
                        </div>
                 <div class="col-md-6">
                        <div>
                            <asp:Image ID="ImagenPerfil" runat="server"  CssClass="img-thumbnail" AlternateText="..." style="width:70%"  />
                        </div>
                        <!--<form>-->
                         <div class="form-group">      
                             <asp:FileUpload ID="AbrirArchivo" CssClass="btn-outline-primary" runat="server" Visible="False" />
                          </div>
                       <!--</form>-->       
                    </div>       
                          
            </div>
            
            
        </div>
            <hr/>
            <asp:Button ID="btnModificarPerfil" runat="server" Text="Modificar perfil de Administrador" CssClass="btn btn-secondary btn-lg btn-block" OnClick="btnModificarPerfil_Click" />
            <asp:Button ID="btnGuardarPerfil" runat="server" Text="Guardar perfil de Administrador" CssClass="btn btn-secondary btn-lg btn-block" OnClick="btnGuardarPerfil_Click" Visible="False" />

        </div>
    </form>
</body>
</html>
