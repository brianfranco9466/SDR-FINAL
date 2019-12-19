using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace SDR.Centro.Apariencia
{
    public partial class AgregarReceta : System.Web.UI.Page
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

        protected void btn_Agregar_Click(object sender, EventArgs e)
        {
            
            if (txt_Descripcion.Text != "" && txt_Duracion.Text != "" && txt_Nombre.Text != "" 
                && ddl_Categoria.SelectedIndex != -1 && ddl_Dificultad.SelectedIndex != -1)
            {
                //string Archivo = Server.MapPath("~/Centro/Apariencia/Imagenes/") + fu_Imagen.FileName;
                //fu_Imagen.SaveAs(Archivo);
                GestionRecetas gestorRecetas = new GestionRecetas();
                gestorRecetas.AgregarReceta( 1, txt_Nombre.Text, txt_Descripcion.Text, txt_Duracion.Text, ddl_Categoria.SelectedValue, ddl_Dificultad.SelectedValue);
                Response.Redirect("AgregarImagenXReceta.aspx");
            }
            else
            {
                lbl_Error.Visible = true;
            }
        }
    }
}