using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using NEGOCIO;

namespace AparienciaX.Apariencia
{
    public partial class Sopa_de_Recetas_MODIFICAR_MIS_RECETAS : System.Web.UI.Page
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

                GestionRecetas gestorReceta = new GestionRecetas();

                Session["RecetaModif"] = 1;

                DataTable tabla = gestorReceta.GetReceta(Session["RecetaModif"].ToString());

                TxtDescripcion.Text = tabla.Rows[0].ItemArray[6].ToString();
                TxtDuracion.Text = tabla.Rows[0].ItemArray[4].ToString();
                TxtTitulo.Text = tabla.Rows[0].ItemArray[2].ToString();
                if(tabla.Rows[0].ItemArray[3].ToString() == "Baja")
                {
                    ddl_Dificultad.SelectedIndex = 0;
                } else if (tabla.Rows[0].ItemArray[3].ToString() == "Media")
                {
                    ddl_Dificultad.SelectedIndex = 1;
                } else if (tabla.Rows[0].ItemArray[3].ToString() == "Alta")
                {
                    ddl_Dificultad.SelectedIndex = 2;
                }


            }
        }
       
        protected void btnModificarReceta_Click(object sender, EventArgs e)
        {
            if (TxtDescripcion.Text != "" && TxtDuracion.Text != "" && TxtTitulo.Text != ""
                && ddl_Categoria.SelectedIndex != -1 && ddl_Dificultad.SelectedIndex != -1)
            {
                //string Archivo = Server.MapPath("~/Centro/Apariencia/Imagenes/") + fu_Imagen.FileName;
                //fu_Imagen.SaveAs(Archivo);
                GestionRecetas gestorRecetas = new GestionRecetas();
                gestorRecetas.ModificarReceta(Session["RecetaModif"].ToString(), Int32.Parse(Session["Usuario"].ToString()) , TxtTitulo.Text, TxtDescripcion.Text, TxtDuracion.Text, ddl_Categoria.SelectedValue, ddl_Dificultad.SelectedValue);
                Response.Redirect("Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_IMAGEN.aspx");
            }
            else
            {
                lblError.Text = "Error. Complete todos los campos.";
                lblError.Visible = true;
            }
        }
    }
}