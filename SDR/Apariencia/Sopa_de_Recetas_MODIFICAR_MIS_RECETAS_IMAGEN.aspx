<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_IMAGEN.aspx.cs" Inherits="SDR.Apariencia.Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_IMAGEN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Creacion de Recetas</title>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <div class="row">
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
                                <img src="Imagenes\user.png" alt="Usuario" style="width: 40px">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="Sopa_de_Recetas_PERFIL_DE_USUARIO.aspx">Perfil</a>
                                <a class="dropdown-item" href="Sopa_de_Recetas_MIS_RECETAS.aspx">Mis Recetas</a>
                                <a class="dropdown-item" href="Sopa_de_Recetas_PRINCIPAL.aspx?cerrar=1">Cerrar Sesion</a>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>

            <div class="form-row">
                <div class="form-row">
                    <div class="col-md-12">
                        <br />
                        <br />
                        <br />
                        <br />
                        <h1>Seleccione la imagen de la receta</h1>
                        <br />
                        <br />
                        <asp:FileUpload ID="fu_Imagen" runat="server" />
                        <br />
                        <br />
                        <asp:Label ID="lblError" runat="server" ForeColor="#CC3300" Visible="False"></asp:Label>
                        <br />
                        <asp:Button ID="btnAgregarImagen" runat="server" Text="Agregar Imagen" class="btn btn-primary btn-block" OnClick="btnAgregarImagen_Click" />
                        <br />
                        <asp:Button ID="btnContinuar" runat="server" Text="Continuar" class="btn btn-primary btn-block" OnClick="btnContinuar_Click" />
                    </div>
                </div>
            </div>

        </form>
    </div>
</body>
</html>
