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
    public class DaoInstruccion
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaInstruccion()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Instruccion", "Select * from Instruccion where Estado=1");
            return tabla;
        }

        public DataTable ObtenerInstruccionesXIdReceta(Int64 id)
        {
            DataTable tabla = ds.ObtenerTabla("Instruccion", "Select * from Instruccion where Estado=1 AND IdReceta = " + id);
            return tabla;
        }

        public SqlCommand GetIdInstruccion(int id)
        {
            return ds.DevuelveComando("Select * from Instruccion where Estado=1 and IdInstruccion=" + id);

        }
        public int AgregoInstruccion(Instruccion ins)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, ins);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarInstruccion");
        }
        public int EliminarInstruccion(Instruccion ins)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, ins);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoInstruccion");
        }
        public int ActualizarInstruccion(Instruccion ins)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, ins);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarInstruccion");
        }
        private void Parametro(ref SqlCommand Comando, Instruccion ins)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdInstruccion", SqlDbType.BigInt);

            
            SqlParametros.Value = ins.GetIdInstruccion();
    }
        private void ParametroInserta(ref SqlCommand Comando, Instruccion ing)
        {
            SqlParameter SqlParametros = new SqlParameter();

            Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt).Value = ing.GetIdReceta();
            Comando.Parameters.Add("@IdOrden", SqlDbType.BigInt).Value = ing.GetIdOrden();
            Comando.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = ing.GetDescripcion();
            
        }
        private void ParametroActualizar(ref SqlCommand Comando, Instruccion ing)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdInstruccion", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdOrden", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Descripcion", SqlDbType.VarChar);


            SqlParametros.Value = ing.GetIdInstruccion();
            SqlParametros.Value = ing.GetIdReceta();
            SqlParametros.Value = ing.GetIdOrden();
            SqlParametros.Value = ing.GetDescripcion();
            
        }
    }
}


