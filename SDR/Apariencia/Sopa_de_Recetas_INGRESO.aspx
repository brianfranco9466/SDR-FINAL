<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_INGRESO.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_INGRESO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
<link href="Estilos\sopa_de_Recetas_INGRESO_Estilo.css" rel="stylesheet"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <title>Ingreso</title>
</head>
<body class="text-center">
    <form id="form1" runat="server">
        
             <div>  
                 <asp:Label ID="lblNavbar" runat="server"></asp:Label>
              </div>

            <img class="mb-4" src="Imagenes\sopa.png" alt="Titulo Sopa" />
            <br />
            <br />
            Email<br />
            <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
            <br />
            Contraseña<br />
            <asp:TextBox ID="txtContrasena" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
            
             <asp:Label ID="lblError" runat="server" ForeColor="#CC3300" Visible="False"></asp:Label>
            
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Ingresar" class="btn btn-lg btn-primary btn-block" OnClick="btnLogin_Click"/>
            <p class="mt-5 mb-3"><b>Todos los derechos reservados ©2019</b></p>
            
    </form>
       
</body>
</html>
