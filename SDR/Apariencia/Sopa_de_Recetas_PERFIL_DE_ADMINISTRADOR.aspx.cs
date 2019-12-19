using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;
using ENTIDADES;


namespace AparienciaX.Apariencia
{
    public partial class Sopa_de_Recetas_PERFIL_DE_ADMINISTRADOR : System.Web.UI.Page
    {
        GestionUsuarios gu = new GestionUsuarios();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ActualizarTxbDb();
        }

        protected void btnModificarPerfil_Click(object sender, EventArgs e)
        {
            btnModificarPerfil.Visible = false;
            TxtNombre.ReadOnly = false;
            TxtApellido.ReadOnly = false;
            TxtDni.ReadOnly = false;
            TxtEmail.ReadOnly = false;
            TxtTelefono.ReadOnly = false;
            AbrirArchivo.Visible = true;
            btnGuardarPerfil.Visible = true;
        }

        protected void btnGuardarPerfil_Click(object sender, EventArgs e)
        {
            GestionUsuarios gu = new GestionUsuarios();
            Usuario us = new Usuario();

            us = CargarDatos();

            btnGuardarPerfil.Visible = false;
            TxtNombre.ReadOnly = true;
            TxtApellido.ReadOnly = true;
            TxtDni.ReadOnly = true;
            TxtEmail.ReadOnly = true;
            TxtTelefono.ReadOnly = true;
           
            btnModificarPerfil.Visible = true;
            AbrirArchivo.Visible = false;


            if (gu.ActualizarUsuario(us)==1)
            {
                Response.Redirect("Sopa_de_Recetas_PERFIL_DE_ADMINISTRADOR.aspx");
            }
        }

        Usuario CargarDatos()
        {
            Usuario us = new Usuario();
            GestionUsuarios gu = new GestionUsuarios();
            us =gu.ObternerUsuario((int)Session["Usuario"]);
            us.SetNombre(TxtNombre.Text);
            us.SetApellido(TxtApellido.Text);
            us.SetDni(TxtDni.Text);
            us.SetEmail(TxtEmail.Text);
            us.SetTeléfono(TxtTelefono.Text);
            us.SetImagen(AbrirArchivo.FileName);

            return us;
        }

        void ActualizarTxbDb()
        {
            Usuario us = new Usuario();
            GestionUsuarios gu = new GestionUsuarios();
            us = gu.ObternerUsuario((int)Session["Usuario"]);

            TxtNombre.Text = us.GetNombre();
            TxtApellido.Text = us.GetApellido();
            TxtDni.Text = us.GetDni();
            TxtEmail.Text = us.GetEmail();
            TxtTelefono.Text = us.GetTeléfono();
            ImagenPerfil.ImageUrl = "Imagenes/" + us.GetImagen();
        }

        protected void BtnCollapse_Click(object sender, EventArgs e)
        {
            TxtContr1.Visible = true;
            TxtContr2.Visible = true;
            btnCambiarContra.Visible = true;
            BtnCollapse.Visible = false;
            TxtContr1.Text = string.Empty;
            TxtContr2.Text = string.Empty;
        }

        protected void btnCambiarContra_Click(object sender, EventArgs e)
        {
            Usuario us = new Usuario();
            GestionUsuarios gu = new GestionUsuarios();
            us = gu.ObternerUsuario((int)Session["Usuario"]);
            us.SetClave(TxtContr1.Text);
            if (TxtContr1.Text==TxtContr2.Text) {
                TxtContr1.Visible = false;
                TxtContr2.Visible = false;
                btnCambiarContra.Visible = false;
                BtnCollapse.Visible = true;

                if (gu.ActualizarUsuario(us) == 1)
                {
                    Response.Redirect("Sopa_de_Recetas_PERFIL_DE_ADMINISTRADOR.aspx");
                }
            }
            else
            {
                
            }
        }
    }
}