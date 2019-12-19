<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MisRecetas.aspx.cs" Inherits="SDR.Enlaces.Apariencia.MisRecetas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Tit_MisRecetas" runat="server" style="text-align: center" Text="Mis Recetas"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Tit_No_Receta" runat="server" ForeColor="Red" Text="No tiene ninguna receta"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
