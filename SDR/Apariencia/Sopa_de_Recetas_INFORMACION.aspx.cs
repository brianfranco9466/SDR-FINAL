using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AparienciaX.Apariencia
{
    public partial class Sopa_de_Recetas_INFORMACION : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
        }
    }
}