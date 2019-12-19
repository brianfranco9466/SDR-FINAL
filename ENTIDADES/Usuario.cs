using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Usuario
    {
        private int IdUsuario;
        private string Nombre;
        private string Apellido;
        private string Telefono;
        private string Email;
        private int Tipo;
        private string Imagen;
        private string Dni;
        private string Clave;
        private bool Estado;
        

        public Usuario()
        { }

        public Usuario(string email, string clave, string nombre, string apellido, string telefono, string dni)
        {
            Email = email;
            Clave = clave;
            Nombre = nombre;
            Apellido = apellido;
            Telefono = telefono;
            Dni = dni;
            Tipo = 1;
            Estado = true;
            Imagen = "~/Usuarios/Default.png";
        }

        public int GetIdUsuario()
        {
            return IdUsuario;
        }
        public string GetNombre()
        {
            return Nombre;
        }
        public string GetApellido()
        {
            return Apellido;
        }
        public string GetTeléfono()
        {
            return Telefono;
        }
        public string GetEmail()
        {
            return Email;
        }
        public int GetTipo()
        {
            return Tipo;
        }
        public string GetImagen()
        {
            return Imagen;
        }
        public string GetDni()
        {
            return Dni;
        }
        public string GetClave()
        {
            return Clave;
        }
        public bool GetEstado()
        {
            return Estado;
        }


        public void SetIdUsuario(int ID)
        {
            IdUsuario=ID;
        }
        public void SetNombre(string N)
        {
            Nombre=N;
        }
        public void SetApellido(string A)
        {
            Apellido=A;
        }
        public void SetTeléfono(string T)
        {
            Telefono=T;
        }
        public void SetEmail(string E)
        {
            Email=E;
        }
        public void SetTipo(int T)
        {
            Tipo=T;
        }
        public void SetImagen(string I)
        {
            Imagen=I;
        }
        public void SetDni(string D)
        {
            Dni=D;
        }
        public void SetClave(string C)
        {
            Clave=C;
        }
        public void SetEstado(bool E)
        {
            Estado=E;
        }
    }
}
