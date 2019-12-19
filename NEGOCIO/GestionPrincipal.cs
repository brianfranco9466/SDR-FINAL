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
    public class GestionPrincipal
    {

        DaoPrincipal DP = new DaoPrincipal();



        public List<Receta> Busqueda_Principal(String x)
        {
            List<Receta> LR = new List<Receta>();
            try
            {
                LR = DP.Busqueda_Principal(x);
            }
            catch (Exception)
            {

                throw;
            }
            return LR;
        }
    }
}
