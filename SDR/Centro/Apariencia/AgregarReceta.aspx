<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarReceta.aspx.cs" Inherits="SDR.Centro.Apariencia.AgregarReceta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center">

            Creacion de Receta<br />
            <br />
            Ingrese el nombre de la receta<br />
            <asp:TextBox ID="txt_Nombre" runat="server" Width="200px"></asp:TextBox>
            <br />
            Seleccione una categoria<br />
            <asp:DropDownList ID="ddl_Categoria" runat="server">
            </asp:DropDownList>
            <br />
            Seleccione una dificultad<br />
            <asp:DropDownList ID="ddl_Dificultad" runat="server" Height="16px" Width="90px">
            </asp:DropDownList>
            <br />
            Duracion<br />
            <asp:TextBox ID="txt_Duracion" runat="server"></asp:TextBox>
            <br />
            Descripcion<br />
            <asp:TextBox ID="txt_Descripcion" runat="server" Height="150px" TextMode="MultiLine" Width="259px"></asp:TextBox>
            <br />
            <asp:Label ID="lbl_Error" runat="server" ForeColor="#CC3300" Text="Complete todos los campos" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="btn_Agregar" runat="server" OnClick="btn_Agregar_Click" Text="Agregar Receta" />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
