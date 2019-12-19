using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace SDR.Apariencia
{
    public partial class Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_INSTRUCCIONES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblCorrecto.Text = "Agregado correctamente.";
                lblCorrecto.Visible = true;
            }
        }

        protected void btnAgregarInstruccion_Click(object sender, EventArgs e)
        {
            if(TxtDescripcion.Text != "" && TxtNroOrden.Text != "")
            {
                GestionInsXRec gestorInsXRec = new GestionInsXRec();

                gestorInsXRec.AgregarInstruccionAReceta(Session["RecetaModif"].ToString(), TxtDescripcion.Text, TxtNroOrden.Text);

                Response.Redirect("Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_INSTRUCCIONES.aspx");
            }
            else
            {
                lblCorrecto.Visible = false;
                lblError.Text = "Error. Complete los campos.";
                lblError.Visible = true;
            }
        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sopa_de_Recetas_PRINCIPAL.aspx");
        }
    }
}