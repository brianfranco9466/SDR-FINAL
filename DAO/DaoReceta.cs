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
    public class DaoReceta
    {
        AccesoDatos ds = new AccesoDatos();

        public int ObtenerUltimoID()
        {
            DataTable tabla = ds.ObtenerTabla("RECETA", "SELECT * FROM Receta");
            return tabla.Rows.Count;
        }

        public DataTable GetTablaReceta()
        {
            DataTable tabla = ds.ObtenerTabla("Receta", "Select * from Receta where Estado=1");
            return tabla;
        }

        public DataTable GetRecetaPorId(int id)
        {
            return ds.ObtenerTabla("Receta" , "Select * from Receta where Estado=1 and IdReceta=" + id);

        }
        public int AgregoReceta(Receta r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarReceta");
        }
        public int EliminarReceta(Receta r)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoReceta");
        }
        public int ActualizarReceta(Receta r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarReceta");
        }
        public int ActualizarVistos(int idReceta)
        {
            SqlCommand comando = new SqlCommand();
            ParametroVistos(ref comando, idReceta);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarVistos");
        }
        private void Parametro(ref SqlCommand Comando, Receta r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt);

            SqlParametros.Value = r.GetIdReceta();
        }
        private void ParametroVistos(ref SqlCommand comando, int IdReceta)
        {
            comando.Parameters.Add("@IdReceta", SqlDbType.BigInt).Value = IdReceta;
        }
        private void ParametroInserta(ref SqlCommand Comando, Receta r)
        {
            SqlParameter SqlParametros = new SqlParameter();

            
            Comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = r.GetNombre();;
            Comando.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = r.GetDescripcion();
            Comando.Parameters.Add("@Dificultad", SqlDbType.VarChar).Value = r.GetDificultad();
            Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt).Value = r.GetIdUsuario();
            Comando.Parameters.Add("@Tiempo", SqlDbType.VarChar).Value = r.GetTiempo();
            Comando.Parameters.Add("@ImagenEnlace", SqlDbType.VarChar).Value = r.GetEnlaceImagen();
            Comando.Parameters.Add("@FechaDeCreacion", SqlDbType.Date).Value = r.GetFechaDeCreacion();

        }
        private void ParametroActualizar(ref SqlCommand Comando, Receta r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt).Value = r.GetIdReceta();
            Comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = r.GetNombre();
            Comando.Parameters.Add("@Descripcion", SqlDbType.VarChar).Value = r.GetDescripcion();
            Comando.Parameters.Add("@Dificultad", SqlDbType.VarChar).Value = r.GetDificultad();
            Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt).Value = r.GetIdUsuario();
            Comando.Parameters.Add("@Tiempo", SqlDbType.VarChar).Value = r.GetTiempo();
            Comando.Parameters.Add("@ImagenEnlace", SqlDbType.VarChar).Value = r.GetEnlaceImagen();
            Comando.Parameters.Add("@FechaDeCreacion", SqlDbType.Date).Value = r.GetFechaDeCreacion();
        }
    }
}
