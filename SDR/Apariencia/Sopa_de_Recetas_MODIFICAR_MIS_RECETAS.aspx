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



            <%--<form>--%>
            <div class="form-row" style="margin-top: 10%">
                <div class="form-group col-md-6">
                    Titulo
                <br />
                    <asp:TextBox ID="TxtTitulo" runat="server" class="form-control"></asp:TextBox>

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
                <div class="form-group col-md-6">
                    <label for="TxtDescripcion">Descripcion:</label>&nbsp;
                <br />
                    <asp:TextBox ID="TxtDescripcion" runat="server" Height="105px" TextMode="MultiLine" Width="415px" class="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-row" style="margin-top: 2%">


                <div class="form-group col-sm-6">
                    <label for="Adicionales">Adicionales:</label>

                    <div style="margin-bottom: 5%;">
                        Dificultad:<br />
                        <asp:DropDownList ID="ddl_Dificultad" runat="server" class="form-control">
                        </asp:DropDownList>


                    </div>
                    <div style="margin-bottom: 5%;">
                        Categoria:<br />
                        <asp:DropDownList ID="ddl_Categoria" runat="server" class="form-control">
                        </asp:DropDownList>


                    </div>
                    <div>
                        <label for="TiempodeDuracion">Duracion:</label>
                    </div>
                    <div style="margin-bottom: 5%">
                        
                        <asp:TextBox ID="TxtDuracion" runat="server" class="form-control"></asp:TextBox>
                        
                    </div>

                </div>
            </div>
            <div class="text-center" style="margin: 50px;">
                
                <asp:Label ID="lblError" runat="server" ForeColor="#CC3300" Visible="False"></asp:Label>
                <br />
                
                <asp:Button ID="btnModificarReceta" runat="server" Text="Modificar Receta" class="btn btn-primary" OnClick="btnModificarReceta_Click"/>
                
            </div>

            <!-- <div class="form-group">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck">
                <label class="form-check-label" for="gridCheck">
                    Check me out
                </label>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Sign in</button>-->
        </form>
    </div>
    <%--</form>--%>
</body>
</html>
