using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace AparienciaX.Apariencia
{
    public partial class Sopa_de_Recetas_CREAR_RECETAS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GestionCategorias gestorCategorias = new GestionCategorias();
                ddl_Dificultad.Items.Add("Baja");
                ddl_Dificultad.Items.Add("Media");
                ddl_Dificultad.Items.Add("Alta");
                ddl_Categoria.DataSource = gestorCategorias.ObtenerCategorias();
                ddl_Categoria.DataValueField = "IdCategoria";
                ddl_Categoria.DataTextField = "Nombre";
                ddl_Categoria.DataBind();
            }
        }

        protected void btnAgregarReceta_Click(object sender, EventArgs e)
        {
            if (TxtDescripcion.Text != "" && TxtDuracion.Text != "" && TxtTitulo.Text != ""
                && ddl_Categoria.SelectedIndex != -1 && ddl_Dificultad.SelectedIndex != -1)
            {
                //string Archivo = Server.MapPath("~/Centro/Apariencia/Imagenes/") + fu_Imagen.FileName;
                //fu_Imagen.SaveAs(Archivo);
                GestionRecetas gestorRecetas = new GestionRecetas();
                gestorRecetas.AgregarReceta(Int32.Parse(Session["Usuario"].ToString()), TxtTitulo.Text, TxtDescripcion.Text, TxtDuracion.Text, ddl_Categoria.SelectedValue, ddl_Dificultad.SelectedValue);
                Response.Redirect("Sopa_de_Recetas_CREAR_RECETAS_IMAGEN.aspx");
            }
            else
            {
                lblError.Text = "Error. Complete todos los campos.";
                lblError.Visible = true;
            }
        }
    }
}