<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_INFORMACION.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_INFORMACION" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <title>Informacion</title>
                <link rel="stylesheet" href="Estilos\Sopa_de_Recetas_INFORMACION_Estilo.css"/>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               
              <asp:Label ID="lblNavbar" runat="server"></asp:Label>
               
              </div>
              
              <div class="text-center" style="margin-top: 10%;">
                  <h1>Informacion</h1>
              </div>
        <div class="container" style="margin-top: 5%">
            <!-- Creadores-->

            <div class="row">
                <div class="col" style="margin-bottom: 20px">
                    <h1>Creadores</h1>
                    <br/>
                    <p>
                        Somos alumnos de la carrera de la Tecnicatura Universitaria de Programación quienes decidimos crear una pagina de recetas con el fin de darle comodidad al usuario de encontrar las recetas que desee.
                    </p>
                    <div style="width: 20%; border-radius: 100%; display: flex;">
                        <img src="Imagenes\user.png" alt="JIS" title="Jose Ignacio Segalla" style="margin-right: 20%">
                        <img src="Imagenes\user.png" alt="FB" title="Brian Franco">
                        <img src="Imagenes\user.png" alt="LNB" title="Leandro Nicolas Berticelli" style="margin-left: 20%">
                    </div>
                </div>
                <div class="col">
                    <img src="Imagenes\Twitter.png" class="rounded" alt="Twitter">
                </div>
                <!-- Opiniones-->
            </div>
            <div class="row" style="margin-top: 20px">
                <div class="col">
                    <div>
                        <img src="Imagenes\Instagram.png" class="rounded" alt="Twitter">
                    </div>

                </div>
                <div class="col">
                    <h1>Danos tu Opinion:</h1>
                    <p>Si tienes algun interes en cambiar algo que no te haya gustado de la pagina o comentar algo positivo de la misma no dudes en enviarnos tu opinion:</p>
                    <%--<form>--%>
                    <div class="form-group">
                        <label for="Email">Ingresa tu correo de Email:</label>
                        <input type="email" class="form-control" id="TxTMail1" aria-describedby="emailHelp" placeholder="Ingrese Email">
                    </div>
                    <div class="form-group">
                        <label for="AreaTextual">Opinion:</label>
                        <textarea class="form-control" id="TxtArea1" rows="2" maxlength="150" style="resize: none">
                                        
                                          </textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                    <%--</form>--%>
                </div>
            </div>

            <!--Reportar Usuarios Mal-intencionados-->
            <div class="row" style="margin-top: 20px; margin-bottom: 20px;">
                <div class="col">
                    <h1>Reportar Usuarios:</h1>
                    <p>Cualquier inconveniente o problema con un usuario puedes mandarnos un mensaje, con el nombre del usuario y la descripcion de su Mal-intencionada accion</p>
                    <%--<form>--%>
                    <div class="form-group">
                        <label for="Email">Ingresa tu correo de Email:</label>
                        <input type="email" class="form-control" id="TxTMail" aria-describedby="emailHelp" placeholder="Ingrese Email">
                        <label for="Nombre-Us">Ingrese el Nombre de Usuario a reportar:</label>
                        <input type="text" class="form-control" id="TxTNomUs" aria-describedby="NomUsHelp" placeholder="Ingrese nombre de usuario">
                    </div>
                    <div class="form-group">
                        <label for="AreaTextual">Reportar:</label>
                        <textarea class="form-control" id="TxtArea2" rows="2" maxlength="150" style="resize: none">
                                        </textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                    <%--</form>--%>
                </div>
                <div class="col">
                    <div>
                        <img src="Imagenes\Facebook.png" class="rounded" alt="Twitter">
                    </div>


                </div>
            </div>
        </div>
    </form>
</body>
</html>
