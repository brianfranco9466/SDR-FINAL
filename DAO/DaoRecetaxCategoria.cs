using ENTIDADES;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class DaoRecetaxCategoria
    {

        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaRecetaxCategorias()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("RecetaxCategoria", "Select * from RecetaxCategoria where Estado=1");
            return tabla;
        }
        public RecetaxCategoria GetCategoria(int id)
        {
            RecetaxCategoria cat = new RecetaxCategoria();
            DataTable tabla = ds.ObtenerTabla("RecetaxCategoria", "Select * from RecetaxCategoria where IdRecetaxCategoria=" + id);
            cat.SetIdRecetaxCategoria(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            cat.SetIdCategoria(Convert.ToInt32(tabla.Rows[0][1].ToString()));
            cat.SetIdReceta(Convert.ToInt32(tabla.Rows[0][2].ToString()));
            return cat;
        }
        public int AgregoCategoria(RecetaxCategoria cat)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarRecetaxCategoria");
        }
        public int EliminarCategoria(RecetaxCategoria cat)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoRecetaxCategoria");
        }
        public int ActualizarCategoria(RecetaxCategoria cat)
        {
            SqlCommand comando = new SqlCommand();
            ParametroA(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarRecetaxCategoria");
        }
        private void Parametro(ref SqlCommand Comando, RecetaxCategoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdRecetaxCategoria", SqlDbType.BigInt);
            SqlParametros.Value = cat.GetIdRecetaxCategoria();
        }
        private void ParametroInserta(ref SqlCommand Comando, RecetaxCategoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdCategoria", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.BigInt);
            SqlParametros.Value = cat.GetIdCategoria();
            SqlParametros.Value = cat.GetIdReceta();
        }
        private void ParametroA(ref SqlCommand Comando, RecetaxCategoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdRecetaxCategoria", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdCategoria", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt);
     
            SqlParametros.Value = cat.GetIdCategoria();
            SqlParametros.Value = cat.GetIdCategoria();
            SqlParametros.Value = cat.GetIdReceta();
        }
    }


}
