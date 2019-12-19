using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NEGOCIO;

namespace SDR.Entrada.Apariencia
{
    public partial class Ingreso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Ing_Click(object sender, EventArgs e)
        {
            GestionUsuarios gestorUsuarios = new GestionUsuarios();
            int IdUsuario = gestorUsuarios.LogIn(Txt_Us.Text, Txt_Cl.Text);
            if ( IdUsuario > 0)
            {
                Session["IdUsuario"] = IdUsuario;
                Response.Redirect("~/Centro/Apariencia/Principal.aspx");
            }
            
        }

        protected void Tit_Reg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recuperacion.aspx");
        }
    }
}