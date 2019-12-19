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
    public class DaoIngredientexReceta
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaIngrediente()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("IngredientexReceta", "Select * from IngredientexReceta where Estado=1");
            return tabla;
        }

        public SqlCommand GetIdIngrediente(int id)
        {
            return ds.DevuelveComando("Select * from IngredientexReceta where Estado=1 and IdIngredientexReceta=" + id);

        }
        public int AgregoIngrediente(IngredientexReceta ing)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, ing);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarIngredientexReceta");
        }
        public int EliminarIngrediente(IngredientexReceta ing)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, ing);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoIngredientexReceta");
        }
        public int ActualizarIngrediente(IngredientexReceta ing)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, ing);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarIngredientexReceta");
        }
        private void Parametro(ref SqlCommand Comando, IngredientexReceta ing)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdIngredientexReceta", SqlDbType.BigInt);

            SqlParametros.Value = ing.GetIdIngredientexReceta();
        }
        private void ParametroInserta(ref SqlCommand Comando, IngredientexReceta ing)
        {
            SqlParameter SqlParametros = new SqlParameter();

            Comando.Parameters.Add("@IdIngrediente", SqlDbType.BigInt).Value = ing.GetIdIngrediente();
            Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt).Value = ing.GetIdReceta();
            Comando.Parameters.Add("@Cantidad", SqlDbType.VarChar).Value = ing.GetCantidad();
        }
        private void ParametroActualizar(ref SqlCommand Comando, IngredientexReceta ing)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdIngrediente", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Cantidad", SqlDbType.VarChar);


            SqlParametros.Value = ing.GetIdIngrediente();
            SqlParametros.Value = ing.GetIdReceta();
            SqlParametros.Value = ing.GetCantidad();
        }
    }
}

