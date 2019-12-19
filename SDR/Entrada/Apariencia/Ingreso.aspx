<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingreso.aspx.cs" Inherits="SDR.Entrada.Apariencia.Ingreso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; height: 418px;">

            <br />

            <asp:Label ID="Tit_SDR" runat="server" Text="Sopa de Recetas"></asp:Label>
            <br />
            <br />
            <asp:Image ID="Img_Soap" runat="server" Height="50px" ImageUrl="~/Entrada/Apariencia/Imagenes/soup.png" />
            <br />
        <hr style="width: 215px" />  
            <br />
            <asp:Label ID="Tit_Us" runat="server" Text="Usuario"></asp:Label>
            <br />
            <asp:TextBox ID="Txt_Us" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Tit_Contr" runat="server" Text="Contraseña"></asp:Label>
            <br />
            <asp:TextBox ID="Txt_Cl" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Btn_Ing" runat="server" Text="Ingreso" OnClick="Btn_Ing_Click" />
        <hr style="width: 515px" />  
           
            <asp:Button ID="Tit_Reg" runat="server" Text="Registrarme" OnClick="Tit_Reg_Click" />
        <hr style="width: 340px" />  
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Cambiar o recuperar contraseña</asp:LinkButton>

        </div>
    </form>
</body>
</html>
