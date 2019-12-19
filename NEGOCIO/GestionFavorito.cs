using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using ENTIDADES;

namespace NEGOCIO
{
    public class GestionFavorito
    {
        DaoFavorito DF = new DaoFavorito();
        public void AgregarAFavoritos(Favoritos fav)
        {
            DF.AgregoFavorito(fav);
        }
    }
}
