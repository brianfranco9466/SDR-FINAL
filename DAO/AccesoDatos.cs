using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class AccesoDatos
    {
    
        String RutaDB =
         "Data Source=localhost\\sqlexpress;Initial Catalog=SDR;Integrated Security=True";

        public AccesoDatos()
        {
            // TODO: Agregar aquí la lógica del constructor
        }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(RutaDB);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        private SqlDataAdapter ObtenerAdaptador(String consultaSql, SqlConnection cn)
        {
            SqlDataAdapter adaptador;
            try
            {
                adaptador = new SqlDataAdapter(consultaSql, cn);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable ObtenerTabla(String NombreTabla, String Sql)
        {
            DataSet ds = new DataSet();
            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(Sql, Conexion);
            adp.Fill(ds, NombreTabla);
            Conexion.Close();
            return ds.Tables[NombreTabla];
        }


        public SqlCommand DevuelveComando(string consulta)
        {
            try
            {
                SqlConnection con = ObtenerConexion();
                SqlCommand cmd = new SqlCommand(consulta, con);

                //cmd.ExecuteReader();
                return cmd;
            }
            catch (Exception ex)
            {
                return null;
            }
        }



        public int EjecutarProcedimientoAlmacenado(SqlCommand Comando, String NombreSP)
        {
            int FilasCambiadas;
            SqlConnection Conexion = ObtenerConexion();
            SqlCommand cmd = new SqlCommand();
            cmd = Comando;
            cmd.Connection = Conexion;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = NombreSP;
            FilasCambiadas = cmd.ExecuteNonQuery();
            Conexion.Close();
            return FilasCambiadas;
        }
        public SqlCommand Consulta(String x)
        {
            SqlConnection Conexion = new SqlConnection(RutaDB);
            SqlCommand cmd = new SqlCommand(x, Conexion);
            Conexion.Open();
            return cmd;
        }
        public SqlDataReader Lectura(SqlCommand cmd)
        {
            SqlDataReader sdr = cmd.ExecuteReader();

            return sdr;
        }
    }
}
