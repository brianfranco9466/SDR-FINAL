using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace SDR.Apariencia
{
    public partial class Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_IMAGEN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarImagen_Click(object sender, EventArgs e)
        {
            GestionImgXRec gestorIXR = new GestionImgXRec();
            if (fu_Imagen.FileName != "")
            {
                string Archivo = Server.MapPath("~/Apariencia/Imagenes/") + fu_Imagen.FileName;
                fu_Imagen.SaveAs(Archivo);
                gestorIXR.AgregarImagenAReceta(Archivo, fu_Imagen.FileName, Session["RecetaModif"].ToString());
                Response.Redirect("Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_IMAGEN.aspx");
            }
            else
            {
                lblError.Text = "Error. Seleccione una imagen.";
                lblError.Visible = true;
            }

        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_INGREDIENTE.aspx");
        }
    }
}