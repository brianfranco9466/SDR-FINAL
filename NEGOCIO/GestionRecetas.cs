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
    public class GestionRecetas
    {
        public void AgregarReceta(int IdUsuario, string Nombre, string Descripcion, string Duracion, string Categorias, string Dificultad)
        {
            DaoReceta daoRec = new DaoReceta();
            Receta Rec = new Receta(IdUsuario, Nombre, Descripcion, Duracion, Dificultad);
            daoRec.AgregoReceta(Rec);
        }

        public void ModificarReceta(string IdReceta , int IdUsuario, string Nombre, string Descripcion, string Duracion, string Categorias, string Dificultad)
        {
            DaoReceta daoRec = new DaoReceta();
            Receta Rec = new Receta(Int32.Parse(IdReceta),IdUsuario, Nombre, Descripcion, Duracion, Dificultad);
            daoRec.ActualizarReceta(Rec);
        }

        public void IncrementarVistas(string idReceta)
        {
            DaoReceta daoRec = new DaoReceta();
            daoRec.ActualizarVistos(Int32.Parse(idReceta));
        }

        public DataTable GetReceta(string cod)
        {
            DaoReceta daoRec = new DaoReceta();

            DataTable tabla = daoRec.GetRecetaPorId(Int32.Parse(cod));

            return tabla;
        }


    }
}
