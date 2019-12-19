<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recuperacion.aspx.cs" Inherits="SDR.Entrada.Apariencia.Recuperacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div>
        <asp:ImageButton ID="ImgVolver" runat="server" Height="25px" ImageUrl="~/Centro/Apariencia/Imagenes/Flecha_Volver.png" style="text-align: left" Width="25px" ToolTip="Volver a la Pagina Principal" PostBackUrl="~/Entrada/Apariencia/Ingreso.aspx" />
           </div>
        <div class="auto-style1">
            

            <asp:Label ID="Tit_SDR" runat="server" Text="Sopa de Recetas"></asp:Label>
                <br />
            <br />
            <asp:Image ID="Img_Soap" runat="server" Height="50px" ImageUrl="~/Entrada/Apariencia/Imagenes/soup.png" />
                <br />
        <hr style="width: 215px" />  
                <br />
                <asp:Label ID="Tit_Sel" runat="server" Text="Seleccione una opción" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="Tit_Contr" runat="server" Text="Contraseña"></asp:Label>
                <br />
                <asp:CheckBox runat="server" ID="CBL_R" AutoPostBack="True" OnCheckedChanged="CBL_R_CheckedChanged" Text="Recuperar" />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Tit_Separador" runat="server" Text="o"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CBL_C" runat="server" AutoPostBack="True" OnCheckedChanged="CBL_C_CheckedChanged" Text="Cambiar" />
                <br />
            <asp:Panel ID="Panel_Rec_Cont" runat="server" Height="100px" Width="202px" style="text-align: center" HorizontalAlign="Center">
                <asp:Label ID="Tit_Mail" runat="server" Text="Mail"></asp:Label>
                <br />
                <asp:TextBox ID="Txt_Em" runat="server" TextMode="Email" Width="183px" ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Btn_RecCl" runat="server" Text="Recuperar Contraseña" />
            </asp:Panel>
            <asp:Panel ID="Panel_Camb_Contr" runat="server" Height="210px" Width="201px" HorizontalAlign="Center">
                <asp:Label ID="Tit_Cont_Ant" runat="server" Text="Contraseña anterior"></asp:Label>
                <br />
                <asp:TextBox ID="Txt_Cont_Ant" runat="server" TextMode="Email" Width="183px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Tit_Nueva_Contr" runat="server" Text="Contraseña nueva"></asp:Label>
                <br />
                <asp:TextBox ID="Txt_Cont_N" runat="server" TextMode="Email" Width="183px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Tit_Contr_Nueva" runat="server" Text="Reescribir Contraseña Nueva"></asp:Label>
                <br />
                <asp:TextBox ID="Txt_Cont_N_R" runat="server" TextMode="Email" Width="183px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Btn_CamC" runat="server" Text="Cambiar Contraseña" Width="195px" />
                <br />
            </asp:Panel>
            <br />
       </div>
    </form>
</body>
</html>
