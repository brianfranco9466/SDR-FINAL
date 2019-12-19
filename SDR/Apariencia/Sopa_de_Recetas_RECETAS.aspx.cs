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

    public partial class Sopa_de_Recetas_BUSCAR_RECETA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


            if (!IsPostBack)
            {


                Txt_Busqueda.Enabled = false;
                DropDownList3.Enabled = false;
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Txt_Busqueda.Text = "";
            Txt_Busqueda.Enabled = true;
            switch (DropDownList1.SelectedValue)
            {
                case "0":
                    Txt_Busqueda.Enabled = false;
                    break;

                case "1":
                    Txt_Busqueda.TextMode = TextBoxMode.SingleLine;
                    break;
                case "2":
                    Txt_Busqueda.TextMode = TextBoxMode.Date;
                    break;
                case "3":
                    Txt_Busqueda.TextMode = TextBoxMode.Number;
                    break;

                default:

                    break;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList2.SelectedIndex == 0)
            {
                DropDownList3.Enabled = false;
            }
            else
            {
                DropDownList3.Enabled = true;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<Receta> LReceta = new List<Receta>();
            GestionPrincipal GPrincipal = new GestionPrincipal();
            String Valor = "SELECT * from Receta";

            switch (DropDownList1.SelectedIndex)
            {
                case 0:
                    Valor += "";
                    break;
                case 1:
                    Valor += " Where Nombre LIKE '%" + Txt_Busqueda.Text + "%'";
                    break;
                case 2:
                    Valor += " Where FechaDeCreacion LIKE '%" + Txt_Busqueda.Text + "%'";
                    break;
                case 3:
                    Valor += " Where Tiempo LIKE '%" + Txt_Busqueda.Text + "%'";
                    break;

            }

            if (DropDownList2.SelectedIndex != 0)
            {
                switch (DropDownList2.SelectedIndex)
                {
                    case 0:
                        Valor += "";
                        break;
                    case 1:
                        Valor += " Order By Vistos";
                        break;

                }
                switch (DropDownList3.SelectedIndex)
                {
                    case 0:
                        Valor += "";
                        break;
                    case 1:
                        Valor += " ASC";
                        break;
                    case 2:
                        Valor += " DESC";
                        break;
                }
            }


            SDL2.SelectCommand = Valor;
            SDL2.DataBind();
        }

        protected void Btn_Ver_Receta_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            string id = btn.CommandArgument.ToString();
            Response.Redirect("Sopa_de_Recetas_MOSTRAR_RECETAS.aspx?IdReceta=" + id);
        }
        protected void Btn_Seleccion(object sender, CommandEventArgs e)
        {
            Favoritos Fav = new Favoritos();
            GestionFavorito GF = new GestionFavorito();
            if (e.CommandName == "EventoButton")
            {
                Response.Redirect("Sopa_de_Recetas_MOSTRAR_RECETAS.aspx?IdReceta=" + e.CommandArgument);
            }
            else if (e.CommandName == "Evento_Favorito")
            {
                if (Session["Usuario"] != null)
                {

                    Fav.SetIdUsuario(Convert.ToInt32(Session["IdUsuario"]));
                    Fav.SetIdReceta(Convert.ToInt32(e.CommandArgument));
                    GF.AgregarAFavoritos(Fav);
                }
                else
                {
                    Response.Redirect("Sopa_de_Recetas_INFORMACION.aspx");
                }
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SDL2.SelectCommand = "SELECT * from Receta";
            SDL2.DataBind();
            Txt_Busqueda.Text = "";
            DropDownList1.SelectedIndex = -1;
            DropDownList2.SelectedIndex = -1;
            DropDownList3.SelectedIndex = -1;
        }
    }


}
