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
    public class DaoCategoria
    {
    
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaCategorias()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Categoria", "Select * from Categoria where estado=1");
            return tabla;
        }
        public Categoria GetCategoria(int id)
        {
            Categoria cat = new Categoria();
            DataTable tabla = ds.ObtenerTabla("Categoria", "Select * from Categoria where IdCategoria=" + id);
            cat.SetIdCategoria(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            cat.SetNombre(tabla.Rows[0][1].ToString());
            return cat;
        }
        public int AgregoCategoria(Categoria cat)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarCategoria");
        }
        public int EliminarCategoria(Categoria cat)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoCategoria");
        }
        public int ActualizarCategoria(Categoria cat)
        {
            SqlCommand comando = new SqlCommand();
            ParametroA(ref comando, cat);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarCategoria");
        }
        private void Parametro(ref SqlCommand Comando, Categoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdCategoria", SqlDbType.BigInt);
            SqlParametros.Value = cat.GetIdCategoria();
        }
        private void ParametroInserta(ref SqlCommand Comando, Categoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.VarChar);
            SqlParametros.Value = cat.GetNombre();
        }
        private void ParametroA(ref SqlCommand Comando, Categoria cat)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdCategoria", SqlDbType.BigInt);
            SqlParametros = Comando.Parameters.Add("@Nombre", SqlDbType.VarChar);
            SqlParametros.Value = cat.GetIdCategoria();
            SqlParametros.Value = cat.GetNombre();
        }
    }


}
