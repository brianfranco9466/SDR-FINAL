using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDR.Entrada.Apariencia
{
    public partial class Recuperacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel_Rec_Cont.Visible = false;
                Panel_Camb_Contr.Visible = false;
            }
            
        }

        protected void CBL_R_CheckedChanged(object sender, EventArgs e)
        {

            
            if (CBL_R.Checked)
            {
                Tit_Sel.Visible = false;
                Panel_Rec_Cont.Visible = true;
                Panel_Camb_Contr.Visible = false;
                CBL_C.Checked = false;
            }
            else
            {
                NoMostrar();
            }
            
        }

        protected void CBL_C_CheckedChanged(object sender, EventArgs e)
        {
            if (CBL_C.Checked)
            {
                Tit_Sel.Visible = false;
                Panel_Camb_Contr.Visible = true;
                Panel_Rec_Cont.Visible = false;
                CBL_R.Checked = false;
            }
            else
            {
                NoMostrar();
            }
        }
        private void NoMostrar()
        {
            Panel_Rec_Cont.Visible = false;
            Panel_Camb_Contr.Visible = false;
        }
    }
}