using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace SDR.Apariencia
{
    public partial class Sopa_de_Receetas_MODIFICAR_MIS_RECETAS_INGREDIENTE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblCorrecto.Text = "Modificado correctamente.";
                lblCorrecto.Visible = true;
            }
        }

        protected void btnAgregarIngrediente_Click(object sender, EventArgs e)
        {
            if (TxtCantidad.Text != "" && TxtDescripcion.Text != "" && TxtMedida.Text != "" && TxtNombre.Text != "")
            {
                GestionIngrediente gestorIng = new GestionIngrediente();
                GestionIngXRec gestorIngXRec = new GestionIngXRec();
                gestorIng.AgregarIngrediente(TxtNombre.Text, TxtDescripcion.Text, TxtMedida.Text);
                gestorIngXRec.AgregarIngredienteXRecetaAReceta(TxtCantidad.Text, Session["RecetaModif"].ToString());
                Response.Redirect("Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_INGREDIENTE.aspx");
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
            Response.Redirect("Sopa_de_Recetas_MODIFICAR_MIS_RECETAS_INSTRUCCIONES.aspx");
        }
    }
}