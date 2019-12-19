<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_ADMINISTRADOR.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_ADMINISTRADOR" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="Estilos\Sopa_de_Recetas_PRINCIPAL_Estilo.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
       
    <title>Administrador</title>
</head>
<body>
    <form id="form1" runat="server">
      <div>
             <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
          
          <ul class="navbar-nav">
            <li class="nav-item">
                <span class="navbar-text">Administrador</span>

            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                    <img src="Imagenes\user.png" alt="Usuario" style="width:40px">
                </a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="Sopa_de_Recetas_PERFIL_DE_ADMINISTRADOR.aspx">Perfil</a>
                    <a class="dropdown-item" href="#">Administrar</a>                    
                    <a class="dropdown-item" href="Sopa_de_Recetas_PRINCIPAL.aspx?cerrar=1">Cerrar Sesion</a>
                </div>
            </li>
        </ul>
        </nav>
      </div>

    <div class="container" style="margin-top: 5%;">
        <div class="row">
            <div class="col-md-12">
              <div class="text-center">
                <h1>Administracion de Usuarios</h1>
                <hr>
              </div>
            </div>
        </div>
    </div>
              <div class="container-fluid" style="margin-top: 50px; border: 1px solid black;">
                  <div class="row">
                    <div class="col-md-3">
                     <!-- <form>-->
                        <div class="form-group">
                          <label for="Buscador">Buscar por:</label>
                        </div>
                        <div class="form-group">
                          <div class="dropdown">
                              <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-secondary dropdown-toggle" aria-haspopup="true" aria-expanded="false" TabIndex="1">
                                  <asp:ListItem></asp:ListItem>
                                  <asp:ListItem>Dni</asp:ListItem>
                                  <asp:ListItem>Email</asp:ListItem>
                                  <asp:ListItem>Nombre</asp:ListItem>
                              </asp:DropDownList>
                          </div>
                        </div>
              
                        <div class="form-group">
                          <label for="SegundaOpcion">Ordenar de:</label>
                        </div>
                        <div class="form-group">
                          <div class="dropdown">
                              <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn btn-secondary dropdown-toggle" aria-haspopup="true" aria-expanded="false">
                                  <asp:ListItem>Es igual a:</asp:ListItem>
                                  <asp:ListItem>Termina en:</asp:ListItem>
                                  <asp:ListItem>Comienza en:</asp:ListItem>
                              </asp:DropDownList>
                            
                          </div>
                        </div>
                        <div class="form-group" >
                          <label for="BusquedaTextual">Busqueda Textual:</label>
                        
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        
                            <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn btn-dark" OnClick="Button1_Click" />
                        </div>
                      <!--</form>-->
                    </div>
                    <div class="col-md-9">
                      <div class="text-center">
                          <asp:ListView ID="ListView1" runat="server" DataKeyNames="IdUsuario" DataSourceID="SqlUsuarios" EnablePersistedSelection="True" ValidateRequestMode="Enabled" ViewStateMode="Enabled">
                              <AlternatingItemTemplate>
                                  <tr style="background-color:#FFF8DC;">
                                      <td>
                                          <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Eval("Estado") %>' Enabled="false" />
                                      </td>
                                      <td>
                                          <asp:Label ID="IdUsuarioLabel" runat="server" Text='<%# Eval("IdUsuario") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="ClaveLabel" runat="server" Text='<%# Eval("Clave") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="DniLabel" runat="server" Text='<%# Eval("Dni") %>' />
                                      </td>
                                      <td>
                                          <asp:CheckBox ID="TipoCheckBox" runat="server" Checked='<%# Eval("Tipo") %>' Enabled="false" />
                                      </td>
                                  </tr>
                              </AlternatingItemTemplate>
                              <EditItemTemplate>
                                  <tr style="background-color:#008A8C;color: #FFFFFF;">
                                      <td>
                                          <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                          <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                      </td>
                                      <td>
                                          <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Bind("Estado") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="IdUsuarioLabel1" runat="server" Text='<%# Eval("IdUsuario") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="ClaveTextBox" runat="server" Text='<%# Bind("Clave") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="ApellidoTextBox" runat="server" Text='<%# Bind("Apellido") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="DniTextBox" runat="server" Text='<%# Bind("Dni") %>' />
                                      </td>
                                      <td>
                                          <asp:CheckBox ID="TipoCheckBox" runat="server" Checked='<%# Bind("Tipo") %>' />
                                      </td>
                                  </tr>
                              </EditItemTemplate>
                              <EmptyDataTemplate>
                                  <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                      <tr>
                                          <td>No se han devuelto datos.</td>
                                      </tr>
                                  </table>
                              </EmptyDataTemplate>
                              <InsertItemTemplate>
                                  <tr style="">
                                      <td>
                                          <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                          <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                      </td>
                                      <td>
                                          <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Bind("Estado") %>' />
                                      </td>
                                      <td>&nbsp;</td>
                                      <td>
                                          <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="ClaveTextBox" runat="server" Text='<%# Bind("Clave") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="ApellidoTextBox" runat="server" Text='<%# Bind("Apellido") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                                      </td>
                                      <td>
                                          <asp:TextBox ID="DniTextBox" runat="server" Text='<%# Bind("Dni") %>' />
                                      </td>
                                      <td>
                                          <asp:CheckBox ID="TipoCheckBox" runat="server" Checked='<%# Bind("Tipo") %>' />
                                      </td>
                                  </tr>
                              </InsertItemTemplate>
                              <ItemTemplate>
                                  <tr style="background-color:#DCDCDC;color: #000000;">
                                      <td>
                                          <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Eval("Estado") %>' Enabled="false" />
                                      </td>
                                      <td>
                                          <asp:Label ID="IdUsuarioLabel" runat="server" Text='<%# Eval("IdUsuario") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="ClaveLabel" runat="server" Text='<%# Eval("Clave") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="DniLabel" runat="server" Text='<%# Eval("Dni") %>' />
                                      </td>
                                      <td>
                                          <asp:CheckBox ID="TipoCheckBox" runat="server" Checked='<%# Eval("Tipo") %>' Enabled="false" />
                                      </td>
                                  </tr>
                              </ItemTemplate>
                              <LayoutTemplate>
                                  <table runat="server">
                                      <tr runat="server">
                                          <td runat="server">
                                              <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                  <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                      <th runat="server">Estado</th>
                                                      <th runat="server">IdUsuario</th>
                                                      <th runat="server">Email</th>
                                                      <th runat="server">Clave</th>
                                                      <th runat="server">Nombre</th>
                                                      <th runat="server">Apellido</th>
                                                      <th runat="server">Telefono</th>
                                                      <th runat="server">Dni</th>
                                                      <th runat="server">Tipo</th>
                                                  </tr>
                                                  <tr id="itemPlaceholder" runat="server">
                                                  </tr>
                                              </table>
                                          </td>
                                      </tr>
                                      <tr runat="server">
                                          <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                              <asp:DataPager ID="DataPager1" runat="server">
                                                  <Fields>
                                                      <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                                  </Fields>
                                              </asp:DataPager>
                                          </td>
                                      </tr>
                                  </table>
                              </LayoutTemplate>
                              <SelectedItemTemplate>
                                  <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                      <td>
                                          <asp:CheckBox ID="EstadoCheckBox" runat="server" Checked='<%# Eval("Estado") %>' Enabled="false" />
                                      </td>
                                      <td>
                                          <asp:Label ID="IdUsuarioLabel" runat="server" Text='<%# Eval("IdUsuario") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="ClaveLabel" runat="server" Text='<%# Eval("Clave") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                                      </td>
                                      <td>
                                          <asp:Label ID="DniLabel" runat="server" Text='<%# Eval("Dni") %>' />
                                      </td>
                                      <td>
                                          <asp:CheckBox ID="TipoCheckBox" runat="server" Checked='<%# Eval("Tipo") %>' Enabled="false" />
                                      </td>
                                  </tr>
                              </SelectedItemTemplate>
                             
                          </asp:ListView>
                          <asp:SqlDataSource ID="SqlUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:SDRConnectionString %>" SelectCommand="SELECT [Estado], [IdUsuario], [Email], [Clave], [Nombre], [Apellido], [Telefono], [Dni], [Tipo] FROM [Usuario] WHERE (([Estado] = @Estado) AND ([Tipo] = @Tipo))" OnSelecting="SqlUsuarios_Selecting">
                              <SelectParameters>
                                  <asp:Parameter DefaultValue="true" Name="Estado" Type="Boolean" />
                                  <asp:Parameter DefaultValue="true" Name="Tipo" Type="Boolean" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                      
                    </div>
                    </div>
              
          </div>
        </div>
        
    </form>
</body>
</html>
