using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SDR.Centro.Apariencia
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Rec_Click(object sender, EventArgs e)
        {

        }

        protected void Btn_AgRec_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarReceta.aspx");
        }
    }
}