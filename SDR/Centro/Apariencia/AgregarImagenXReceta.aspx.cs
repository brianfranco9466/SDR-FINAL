using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace SDR.Centro.Apariencia
{
    public partial class AgregarImagenXReceta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_AgregarOtraImagen_Click(object sender, EventArgs e)
        {
            GestionImgXRec gestorIXR = new GestionImgXRec();
            string Archivo = Server.MapPath("~/Centro/Apariencia/Imagenes/") + fu_Imagen.FileName;
            fu_Imagen.SaveAs(Archivo);
            gestorIXR.AgregarImagen(Archivo, fu_Imagen.FileName);
            Response.Redirect("AgregarImagenXReceta.aspx");
        }

        protected void btn_AgregarImagen_Click(object sender, EventArgs e)
        {
            GestionImgXRec gestorIXR = new GestionImgXRec();
            string Archivo = Server.MapPath("~/Centro/Apariencia/Imagenes/") + fu_Imagen.FileName;
            if (fu_Imagen.FileName != "")
            {
                fu_Imagen.SaveAs(Archivo);
                gestorIXR.AgregarImagen(Archivo, fu_Imagen.FileName);
            }

            Response.Redirect("Principal.aspx");
        }
    }
}