using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using ENTIDADES;
using DAO;

namespace NEGOCIO
{
    public class GestionImgXRec
    {
        public void AgregarImagen(string imagenURL, string nombre)
        {
            DaoRecetaxImagen dao = new DaoRecetaxImagen();
            DaoReceta daor = new DaoReceta();
            int id = daor.ObtenerUltimoID();
            RecetaxImagen rxi = new RecetaxImagen(id, imagenURL, nombre);
            dao.AgregoRecetaxImagen(rxi);
        }

        public void AgregarImagenAReceta(string imagenURL, string nombre, string idReceta)
        {
            DaoRecetaxImagen dao = new DaoRecetaxImagen();
            RecetaxImagen rxi = new RecetaxImagen(Int32.Parse(idReceta), imagenURL, nombre);
            dao.AgregoRecetaxImagen(rxi);
        }


        public DataTable TablaImagenXIDReceta(Int64 x)
        {
            DataTable DT = new DataTable();
            DaoRecetaxImagen dao = new DaoRecetaxImagen();

            DT = dao.GetTablaIdRecetaXImagen(x);

            return DT;
        }
    }
}
