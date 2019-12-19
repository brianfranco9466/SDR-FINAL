using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AparienciaX.Apariencia
{
    public partial class Sopa_de_Recetas_ADMINISTRADOR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SqlUsuarios_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlUsuarios.SelectCommand = GenerarComando();
            SqlUsuarios.DataBind();
            ListView1.DataBind();
        }
        string GenerarComando()
        {
            string comando = "SELECT * FROM Usuario where Tipo=1 ";


            if (TextBox1.Text != string.Empty)
            {
                switch (DropDownList1.SelectedIndex)
                {
                    case 3:
                        comando = comando + "And Nombre";
                        switch (DropDownList2.SelectedIndex)
                        {
                            case 0:
                                comando = comando + " LIKE '" + TextBox1.Text + "'";
                                break;
                            case 1:
                                comando = comando + " LIKE '%" + TextBox1.Text + "' ";
                                break;
                            case 2:
                                comando = comando + " LIKE '" + TextBox1.Text + "%'";
                                break;
                        }
                        break;
                    case 1:
                        comando = comando + "And Dni";
                        switch (DropDownList2.SelectedIndex)
                        {
                            case 0:
                                comando = comando + " LIKE  '" + TextBox1.Text + "'";
                                break;
                            case 1:
                                comando = comando + " LIKE '%" + TextBox1.Text + "' ";
                                break;
                            case 2:
                                comando = comando + " LIKE '" + TextBox1.Text + "%'";
                                break;
                        }
                        break;
                    case 2:
                        comando = comando + "And Email";
                        switch (DropDownList2.SelectedIndex)
                        {
                            case 0:
                                comando = comando + " LIKE  '" + TextBox1.Text + "'";
                                break;
                            case 1:
                                comando = comando + " LIKE '%" + TextBox1.Text + "' ";
                                break;
                            case 2:
                                comando = comando + " LIKE '" + TextBox1.Text + "%'";
                                break;
                        }
                        break;
                    case 0:
                        break;
                }
            }


            return comando;
        }
    }
}