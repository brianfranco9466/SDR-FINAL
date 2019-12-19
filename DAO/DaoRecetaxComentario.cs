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
    public class DaoRecetaxComentario
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaRecetaxComentario()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("RecetaxComentario", "Select * from RecetaxComentario where estado=1");
            return tabla;
        }

        public SqlCommand GetIdRecetaxComentario(int id)
        {
            return ds.DevuelveComando("Select * from RecetaxComentario where Estado=1 and IdRecetaxComentario=" + id);

        }
        public int AgregoRecetaxComentario(RecetaxComentario r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarRecetaxComentario");
        }
        public int EliminarRecetaxComentario(RecetaxComentario r)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoRecetaxComentario");
        }
        public int ActualizarRecetaxComentario(RecetaxComentario r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarRecetaxComentario");
        }
        private void Parametro(ref SqlCommand Comando, RecetaxComentario r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdRecetaxComentario", SqlDbType.BigInt);

            SqlParametros.Value = r.GetIdRecetaxComentario();
        }
        private void ParametroInserta(ref SqlCommand Comando, RecetaxComentario r)
        {
            SqlParameter SqlParametros = new SqlParameter();


            SqlParametros = Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Fecha", SqlDbType.SmallDateTime);
            SqlParametros = Comando.Parameters.Add("@Comentario", SqlDbType.VarChar);


            SqlParametros.Value = r.GetIdUsuario();
            SqlParametros.Value = r.GetFecha();
            SqlParametros.Value = r.GetComentario();
    }
        private void ParametroActualizar(ref SqlCommand Comando, RecetaxComentario r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdRecetaxComentario", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Fecha", SqlDbType.SmallDateTime);
            SqlParametros = Comando.Parameters.Add("@Comentario", SqlDbType.VarChar);


            SqlParametros.Value = r.GetIdRecetaxComentario();
            SqlParametros.Value = r.GetIdUsuario();
            SqlParametros.Value = r.GetFecha();
            SqlParametros.Value = r.GetComentario();
    }
    }
}


