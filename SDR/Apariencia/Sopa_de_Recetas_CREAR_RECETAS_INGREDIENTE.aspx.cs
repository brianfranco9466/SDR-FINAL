using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;
using ENTIDADES;
namespace SDR.Apariencia
{
    public partial class Sopa_de_Recetas_CREAR_RECETAS_INGREDIENTE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblCorrecto.Text = "Agregado correctamente.";
                lblCorrecto.Visible = true;
            }
        }

        protected void btnAgregarIngrediente_Click(object sender, EventArgs e)
        {
            if(TxtCantidad.Text != "" && TxtDescripcion.Text != "" && DropDownList1.SelectedValue != "0" && TxtNombre.Text != "")
            {
                GestionIngrediente gestorIng = new GestionIngrediente();
                GestionIngXRec gestorIngXRec = new GestionIngXRec();
                List<String[]> LS = new List<String[]>();
                List<Ingrediente> LI = new List<Ingrediente>(); 
               

                LB_Ingredientes.Items.Add(TxtNombre.Text + " " +  TxtCantidad.Text + " " + DropDownList1.Text);
                lblError.Visible = false;
                lblCorrecto.Text = "Agregado correctamente.";
                lblCorrecto.Visible = true;
                
                foreach (ListItem item in LB_Ingredientes.Items)
                {
                    LS.Add(item.Text.Split());
                }
                foreach (String[] item in LS)
                {
                    LI.Add(LS);
                }
                
                
                    /*gestorIng.AgregarIngrediente()
                gestorIng.AgregarIngrediente(TxtNombre.Text, TxtDescripcion.Text, DropDownList1.SelectedItem.Text);
                gestorIngXRec.AgregarIngredienteXReceta(TxtCantidad.Text);
                Response.Redirect("Sopa_de_Recetas_CREAR_RECETAS_INGREDIENTE.aspx");*/

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
            Response.Redirect("Sopa_de_Recetas_CREAR_RECETAS_INSTRUCCIONES.aspx");
        }

        protected void Btn_El_Sel_Click(object sender, EventArgs e)
        {
            if(LB_Ingredientes.Items.Count == 0)
            {
                lblCorrecto.Visible = false;
                lblError.Text = "Error. No hay ningun ingrediente agregado.";
                lblError.Visible = true;
            }
            else
            {

                LB_Ingredientes.Items.RemoveAt(LB_Ingredientes.SelectedIndex);
                lblCorrecto.Visible = true;
                lblCorrecto.Text = "Elemento eliminado correctamente";
                lblError.Visible = false;
            }
            
        }
    }
}