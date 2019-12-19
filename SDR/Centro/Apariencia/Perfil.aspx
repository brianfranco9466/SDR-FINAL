<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="SDR.Centro.Apariencia.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 625px;
            text-align: left;
        }
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body style="height: 615px">
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImgVolver" runat="server" Height="25px" ImageUrl="~/Centro/Apariencia/Imagenes/Flecha_Volver.png" style="text-align: left" Width="25px" ToolTip="Volver a la Pagina Principal" OnClick="ImgVolver_Click" PostBackUrl="~/Centro/Apariencia/Principal.aspx" />
        </div>
            <div class="auto-style1">
            <br />
        <asp:Label ID="Tit_Perfil" runat="server" Text="Perfil"></asp:Label>
        <br />
        </div>
        <hr style="width: 215px" />  
        <div class="auto-style1">
        <asp:Label ID="Tit_Foto" runat="server" Text="Foto"></asp:Label>
        <br />
        <asp:ImageButton ID="Img_Perfil" runat="server" Height="50px" ImageUrl="~/Centro/Apariencia/Imagenes/user.png" ToolTip="Seleccione la Imagen para cambiarla" Width="50px" />
        <br />
        <asp:Label ID="Tit_Nom" runat="server" Text="Nombre de Usuario"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="168px"></asp:TextBox>
        <br />
        <asp:Label ID="Tit_Email" runat="server" Text="Email"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" Width="170px"></asp:TextBox>
        <br />
        <asp:Label ID="Tit_NdT" runat="server" Text="Numero de Telefono"></asp:Label>
        <br />
        <asp:Label ID="Tit_Formato" runat="server" Text="Formato (011) - (12345678)"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox5" runat="server" Height="22px" TextMode="Number" Width="50px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Tit_Guion" runat="server" Text="-"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Height="21px" TextMode="Number" Width="112px"></asp:TextBox>
            <br />
        <asp:Label ID="Tit_MisRec" runat="server" Text="Mis Recetas"></asp:Label>
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Width="271px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
        <br />
        <asp:Label ID="Tit_Sel" runat="server" ForeColor="Red" Text="Haga doble click en la receta que quiera ver."></asp:Label>
            <br />
        <hr style="width: 350px" />  
        <br />
        <asp:Button ID="Btn_Mod" runat="server" Text="Modificar" OnClick="Btn_Mod_Click" />
        </div>
        </form>
    </body>
</html>
