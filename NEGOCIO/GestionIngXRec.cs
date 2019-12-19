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
    public class GestionIngXRec
    {
        public void AgregarIngredienteXReceta(string cantidad)
        {
            DaoIngredientexReceta daoIXR = new DaoIngredientexReceta();
            DaoIngrediente daoI = new DaoIngrediente();
            DaoReceta daoR = new DaoReceta();
            int codRec = daoR.ObtenerUltimoID();
            int codIng = daoI.ObtenerUltimoID();
            IngredientexReceta ingxrec = new IngredientexReceta(codIng, codRec, cantidad);
            daoIXR.AgregoIngrediente(ingxrec);

        }
        public void AgregarIngredienteXRecetaAReceta(string cantidad, string idReceta)
        {
            DaoIngredientexReceta daoIXR = new DaoIngredientexReceta();
            DaoIngrediente daoI = new DaoIngrediente();
            int codIng = daoI.ObtenerUltimoID();
            IngredientexReceta ingxrec = new IngredientexReceta(codIng, Int32.Parse(idReceta), cantidad);
            daoIXR.AgregoIngrediente(ingxrec);
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
