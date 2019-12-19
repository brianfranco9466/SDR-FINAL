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
    public class DaoFavorito
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaFavoritos()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Favorito", "Select * from Favorito where Estado=1");
            return tabla;
        }
        public SqlCommand GetIdFavorito(int id)
        {
            return ds.DevuelveComando("Select * from Favorito where Estado=1 and IdFavorito=" + id);

        }
        public int AgregoFavorito(Favoritos fav)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, fav);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarFavorito");
        }
        public int EliminarFavorito(Favoritos fav)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, fav);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoFavorito");
        }
        public int ActualizarFavorito(Favoritos fav)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, fav);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarFavorito");
        }
        private void Parametro(ref SqlCommand Comando, Favoritos fav)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdFavorito", SqlDbType.BigInt);
            
            SqlParametros.Value = fav.GetIdFavorito();   
        }
        private void ParametroInserta(ref SqlCommand Comando, Favoritos fav)
        {
            SqlParameter SqlParametros = new SqlParameter();
            Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt).Value = fav.GetIdUsuario();
            Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt).Value = fav.GetIdReceta();

        }
        private void ParametroActualizar(ref SqlCommand Comando, Favoritos fav)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdFavorito", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@IdReceta", SqlDbType.BigInt);

            SqlParametros.Value = fav.GetIdFavorito();
            SqlParametros.Value = fav.GetIdUsuario();
            SqlParametros.Value = fav.GetIdReceta();
        }
    }
}
