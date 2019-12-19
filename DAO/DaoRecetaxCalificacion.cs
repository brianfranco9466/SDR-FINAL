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
    public class DaoRecetaxCalificacion
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaRecetaxCalificacion()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("RecetaxCalificacion", "Select * from RecetaxCalificacion where Estado=1");
            return tabla;
        }

        public SqlCommand GetIdRecetaxCalificacion(int id)
        {
            return ds.DevuelveComando("Select * from RecetaxCalificacion where estado=1 and IdRecetaxCalificacion=" + id);

        }
        public int AgregoRecetaxCalificacion(RecetaxCalificacion r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarRecetaxCalificacion");
        }
        public int EliminarRecetaxCalificacion(RecetaxCalificacion r)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoRecetaxCalificacion");
        }
        public int ActualizarRecetaxCalificacion(RecetaxCalificacion r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarRecetaxCalificacion");
        }
        private void Parametro(ref SqlCommand Comando, RecetaxCalificacion r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdRecetaxCalificacion", SqlDbType.BigInt);

            SqlParametros.Value = r.GetIdRecetaxCalificacion();
        }
        private void ParametroInserta(ref SqlCommand Comando, RecetaxCalificacion r)
        {
            SqlParameter SqlParametros = new SqlParameter();


            SqlParametros = Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Calificación", SqlDbType.Int);

            
            SqlParametros.Value = r.GetIdUsuario();
            SqlParametros.Value = r.GetIdReceta();
            SqlParametros.Value = r.GetCalificación();
            

    }
        private void ParametroActualizar(ref SqlCommand Comando, RecetaxCalificacion r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdRecetaxCalificacion", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Calificación", SqlDbType.Int);


            SqlParametros.Value = r.GetIdRecetaxCalificacion();
            SqlParametros.Value = r.GetIdReceta();
            SqlParametros.Value = r.GetIdUsuario();
            SqlParametros.Value = r.GetCalificación();
    }
    }
}

