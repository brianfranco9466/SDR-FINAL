using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using ENTIDADES;

namespace NEGOCIO
{
    public class GestionUsuarios
    {
        public int LogIn(string email, string clave)
        {
            DaoUsuario Dao = new DaoUsuario();
            DataTable tabla = Dao.GetUsuarioLogIn(email, clave);
            if (tabla.Rows.Count == 1)
            {
                return Int32.Parse(tabla.Rows[0].ItemArray[0].ToString());
            }
            else
            {
                return 0;
            }
        }

        public bool TipoDeUsuario(string email, string clave)
        {
            DaoUsuario Dao = new DaoUsuario();
            DataTable tabla = Dao.GetUsuarioLogIn(email, clave);
            return (bool)tabla.Rows[0].ItemArray[7];
        }

        public int ObtenerID(string email, string clave)
        {
            DaoUsuario Dao = new DaoUsuario();
            DataTable tabla = Dao.GetUsuarioLogIn(email, clave);
            return Int32.Parse(tabla.Rows[0].ItemArray[0].ToString());
        }

        //public bool Registrarse(string email, string clave, string nombre, string apellido, string telefono, string dni)
        //{
        //    DaoUsuario Dao = new DaoUsuario();
        //    Usuario usu = new Usuario(email, clave, nombre, apellido, telefono, dni);
        //    int filasAfectadas = Dao.AgregoUsuario(usu);
        //    if(filasAfectadas == 1)
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        return false;
        //    }
        //}

        public Usuario ObternerUsuario(int Id)
        {
            Usuario us = new Usuario();
            DaoUsuario dus = new DaoUsuario();
            us=dus.GetUsuario(Id);
            
            return us;
        }

        public int ActualizarUsuario(Usuario us)
        {
            DaoUsuario dus = new DaoUsuario();
            return dus.ActualizarUsuario(us);
        }

        public int RegistrarUsuario(Usuario us)
        {
            
            DaoUsuario nUsuario = new DaoUsuario();
            return nUsuario.AgregoUsuario(us);
            
        }

        public bool ValidarEmailUsuario(Usuario us)
        {
            DaoUsuario dus = new DaoUsuario();
            if (dus.ComprobarEmailUsuario(us)) 
            {
                return true;
            }
            else
            {
                return false; ;
            }
        }

        public DataTable ObtenerNombreUsuarioPorId(Int64 IdUsuario)
        {
            DaoUsuario x = new DaoUsuario();
            DataTable DTU = new DataTable();

            DTU = x.GetUsuarioPorId(IdUsuario);

            return DTU;
        }
    }
}