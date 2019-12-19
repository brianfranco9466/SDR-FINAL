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
    public class GestionCategorias
    {
        public DataTable ObtenerCategorias()
        {
            DaoCategoria dao = new DaoCategoria();
            return dao.GetTablaCategorias();
        }
    }
}
