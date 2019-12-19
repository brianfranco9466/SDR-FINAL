<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarImagenXReceta.aspx.cs" Inherits="SDR.Centro.Apariencia.AgregarImagenXReceta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">
            Añadir una imagen<br />
            <asp:FileUpload ID="fu_Imagen" runat="server" />
            <br />
            <br />
            <asp:Button ID="btn_AgregarOtraImagen" runat="server" OnClick="btn_AgregarOtraImagen_Click" Text="Otra Imagen" />
            <br />
            <br />
            <asp:Button ID="btn_AgregarImagen" runat="server" OnClick="btn_AgregarImagen_Click" Text="Terminar" />
        </div>
    </form>
</body>
</html>
