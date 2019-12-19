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
    public class DaoRecetaxImagen
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaRecetaxImagen()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("RecetaxImagen", "Select * from RecetaxImagen where Estado=1");
            return tabla;
        }
        public DataTable GetTablaIdRecetaXImagen(Int64 id)
        {
            return ds.ObtenerTabla("ImagenXReceta", "Select * from RecetaxImagen where Estado=1 and IdReceta=" + id);
        }
        public SqlCommand GetIdRecetaxImagen(int id)
        {
            return ds.DevuelveComando("Select * from RecetaxImagen where Estado=1 and IdRecetaxImg=" + id);

        }
        public int AgregoRecetaxImagen(RecetaxImagen r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarRecetaxImagen");
        }
        public int EliminarRecetaxImagen(RecetaxImagen r)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoRecetaxImagen");
        }
        public int ActualizarRecetaxImagen(RecetaxImagen r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarRecetaxImagen");
        }
        private void Parametro(ref SqlCommand Comando, RecetaxImagen r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdRecetaxImg", SqlDbType.BigInt);



            SqlParametros.Value = r.GetIdRecetaxImg();

        }
        private void ParametroInserta(ref SqlCommand Comando, RecetaxImagen r)
        {
            SqlParameter SqlParametros = new SqlParameter();


            Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt).Value = r.GetIdReceta();
            Comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = r.GetNombre();
            Comando.Parameters.Add("@RutaImagen", SqlDbType.VarChar).Value = r.GetImagen();

            
    }
        private void ParametroActualizar(ref SqlCommand Comando, RecetaxImagen r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt).Value = r.GetIdReceta();
            Comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = r.GetNombre();
            Comando.Parameters.Add("@RutaImagen", SqlDbType.VarChar).Value = r.GetImagen();
    }
    }
}



