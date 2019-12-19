using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDR.Apariencia
{
    public partial class Sopa_de_Recetas_PRINCIPAL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.QueryString.HasKeys() && Request.QueryString.Get("cerrar").ToString() != "")
            {
                Session["Usuario"] = null;
            }
            SDL.SelectCommand = "SELECT TOP 5 * FROM Receta ORDER BY Vistos DESC";
            SDL.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Session["Usuario"] != null)
            {
                Response.Redirect("Sopa_de_Recetas_CREAR_RECETAS.aspx");
            }
            else
            {
                Response.Redirect("Sopa_de_Recetas_INGRESO.aspx");
            }
            
        }

        protected void Btn_Ver_Receta_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string id = btn.CommandArgument.ToString();
            Response.Redirect("Sopa_de_Recetas_MOSTRAR_RECETAS.aspx?IdReceta=" + id);
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Sopa_de_Recetas_INFORMACION.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Sopa_de_Recetas_RECETAS.aspx");
        }
    }
}