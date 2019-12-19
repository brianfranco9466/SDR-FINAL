using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ENTIDADES;
using NEGOCIO;

namespace AparienciaX.Apariencia
{
    public partial class Sopa_de_Recetas_REGISTRO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null && Int32.Parse(Session["Usuario"].ToString()) > 0)
            {
                Response.Redirect("Sopa_de_Recetas_PRINCIPAL.aspx");
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
        Usuario CargarUsuario()
        {
            Usuario us = new Usuario();

            us.SetIdUsuario(0);
            us.SetNombre(TxbNombre.Text);
            us.SetApellido(TxbApellido.Text);
            us.SetTeléfono(TxbTelefono.Text);
            us.SetEmail(TxtEmail.Text);
            us.SetTipo(1);
            us.SetImagen("");
            us.SetDni(TxbDni.Text);
            us.SetClave(TxbContraseña.Text);
            us.SetEstado(true);

            return us;
        }
        
        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {

            Usuario us = new Usuario();
            us = CargarUsuario();
            GestionUsuarios nr = new GestionUsuarios();
            if(TxtEmail.Text != "" && TxbTelefono.Text != "" && TxbNombre.Text != "" && TxbDni.Text != "" && TxbContraseña2.Text != "" && TxbContraseña.Text != "" && TxbApellido.Text != "")
            {
                if (TxbContraseña.Text == TxbContraseña2.Text)
                {
                    if (nr.ValidarEmailUsuario(us))
                    {
                        if (nr.RegistrarUsuario(us) == 1)
                        {
                            Response.Redirect("Sopa_de_Recetas_PRINCIPAL.aspx");
                        }
                        else
                        {
                            lblError.Text = "Error. Error al registrar.";
                            lblError.Visible = true;
                        }
                    }
                    else
                    {
                        lblError.Text = "Error. Ya existe ese email.";
                        lblError.Visible = true;
                        TxtEmail.Text = string.Empty;
                    }

                }
                else
                {
                    lblError.Text = "Error. Las contraseñas no coinciden.";
                    lblError.Visible = true;
                    TxbContraseña.Text = string.Empty;
                    TxbContraseña2.Text = string.Empty;
                }
            }
            else
            {
                lblError.Text = "Error. Complete todos los campos.";
                lblError.Visible = true;
            }
        }
    }
}