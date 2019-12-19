<%@ Page Title="" Language="C#" MasterPageFile="~/Apariencia/Principal.Master" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_PRINCIPAL.aspx.cs" Inherits="SDR.Apariencia.Sopa_de_Recetas_PRINCIPAL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="jumbotron jumbotron bg-cover">
    <div class="text-center">
     
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Apariencia/Imagenes/sopa.png" />
      <h1>Sopa de Recetas</h1>
      <h3 style="color:gray ">En esta pagina web podras encontrar la receta que mas te guste, guardarla en favoritos,
        crear tus propias recetas y agregarle comentarios a recetas de otros usuarios... </h3>

       </div>
    </div>
    
    
    <div class="container"  >
        <div class="row">
            <div class="col-3">
                
                </div>
           
            <div class="col-6 mx-5 " style="text-align:center" >
                <asp:Label ID="Tit_Top_Recetas" Text="<h1>TOP RECETAS MAS VISTAS</h1>" runat="server" style="text-align:center;"/>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdReceta" DataSourceID="SDL">
                    <AlternatingItemTemplate>
                        <td runat="server" ><!--IdReceta:-->
                            <asp:Label ID="IdRecetaLabel" runat="server" Visible="false" Text='<%# Eval("IdReceta") %>' />
                            <br />

                            <!--Nombre:-->
                            <h2>
                            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                </h2>
                            <br />
                            <h4>
                            Dificultad:
                                </h4>
                            <asp:Label ID="DificultadLabel" runat="server" Text='<%# Eval("Dificultad") %>' />
                            <br />
                            <h4>
                            Tiempo:
                                </h4>
                            <asp:Label ID="TiempoLabel" runat="server" Text='<%# Eval("Tiempo") %>' />
                            <br />
                            <h4>
                            Vistos:
                                </h4>
                            <asp:Label ID="VistosLabel" runat="server" Text='<%# Eval("Vistos") %>' />
                            <br />
                            <h4>
                            Fecha:              
                                </h4>
                            <asp:Label ID="FechaDeCreacionLabel" runat="server" Text='<%# Eval("FechaDeCreacion") %>' />
                            <br />
                            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Ver Receta" CommandArgument='<%# Bind("IdReceta") %>' onclick='Btn_Ver_Receta_Click'/>
                            <br />
                        </td>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <td runat="server" style="">IdReceta:
                            <asp:Label ID="IdRecetaLabel1" runat="server" Text='<%# Eval("IdReceta") %>' />
                            <br />
                            Nombre:
                            <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                            <br />
                            Dificultad:
                            <asp:TextBox ID="DificultadTextBox" runat="server" Text='<%# Bind("Dificultad") %>' />
                            <br />
                            Tiempo:
                            <asp:TextBox ID="TiempoTextBox" runat="server" Text='<%# Bind("Tiempo") %>' />
                            <br />
                            Vistos:
                            <asp:TextBox ID="VistosTextBox" runat="server" Text='<%# Bind("Vistos") %>' />
                            <br />
                            FechaDeCreacion:
                            <asp:TextBox ID="FechaDeCreacionTextBox" runat="server" Text='<%# Bind("FechaDeCreacion") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        </td>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table style="">
                            <tr>
                                <td>No se han devuelto datos.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <td runat="server" style="">Nombre:
                            <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                            <br />Dificultad:
                            <asp:TextBox ID="DificultadTextBox" runat="server" Text='<%# Bind("Dificultad") %>' />
                            <br />Tiempo:
                            <asp:TextBox ID="TiempoTextBox" runat="server" Text='<%# Bind("Tiempo") %>' />
                            <br />Vistos:
                            <asp:TextBox ID="VistosTextBox" runat="server" Text='<%# Bind("Vistos") %>' />
                            <br />FechaDeCreacion:
                            <asp:TextBox ID="FechaDeCreacionTextBox" runat="server" Text='<%# Bind("FechaDeCreacion") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                        </td>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <td runat="server"><!--IdReceta:-->
                            <asp:Label ID="IdRecetaLabel" runat="server" Visible="false" Text='<%# Eval("IdReceta") %>' />
                            <br />
                            
                            <!--Nombre:-->
                                <h2>
                            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                </h2>
                            <br />
                            <h4>
                            Dificultad:
                                </h4>
                            <asp:Label ID="DificultadLabel" runat="server" Text='<%# Eval("Dificultad") %>' />
                            <br />
                            <h4>
                            Tiempo:
                                </h4>
                            <asp:Label ID="TiempoLabel" runat="server" Text='<%# Eval("Tiempo") %>' />
                            <br />
                            <h4>
                            Vistos:
                                </h4>
                            <asp:Label ID="VistosLabel" runat="server" Text='<%# Eval("Vistos") %>' />
                            <br />
                            <h4>
                            Fecha:
                                </h4>
                            <asp:Label ID="FechaDeCreacionLabel" runat="server" Text='<%# Eval("FechaDeCreacion") %>' />
                            <br />
                            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Ver Receta" CommandArgument='<%# Bind("IdReceta") %>' onclick='Btn_Ver_Receta_Click'/>
                            <br />
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server" border="0" style="">
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </table>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="">IdReceta:
                            <asp:Label ID="IdRecetaLabel" runat="server" Text='<%# Eval("IdReceta") %>' />
                            <br />
                            Nombre:
                            <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                            <br />
                            Dificultad:
                            <asp:Label ID="DificultadLabel" runat="server" Text='<%# Eval("Dificultad") %>' />
                            <br />
                            Tiempo:
                            <asp:Label ID="TiempoLabel" runat="server" Text='<%# Eval("Tiempo") %>' />
                            <br />
                            Vistos:
                            <asp:Label ID="VistosLabel" runat="server" Text='<%# Eval("Vistos") %>' />
                            <br />
                            FechaDeCreacion:
                            <asp:Label ID="FechaDeCreacionLabel" runat="server" Text='<%# Eval("FechaDeCreacion") %>' />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </SelectedItemTemplate>
                </asp:ListView>
                </div>
            <div class="col-3">
                 
            <asp:SqlDataSource ID="SDL" runat="server" ConnectionString="<%$ ConnectionStrings:SDRConnectionString3 %>" SelectCommand="SELECT * FROM [Receta] WHERE ([Estado] = @Estado)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="true" Name="Estado" Type="Boolean" />
                </SelectParameters>
                </asp:SqlDataSource>
                 
                </div>
        </div>
        <div class="row border-top" style =" margin-top:5%">
            <div class="col-4 text-center" style="margin-top:2%">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Apariencia/Imagenes/Agregar_Receta.png" OnClick="ImageButton1_Click" />
                <br />
                <asp:Label ID="Tit_Agregar_Receta" runat="server" Text="Agregar Receta"></asp:Label>
               
            </div>
            <div class="col-4 text-center" style="margin-top:2%">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Apariencia/Imagenes/Informacion.png" OnClick="ImageButton2_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Informacion"></asp:Label>
            </div>
            <div class="col-4 text-center" style="margin-top:2%">
               <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Apariencia/Imagenes/Ver_Recetas.png" OnClick="ImageButton3_Click" />
                <br />
                <asp:Label ID="Tit_Ver_Recetas" runat="server" Text="Ver Recetas"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
