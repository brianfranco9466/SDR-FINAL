<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_INSTRUCCIONES.aspx.cs" Inherits="SDR.Apariencia.Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_INSTRUCCIONES" %>

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
                                <img src="Imagenes\user.png" alt="Usuario" style="width: 40px"/>
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



            <%--<form>--%>
            <div class="form-row" style="margin-top: 10%">
                <div class="form-group text-center col-md-12">
                    <h1>Instrucciones</h1>

                </div>
            </div>
            <!--<div class="form-row" style="display:flex">
            <div class="form-row">
                <div class="col-md-12">
                    Seleccione la imagen de la receta
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control"/>
                    <br />
                    <asp:Button ID="btnAgregarImagen" runat="server" Text="Agregar Imagen" class="btn btn-primary btn-block"/>
                </div>            
            </div>
        </div>-->
            <div class="form-row">
                <div class="form-group col-md-12">
                    <label for="TxtDescripcion">Descripcion:</label>&nbsp;
                <br />
                    <asp:TextBox ID="TxtDescripcion" runat="server" Height="105px" TextMode="MultiLine" Width="416px" class="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-row" style="margin-top: 2%">
                <div class="form-group col-sm-3">
                    Numero de orden
                    <br />
                    <asp:TextBox ID="TxtNroOrden" runat="server" class="form-control" Width="1154px"></asp:TextBox>
                </div>
            </div>
            <div class="text-center" style="margin: 50px;">
                
                <asp:Label ID="lblError" runat="server" ForeColor="#CC3300" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="lblCorrecto" runat="server" ForeColor="#339933"></asp:Label>
                <br />
                
                <asp:Button ID="btnAgregarInstruccion" runat="server" Text="Agregar Instruccion" class="btn btn-primary" OnClick="btnAgregarInstruccion_Click"/>
                <br />
                <br />
                <asp:Button ID="btnFinalizar" runat="server" Text="Finalizar" class="btn btn-primary" OnClick="btnFinalizar_Click"/>
                
            </div>

        </form>
    </div>
</body>
</html>
