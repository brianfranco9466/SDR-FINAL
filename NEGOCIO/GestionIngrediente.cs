using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using ENTIDADES;

namespace NEGOCIO
{
    public class GestionIngrediente
    {
        public void AgregarIngrediente(string nom, string det, string med)
        {
            DaoIngrediente daoI = new DaoIngrediente();
            Ingrediente ing = new Ingrediente(nom, det, med);
            daoI.AgregoIngrediente(ing);

        }

        DaoIngrediente DI = new DaoIngrediente();

        public DataTable GestionIngredientesXIdReceta(Int64 x)
        {

            DataTable DTI = new DataTable();

            DTI = DI.GetIngredientesXRecetaXIdReceta(x);
            return DTI;
        }

        public DataTable GestionIngredienteXIdIngrediente(Int64 x)
        {
            DataTable DTI = new DataTable();

            DTI = DI.GetIngredientesXRecetaXIdIngrediente(x);

            return DTI;
        }

    }
}
