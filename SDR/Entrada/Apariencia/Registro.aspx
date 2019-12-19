<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="SDR.Entrada.Apariencia.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; height: 500px">
            

            <asp:Label ID="Tit_SDR" runat="server" Text="Sopa de Recetas"></asp:Label>
                <br />
            <br />
            <asp:Image ID="Img_Soap" runat="server" Height="50px" ImageUrl="~/Entrada/Apariencia/Imagenes/soup.png" />
                <br />
        <hr style="width: 215px" />  
            <asp:Label ID="Tit_Mail" runat="server" Text="Mail"></asp:Label>
            <br />
            <asp:TextBox ID="Txt_Em" runat="server" TextMode="Email"></asp:TextBox>
            <br />
            <asp:Label ID="Tit_Contr" runat="server" Text="Contraseña"></asp:Label>
            <br />
            <asp:TextBox ID="Txt_Cl" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            Nombre<br />
            <asp:TextBox ID="txt_Nombre" runat="server"></asp:TextBox>
            <br />
            Apellido<br />
            <asp:TextBox ID="txt_Apellido" runat="server"></asp:TextBox>
            <br />
            Telefono<br />
            <asp:TextBox ID="txt_Telefono" runat="server"></asp:TextBox>
            <br />
            Dni<br />
            <asp:TextBox ID="txt_Dni" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Btn_Reg" runat="server" Text="Registrarse" OnClick="Btn_Reg_Click" />
        </div>
    </form>
</body>
</html>
