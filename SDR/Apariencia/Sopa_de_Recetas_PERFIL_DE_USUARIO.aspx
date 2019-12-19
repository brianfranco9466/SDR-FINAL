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
                        <img src="Imagenes\user.png" alt="Usuario" style="width:40px"/>
                      </a>
                      <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="#">Perfil</a>
                        <a class="dropdown-item" href="Sopa_de_Recetas_MIS_RECETAS.aspx">Mis Recetas</a>
                        <a class="dropdown-item" href="Sopa_de_Recetas_PRINCIPAL.aspx?cerrar=1">Cerrar Sesion</a>
                      </div>
                    </li>
                  </ul>
                </nav>
              </div>
              
                <div class="container" style="margin-top:8%;">
                    <div class="row">
                        <div class="col-md-6">
                                
                                  <h1>Perfil de Usuario</h1>
                                        <div class="form-group">
                                          <label for="Nombre">Nombre</label>
                                            <asp:TextBox ID="TxtNombre" CssClass="form-control" runat="server" placeholder="Nombre del Usuario"  ReadOnly="True" aria-describedby="NombreHelp"></asp:TextBox>
                              

                                            <label for="Apellido">Apellido</label>
                                            <asp:TextBox ID="TxtApellido" CssClass="form-control" runat="server" placeholder="Apellido del Usuario"  ReadOnly="True" aria-describedby="NombreHelp"></asp:TextBox>


                                          <label for="Dni">Dni</label>
                                          <asp:TextBox ID="TxtDni" CssClass="form-control"  runat="server" aria-describedby="DniHelp" placeholder="Dni del Usuario" ReadOnly="True"></asp:TextBox>
                             
                                          <label for="Email">Email</label>
                                            <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" ReadOnly="true" aria-describedby="emailHelp" placeholder="Email del Usuario"></asp:TextBox>                 
                             
                                            <label for="NumeroTelefono">Numero de Telefono</label>    
                                            <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control" aria-describedby="TellHelp" placeholder="(Cod. de área) + Número de Telefono" ReadOnly="true"></asp:TextBox>
                                        </div>
                                        
                                        <div class="form-group" >
                                                <asp:Button ID="BtnCollapse" runat="server" Text="Cambiar Contraseña" CssClass="btn btn-primary" OnClick="BtnCollapse_Click"/>
                                                <asp:TextBox ID="TxtContr1" runat="server" aria-describedby="ContrlHelp" placeholder="Ingresar Contraseña" TextMode="Password" Visible="False"></asp:TextBox>
                                                <asp:TextBox ID="TxtContr2" runat="server" aria-describedby="ContrlHelp" placeholder="Repetir Contraseña" TextMode="Password" Visible="False"></asp:TextBox>
                                                <asp:Button ID="btnCambiarContra" runat="server" Text="Cambiar Contraseña" CssClass="btn btn-primary" OnClick="btnCambiarContra_Click" Visible="False" />
                                            </div>
                                    
                                    </div>
                             <div class="col-md-6">
                                <div>
                                    <asp:Image ID="ImagenPerfil" runat="server"  CssClass="rounded" AlternateText="..." style="width:70%"  />
                                </div>
                                 <div class="form-group">      
                                     <asp:FileUpload ID="AbrirArchivo" CssClass="btn-outline-primary" runat="server" Visible="False" />
                                  </div>
                            </div>                
                        </div>
           
                    </div>
                                    <asp:Button ID="btnModificarPerfil" runat="server" Text="Modificar perfil de Usuario" CssClass="btn btn-secondary btn-lg btn-block" OnClick="btnModificarPerfil_Click" />
                                    <asp:Button ID="btnGuardarPerfil" runat="server" Text="Guardar perfil de Usuario" CssClass="btn btn-secondary btn-lg btn-block" OnClick="btnGuardarPerfil_Click" Visible="False" />
                      <%--<h1>
                        <label for="MisRecetasFavoritas">Mis Recetas Favoritas</label>
                          </h1>

                        <h1>List Box</h1>--%>
    </form>
</body>
</html>
