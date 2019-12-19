<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sopa_de_Recetas_MOSTRAR_RECETAS.aspx.cs" Inherits="AparienciaX.Apariencia.Sopa_de_Recetas_MOSTRAR_RECETAS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <link href="Estilo1.css" rel="stylesheet" />
        <link href="Estilos\Sopa_de_Recetas_INGRESO_Estilo.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            <title>Mostrar Recetas</title>
</head>
<body style="text-align: center;font-weight: bold;">
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="lblNavbar" runat="server"></asp:Label>
            
    </div>

      
    <div class="container" style="margin-top:30%; margin-bottom: 10%;">
        <div class="row">
            <div class="col-md-12" style="margin-bottom: 2%; top: -1px; left: 0px;">
                    <h1>
                        <asp:Label ID="Tit_Receta" runat="server" Text=""></asp:Label>

                    </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:Image ID="Image4" runat="server" />
                <asp:Image src="Imagenes\Icono_Recetas.jpg" ID="Image1" runat="server"/>
                   </div>
            <div class="col-md-4">
                    <asp:Image src="Imagenes\Icono_Recetas.jpg" ID="Image2" runat="server"/>
            </div>
                
    
            <div class="col-md-4">
                    <asp:Image src="Imagenes\Icono_Recetas.jpg"  ID="Image3" runat="server"/>
            </div>       
            
        </div>
        <div class="row" ">
            <div class="col-md-4">
                
                    <label for="descripcion">Descripcion</label>
                    <textarea name="ContenidodeInstrucciones" id="Descripcion" class="form-control"  rows="5" style="margin-bottom: 10%;resize: none;" readonly="" runat="server"></textarea>
                   <div>
                    <label for="DificultadTit">Dificultad:</label>
                       <asp:Label ID="Tit_Dificultad" runat="server" Text="Label"></asp:Label>

                </div>
                    <div>
                        <label for="DuracionTit">Duracion:</label>
                        <asp:Label ID="Tit_Duracion" runat="server" Text="Label"></asp:Label>
                    </div>
                
            </div>
            <div class="col-md-4">
                <label for="Ingredientes">Ingredientes</label>
                <textarea name="ContenidodeInstrucciones" id="Ingredientes"  rows="10" class="form-control" style="resize: none;" readonly="" runat="server"></textarea>
                <button class="btn btn-primary" style="margin-top: 20%;"> Agregar a Favoritos</button>
                <p class="col-md-12"><b>receta creada por:</b></p>
                <asp:Label ID="Tit_Creador" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="col-md-4">
                    <label for="Instrucciones">Instrucciones</label>
                    <textarea name="ContenidodeInstrucciones" id="Instrucciones"  rows="15" class="form-control" style="resize: none;" readonly="" runat="server"></textarea>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
