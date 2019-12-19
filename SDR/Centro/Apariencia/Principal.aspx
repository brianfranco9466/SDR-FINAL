<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="SDR.Centro.Apariencia.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
      
    
    <form id="form1" runat="server">
          <div style="text-align: center">
                <asp:Label ID="Tit_Princ" runat="server" Text="Ultimas Recetas"></asp:Label>
            <br />
              <br />
              <asp:Button ID="Btn_AgRec" runat="server" Text="Agregar Receta" OnClick="Btn_AgRec_Click" />
              &nbsp;<asp:Button ID="Btn_Rec" runat="server" Text="Ver otras Recetas" OnClick="Btn_Rec_Click" />
            <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Square" DisplayMode="HyperLink">
                <asp:ListItem Value="0">Perfil</asp:ListItem>
                <asp:ListItem Value="1">Recetario</asp:ListItem>
                <asp:ListItem Value="2">Informacion</asp:ListItem>
                <asp:ListItem Value="3">Mis Recetas</asp:ListItem>
                <asp:ListItem Value="4">Configuracion</asp:ListItem>
            </asp:BulletedList>
        </div>
    </form>
</body>
</html>
