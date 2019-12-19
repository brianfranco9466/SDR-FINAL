using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NEGOCIO;
using ENTIDADES;
namespace AparienciaX.Apariencia
{
    public partial class Sopa_de_Recetas_MOSTRAR_RECETAS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GestionRecetas GR = new GestionRecetas();
            GestionUsuarios GU = new GestionUsuarios();
            GestionIngXRec GIngxR = new GestionIngXRec();
            GestionInsXRec GI = new GestionInsXRec();
            GestionImgXRec GIxR = new GestionImgXRec();
            GestionIngrediente GIxI = new GestionIngrediente();

            if (Session["Usuario"] != null && Int32.Parse(Session["Usuario"].ToString()) > 0)
            {
                lblNavbar.Text = "<div>" +
                "<nav class='navbar navbar-expand-sm bg-dark navbar-dark fixed-top'>" +
                "<ul class='navbar-nav mr-auto'>" +
                "<li class='nav-item'>" +
                "<a class='nav-link' href='Sopa_de_Recetas_RECETAS.aspx'>Recetas</a>" +
                "</li>" +
                "<li class='nav-item'>" +
                "<a class='nav-link' href='Sopa_de_Recetas_PRINCIPAL.aspx'>Principal</a>" +
                "</li>" +
                "<li class='nav-item'>" +
                "<a class='nav-link' href='Sopa_de_Recetas_INFORMACION.aspx'>Información</a>" +
                "</li>" +
                "</ul>" +
                "<ul class='navbar-nav'>" +
                "<li class='nav-item'>" +
                "<span class='navbar-text'>Usuario</span>" +
                "</li>" +
                "<li class='nav-item dropdown'>" +
                "<a class='nav-link dropdown-toggle' href='#' id='navbardrop' data-toggle='dropdown'>" +
                "<img src = 'Imagenes\\user.png' alt='Usuario' style='width: 40px'>" +
                "</a>" +
                "<div class='dropdown-menu dropdown-menu-right'>" +
                "<a class='dropdown-item' href='Sopa_de_Recetas_PERFIL_DE_USUARIO.aspx'>Perfil</a>" +
                "<a class='dropdown-item' href='Sopa_de_Recetas_MIS_RECETAS.aspx'>Mis Recetas</a>" +
                "<a class='dropdown-item' href='Sopa_de_Recetas_PRINCIPAL.aspx?cerrar=1'>Cerrar Sesion</a>" +
                "</div>" +
                "</li>" +
                "</ul>" +
                "</nav>" +
                "</div>";
            }
            else
            {
                lblNavbar.Text = "<div>" +
                "<nav class='navbar navbar-expand-sm bg-dark navbar-dark fixed-top'>" +
                "<ul class='navbar-nav mr-auto'>" +
                "<li class='nav-item'>" +
                "<a class='nav-link' href='Sopa_de_Recetas_RECETAS.aspx'>Recetas</a>" +
                "</li>" +
                "<li class='nav-item'>" +
                "<a class='nav-link' href='Sopa_de_Recetas_PRINCIPAL.aspx'>Principal</a>" +
                "</li>" +
                "<li class='nav-item'>" +
                "<a class='nav-link' href='Sopa_de_Recetas_INFORMACION.aspx'>Información</a>" +
                "</li>" +
                "</ul>" +
                "<ul class='navbar-nav'>" +
                "<li class='nav-item'>" +
                "<span class='navbar-text'>Usuario</span>" +
                "</li>" +
                "<li class='nav-item dropdown'>" +
                "<a class='nav-link dropdown-toggle' href='#' id='navbardrop' data-toggle='dropdown'>" +
                "<img src = 'Imagenes\\user.png' alt='Usuario' style='width: 40px'>" +
                "</a>" +
                "<div class='dropdown-menu dropdown-menu-right'>" +
                "<a class='dropdown-item' href='Sopa_de_Recetas_INGRESO.aspx'>Logearme</a>" +
                "<a class='dropdown-item' href='Sopa_de_Recetas_REGISTRO.aspx'>Registrarme</a>" +
                "</div>" +
                "</li>" +
                "</ul>" +
                "</nav>" +
                "</div>";
            }
            GestionRecetas gestorRecetas = new GestionRecetas();

            gestorRecetas.IncrementarVistas(Request.QueryString.Get("IdReceta").ToString());

            try
            {
            if (!IsPostBack)
                {

                    DataTable TReceta = GR.GetReceta(Request.QueryString.Get("IdReceta"));


                    Tit_Receta.Text = TReceta.Rows[0].ItemArray[2].ToString();
                    Tit_Dificultad.Text = TReceta.Rows[0].ItemArray[3].ToString();
                    Tit_Duracion.Text = TReceta.Rows[0].ItemArray[4].ToString();
                    Descripcion.InnerText = TReceta.Rows[0].ItemArray[6].ToString();

                    DataTable TUsuario = GU.ObtenerNombreUsuarioPorId(Convert.ToInt64(TReceta.Rows[0].ItemArray[1].ToString()));

                    Tit_Creador.Text = TUsuario.Rows[0].ItemArray[2].ToString();

                    DataTable TIngredienteXReceta = GIngxR.GestionIngredientesXIdReceta(Convert.ToInt64(Request.QueryString.Get("IdReceta")));

                    DataTable TIngredienteXIdIngrediente = new DataTable();
                    for (int i = 0; i < TIngredienteXReceta.Rows.Count; i++)
                    {
                        TIngredienteXIdIngrediente = GIxI.GestionIngredienteXIdIngrediente(Convert.ToInt64(TIngredienteXReceta.Rows[i].ItemArray[2].ToString()));
                        Ingredientes.InnerHtml += TIngredienteXIdIngrediente.Rows[0].ItemArray[1].ToString() + " - " + TIngredienteXReceta.Rows[i].ItemArray[3].ToString() + "  " + TIngredienteXIdIngrediente.Rows[i].ItemArray[3].ToString() + "                          ";

                    }
                    DataTable TInstruccion = GI.TablaInstrucciones(Convert.ToInt64(Request.QueryString.Get("IdReceta")));

                    for (int i = 0; i < TInstruccion.Rows.Count; i++)
                    {
                        Instrucciones.InnerText += TInstruccion.Rows[i].ItemArray[2] + ")" + TInstruccion.Rows[i].ItemArray[3].ToString() + "                               ";
                    }

                    DataTable TImagenXReceta = GIxR.TablaImagenXIDReceta(Convert.ToInt64(Request.QueryString.Get("IdReceta")));

                    if (TImagenXReceta.Rows.Count >= 3)
                    {
                        Image1.ImageUrl = TImagenXReceta.Rows[0].ItemArray[3].ToString();
                        Image1.Width = 240;
                        Image2.ImageUrl = TImagenXReceta.Rows[1].ItemArray[3].ToString();
                        Image2.Width = 240;
                        Image3.ImageUrl = TImagenXReceta.Rows[2].ItemArray[3].ToString();
                        Image3.Width = 240;
                    }
                    else if (TImagenXReceta.Rows.Count == 2)
                    {
                        Image1.ImageUrl = TImagenXReceta.Rows[0].ItemArray[3].ToString();
                        Image1.Width = 240;
                        Image2.ImageUrl = TImagenXReceta.Rows[1].ItemArray[3].ToString();
                        Image2.Width = 240;
                    }
                    else if (TImagenXReceta.Rows.Count == 1)
                    {
                        Image1.ImageUrl = TImagenXReceta.Rows[0].ItemArray[3].ToString();
                        Image1.Width = 240;
                    }





                }
                
            }
            catch (Exception)
            {

                throw;
            }
            
        }
    }
}