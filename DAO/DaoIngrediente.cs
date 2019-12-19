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
    public class DaoIngrediente
    {
        AccesoDatos ds = new AccesoDatos();
        public int ObtenerUltimoID()
        {
            DataTable tabla = ds.ObtenerTabla("Ingrediente", "SELECT * FROM Ingrediente");
            return tabla.Rows.Count;
        }
        public DataTable GetIngredientesXRecetaXIdReceta(Int64 id)
        {
            DataTable DT = new DataTable();

            DT = ds.ObtenerTabla("IngredienteXReceta", "Select * from IngredienteXReceta where Estado=1 and IdReceta=" + id);

            return DT;

        }
        public DataTable GetIngredientesXRecetaXIdIngrediente(Int64 id)
        {
            DataTable DT = new DataTable();
            DT = ds.ObtenerTabla("Ingrediente", "Select * from Ingrediente where Estado=1  and IdIngrediente=" + id);

            return DT;
        }

        public DataTable GetTablaIngrediente()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Ingrediente", "Select * from Ingrediente where Estado=1");
            return tabla;
        }

        public SqlCommand GetIdIngrediente(int id)
        {
            return ds.DevuelveComando("Select * from Ingrediente where Estado=1 and IdIngrediente=" + id);

        }
        public int AgregoIngrediente(Ingrediente ing)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, ing);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarIngrediente");
        }
        public int EliminarIngrediente(Ingrediente ing)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, ing);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoIngrediente");
        }
        public int ActualizarIngrediente(Ingrediente ing)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, ing);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarIngrediente");
        }
        private void Parametro(ref SqlCommand Comando, Ingrediente ing)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdIngrediente", SqlDbType.BigInt);
            
            SqlParametros.Value = ing.GetIdIngrediente();
            
        }
        private void ParametroInserta(ref SqlCommand Comando, Ingrediente ing)
        {
            SqlParameter SqlParametros = new SqlParameter();
            
            Comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = ing.GetNombre();
            Comando.Parameters.Add("@Detalle", SqlDbType.VarChar).Value = ing.GetDetalle();
            Comando.Parameters.Add("@Medida", SqlDbType.VarChar).Value = ing.GetMedida();
           
        }
        private void ParametroActualizar(ref SqlCommand Comando, Ingrediente ing)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdIngrediente", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.VarChar);
            SqlParametros = Comando.Parameters.Add("@Detalle", SqlDbType.VarChar);
            SqlParametros = Comando.Parameters.Add("@Medida", SqlDbType.VarChar);

            SqlParametros.Value = ing.GetIdIngrediente();
            SqlParametros.Value = ing.GetNombre();
            SqlParametros.Value = ing.GetDetalle();
            SqlParametros.Value = ing.GetMedida();
        }
    }
}
