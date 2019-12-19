<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_REGISTRO.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_REGISTRO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link href="Estilos\Sopa_de_Recetas_INGRESO_Estilo.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Registrar</title>
</head>
<body class="text-center card-header">
    <form id="form2" runat="server" class="form-signin" style="margin-top: 10%;">
            
             <div>

                 <asp:Label ID="lblNavbar" runat="server"></asp:Label>

              </div>
            
            <img class="mb-4" src="Imagenes\sopa.png" alt="Titulo Sopa" />
            <div>
            <asp:TextBox ID="TxbNombre" runat="server" CssClass="form-control" PlaceHolder="Ingrese Nombre" autofocus="" TextMode="SingleLine"></asp:TextBox>
            <asp:TextBox ID="TxbApellido" runat="server" CssClass="form-control" placeholder="Ingrese Apellido"   autofocus="" TextMode="SingleLine"></asp:TextBox>
            <label for="inputEmail" class="sr-only">Direccion de Email</label>
            <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" placeholder="Ingrese Direccion de Email"  autofocus="" TextMode="Email"></asp:TextBox>
            <label for="inputEmail" class="sr-only">D.N.I.</label>
            <asp:TextBox ID="TxbTelefono" runat="server" CssClass="form-control" placeholder="Ingrese Telefono"  autofocus="" TextMode="Number"></asp:TextBox>
            <asp:TextBox ID="TxbDni" runat="server" CssClass="form-control" placeholder="Ingrese D.N.I."  autofocus="" TextMode="Number"></asp:TextBox>
            <label for="inputPassword" class="sr-only">Ingrese Contraseña</label>
            <asp:TextBox ID="TxbContraseña" runat="server" CssClass="form-control" placeholder="Ingrese Contraseña"  autofocus="" TextMode="Password"></asp:TextBox>
            <label  id="lblPassword2" runat="server" for="inputPassword" class="sr-only">Repita Contraseña</label>
            <asp:TextBox ID="TxbContraseña2"  runat="server" CssClass="form-control" placeholder="Repita Contraseña"  TextMode="Password"></asp:TextBox>
                
                <br />
                <asp:Label ID="lblError" runat="server" ForeColor="#CC3300" Visible="False"></asp:Label>
                
            </div>
          <div>
              <asp:Button ID="btnRegistrarse" runat="server" Text="Registrase" CssClass="btn btn-lg btn-primary btn-block" OnClick="btnRegistrarse_Click" />

        </div>
            <p class="mt-5 mb-3"><b>Todos los derechos reservados ©2019</b></p>
        
    </form>
</body>
</html>
