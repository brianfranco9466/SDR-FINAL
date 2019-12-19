<%@ Page Title="" Language="C#" MasterPageFile="~/Apariencia/Principal.Master" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_RECETAS.aspx.cs" Inherits="SDR.Apariencia.Sopa_de_Recetas_BUSCAR_RECETA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-bottom:10%" >
        <div class="row">
            <div class="col-12 border-bottom">
            <div class="auto-style1">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SDL">
                    <AlternatingItemTemplate>
                        <td runat="server" style="text-align:center" >
                            <asp:Label ID="CODCATEGORIALabel" runat="server" Visible="False" Text='<%# Eval("IdCategoria") %>' />
                            
                            <br />
                            
                            <!--<asp:ImageButton ID="ImageButton1" runat="server" style="margin-right:20px;margin-left:20px"  Height="100px" ImageUrl= Width="100px"/>
                           -->
                            <br />
                            <h5>
                            <asp:Label ID="DESCRIPCIONLabel" runat="server" Text='' />
                           </h5>
                            
                        </td>
                    </AlternatingItemTemplate>
                   
                   
                    
                    <ItemTemplate>
                        <td runat="server" style="text-align:center">
                            <asp:Label ID="CODCATEGORIALabel"  runat="server" Visible="False" Text='<%# Eval("IdCategoria") %>' />                            
                            <br />
                            <!--<asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl='' Width="100px" />
                            <br />
                            <h5>
                            <asp:Label ID="DESCRIPCIONLabel" runat="server"  Text />
                                </h5>-->
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server" border="0" style="">
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    
                </asp:ListView>
                
                <asp:SqlDataSource ID="SDL" runat="server" ConnectionString="Data Source=localhost\sqlexpress;Initial Catalog=SDR;Integrated Security=True" SelectCommand="SELECT * FROM [Categoria]"></asp:SqlDataSource>
                
               
                
            </div>
          </div>
        </div>
    </div>
    <!--PARTE IZQUIERDA-->
    <div class="container">
        <div class="row"> 
            
            <div class="col-3"> 
            <div class="auto-style">

                <div>
                    <hr />
                    <asp:Label ID="Label1" runat="server" Text="Buscar por:"></asp:Label>

                    <br />

                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Value="0">Elegir Opcion...</asp:ListItem>
                        <asp:ListItem Value="1">Titulo de Receta</asp:ListItem>
                        <asp:ListItem Value="2">Fecha de Creacion</asp:ListItem>
                        <asp:ListItem Value="3">Tiempo de Preparacion</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    <asp:TextBox ID="Txt_Busqueda" runat="server"></asp:TextBox>

                    <hr />
                </div>
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Label">Ordenar por:</asp:Label>
                    
                    <br />
                    
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Value="0">Elegir Opcion...</asp:ListItem>
                        <asp:ListItem Value="1">Vistos</asp:ListItem>
                    
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Text_Ordenar" runat="server" Text="Tipo de orden:"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Value="0">Elegir Opcion...</asp:ListItem>
                        <asp:ListItem Value="1">Ascendente</asp:ListItem>
                        <asp:ListItem Value="2">Descendente</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Valor_De_Texto" runat="server" Text=""></asp:Label>
                    <br />
                </div>
                <hr />


                <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Limpiar Busqueda
                </asp:LinkButton>
            </div>
            </div>
            <!-- PARTE CENTRAL-->
            <div class="col-6 border" style="text-align:center" >
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdReceta" DataSourceID="SDL2" EnablePersistedSelection="True"  >
                    <AlternatingItemTemplate >
                        <span >
                        <asp:Label ID="CodRecetaLabel" visible="false" runat="server" Text='<%# Bind("IdReceta") %>' />
                        
                        <h3>
                        <asp:Label ID="TituloLabel" runat="server" Text='<%# Bind("Nombre") %>' />
                        </h3>
                        <br />
                            
                        <asp:Image ID="ImagenEnlaceLabel" runat="server" Width="100px" ImageUrl='<%# Bind("ImagenEnlace") %>' />
                        
                        <h4>Dificultad:</h4>
                            <h5>
                        <asp:Label ID="DificultadLabel" runat="server" Text='<%# Bind("Dificultad") %>' />
                                </h5>
                        
                        <h4>Tiempo de Preparacion:</h4>
                            <h5>
                        <asp:Label ID="TiempoLabel" runat="server" Text='<%# Eval("Tiempo") %>' />
                                </h5>
                       
                        
                        <h4>Vistos:</h4>
                            <h5>
                        <asp:Label ID="VistosLabel" runat="server" Text='<%# Bind("Vistos") %>' />
                                </h5>
                        
                        <h4>Fecha de Creacion:</h4>
                            <h5>
                        <asp:Label ID="FechaDeCreacionLabel" runat="server" Text='<%# Bind("FechaDeCreacion") %>' />
                                </h5>
                        
                            <hr />
                            <asp:Button ID="Btn_Ver_Receta" Text="Ver Receta" runat="server" CommandArgument='<%# Bind("IdReceta") %>' onclick='Btn_Ver_Receta_Click'/>
                            <hr />
                            <asp:LinkButton ID="Lnk_Btn_Agregar_Favoritos" Text="Agregar a Favoritos" runat="server" CommandArgument='<%# Eval("IdReceta") %>' CommandName="Evento_Favorito" OnCommand="Btn_Seleccion"/>
                            <hr />
                        </span>
                    </AlternatingItemTemplate>

                    
                    
                    
                   

                    
                    
                    
                   
                    <EmptyDataTemplate>
                        <span>No se han devuelto datos.</span>
                    </EmptyDataTemplate>
                   


                    <ItemTemplate>
                        <span >
                        <asp:Label ID="CodRecetaLabel" visible="false" runat="server" Text='<%# Bind("IdReceta") %>' />
                        
                        <h3>
                        <asp:Label ID="TituloLabel" runat="server" Text='<%# Bind("Nombre") %>' />
                        </h3>
                        <br />
                            
                        <asp:Image ID="ImagenEnlaceLabel" runat="server" Width="100px" ImageUrl='<%# Bind("ImagenEnlace","{0}") %>' />
                        
                        <h4>Dificultad:</h4>
                            <h5>
                        <asp:Label ID="DificultadLabel" runat="server" Text='<%# Bind("Dificultad") %>' />
                                </h5>
                        
                        <h4>Tiempo de Preparacion:</h4>
                            <h5>
                        <asp:Label ID="TiempoLabel" runat="server" Text='<%# Eval("Tiempo") %>' />
                                </h5>
                       
                        
                        <h4>Vistos:</h4>
                            <h5>
                        <asp:Label ID="VistosLabel" runat="server" Text='<%# Bind("Vistos") %>' />
                                </h5>
                   
                        
                        <h4>Fecha de Creacion:</h4>
                            <h5>
                        <asp:Label ID="FechaDeCreacionLabel" runat="server" Text='<%# Bind("FechaDeCreacion") %>' />
                                </h5>
                        
                            <hr />
                            <asp:Button ID="Btn_Ver_Receta" Text="Ver Receta" runat="server" CommandArgument='<%# Bind("IdReceta") %>' onclick='Btn_Ver_Receta_Click'/>
                            <hr />
                            <asp:LinkButton ID="Lnk_Btn_Agregar_Favoritos" Text="Agregar a Favoritos" runat="server" CommandArgument='<%# Eval("IdReceta") %>' CommandName="Evento_Favorito" OnCommand="Btn_Seleccion"/>
                            <hr />
                        </span>
                    </ItemTemplate>
                    

                    <LayoutTemplate>
                        <div style="" id="itemPlaceholderContainer" runat="server">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>


                </asp:ListView>
                <asp:SqlDataSource ID="SDL2" runat="server" ConnectionString="Data Source=localhost\sqlexpress;Initial Catalog=SDR;Integrated Security=True" SelectCommand="SELECT * FROM [Receta] WHERE ([Estado] = @Estado)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="true" Name="Estado" Type="Boolean" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1">
                    <Fields>
                        <asp:NextPreviousPagerField />
                    </Fields>
                </asp:DataPager>
       </div>
        <!--LADO DERECHO-->
        
       </div>
    </div>
    
</asp:Content>
