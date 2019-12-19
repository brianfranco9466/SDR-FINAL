using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using ENTIDADES;
namespace DAO
{
    public class DaoPrincipal
    {
        AccesoDatos Ds = new AccesoDatos();

        public List<Receta> Busqueda_Principal(string x)
        {
            SqlDataReader NdT;
            List<Receta> NLRec = new List<Receta>();

            try
            {
                SqlCommand cmd = Ds.Consulta(x);
                NdT = Ds.Lectura(cmd);

                while (NdT.Read())
                {
                    Receta nR = new Receta();
                    nR.SetIdReceta(NdT.GetInt64(0));
                    nR.SetNombre(NdT.GetString(1));
                    nR.SetImagenEnlace(NdT.GetString(2));
                    nR.SetDificultad(NdT.GetString(3));
                    nR.SetTiempo(NdT.GetString(4));
                    nR.SetVistos(NdT.GetInt32(5));


                    NLRec.Add(nR);
                }



                return NLRec;

            }
            catch (Exception)
            {

                throw;
            }
        }

    }
}
