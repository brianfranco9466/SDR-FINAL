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
    public class DaoUsuario
    {
        AccesoDatos ds = new AccesoDatos();

        public DataTable GetTablaUsuario()
        {
            //List<Categoria> lista = new List<Categoria>();
            DataTable tabla = ds.ObtenerTabla("Usuario", "Select * from Usuario where Estado=1");
            return tabla;
        }

        public Usuario GetUsuario(int id)
        {
            DataTable dt = new DataTable();
            Usuario us = new Usuario();
            dt = ds.ObtenerTabla("Usuario",
                "SELECT * FROM Usuario WHERE Estado = 1 and IdUsuario=" + id);
            us.SetIdUsuario(Convert.ToInt32(dt.Rows[0][0]));
            us.SetEmail(dt.Rows[0][1].ToString());
            us.SetClave(dt.Rows[0][2].ToString());
            us.SetNombre(dt.Rows[0][3].ToString());
            us.SetApellido(dt.Rows[0][4].ToString());
            us.SetTeléfono(dt.Rows[0][5].ToString());
            us.SetDni(dt.Rows[0][6].ToString());
            us.SetTipo(Convert.ToInt32(dt.Rows[0][7]));
            us.SetEstado((bool)dt.Rows[0][8]);
            us.SetImagen(dt.Rows[0][9].ToString());


            return us;

        }
        public DataTable GetUsuarioLogIn(string email, string clave)
        {
            DataTable tabla = ds.ObtenerTabla("Usuario", 
                "SELECT * FROM Usuario WHERE Estado = 1 AND Email = '" + email + "' AND Clave = '" + clave + "'");
            return tabla;
        }

        public bool ComprobarEmailUsuario(Usuario us)
        {
            DataTable dt = new DataTable();
            dt= ds.ObtenerTabla("Usuario", "SELECT * FROM Usuario WHERE Estado = 1 AND Email = '" + us.GetEmail() + "'");
            if (dt.Rows.Count==0)
            {
                return true;
            }else
            {
                return false;
            }
        }
        public DataTable GetUsuarioPorId(Int64 id)
        {
            return ds.ObtenerTabla("Usuario", "Select * from Usuario where Estado=1 and IdUsuario=" + id);

        }
        public int AgregoUsuario(Usuario r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroInserta(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spInsertarUsuario");
        }
        public int EliminarUsuario(Usuario r)
        {
            SqlCommand comando = new SqlCommand();
            Parametro(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminoUsuario");
        }
        public int ActualizarUsuario(Usuario r)
        {
            SqlCommand comando = new SqlCommand();
            ParametroActualizar(ref comando, r);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarUsuario");
        }
        private void Parametro(ref SqlCommand Comando, Usuario r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt);

            SqlParametros.Value = r.GetIdUsuario();
        }
        private void ParametroInserta(ref SqlCommand Comando, Usuario r)
        {
            SqlParameter SqlParametros = new SqlParameter();

            Comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = r.GetNombre();
            Comando.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = r.GetApellido();
            Comando.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = r.GetTeléfono();
            Comando.Parameters.Add("@Email", SqlDbType.VarChar).Value = r.GetEmail();
            Comando.Parameters.Add("@Tipo", SqlDbType.Bit).Value = true;
            Comando.Parameters.Add("@Imagen", SqlDbType.VarChar).Value = r.GetImagen();
            Comando.Parameters.Add("@Dni", SqlDbType.VarChar).Value = r.GetDni();
            Comando.Parameters.Add("@Clave", SqlDbType.VarChar).Value = r.GetClave();
        }
        private void ParametroActualizar(ref SqlCommand Comando, Usuario r)
        {
            SqlParameter SqlParametros = new SqlParameter();
            Comando.Parameters.Add("@IdUsuario", SqlDbType.BigInt).Value = r.GetIdUsuario();
            Comando.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = r.GetNombre();
            Comando.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = r.GetApellido();
            Comando.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = r.GetTeléfono();
            Comando.Parameters.Add("@Email", SqlDbType.VarChar).Value = r.GetEmail();
            Comando.Parameters.Add("@Tipo", SqlDbType.Bit).Value = r.GetTipo();
            Comando.Parameters.Add("@Imagen", SqlDbType.VarChar).Value = r.GetImagen();
            Comando.Parameters.Add("@Dni", SqlDbType.VarChar).Value = r.GetDni();
            Comando.Parameters.Add("@Clave", SqlDbType.VarChar).Value = r.GetClave();
        }
    }
}



