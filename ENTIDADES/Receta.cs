using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Receta
    {
        private Int64 IdReceta;
        private string Nombre;
        private string Descripcion;
        private string Dificultad;
        private int IdUsuario;
        private string Tiempo;
        private int Vistos;
        private bool Estado;
        private string FechaDeCreacion;
        private string EnlaceImagen;

        public Receta()
        { }
        public Receta(int idrec,int id, string nom, string desc, string dur, string dif)
        {
            IdReceta = idrec;
            Nombre = nom;
            Descripcion = desc;
            Tiempo = dur;
            Dificultad = dif;
            Vistos = 0;
            Estado = true;
            IdUsuario = id;
            EnlaceImagen = "Imagenes/Icono_Recetas.jpg";
        }
        public Receta(int id, string nom, string desc, string dur, string dif)
        {
            Nombre = nom;
            Descripcion = desc;
            Tiempo = dur;
            Dificultad = dif;
            Vistos = 0;
            Estado = true;
            IdUsuario = id;
            EnlaceImagen = "Imagenes/Icono_Recetas.jpg";
        }
        public Receta(int idrec, int id, string nom, string desc, string dur, string dif, int vis)
        {
            IdReceta = idrec;
            Nombre = nom;
            Descripcion = desc;
            Tiempo = dur;
            Dificultad = dif;
            Vistos = vis;
            Estado = true;
            EnlaceImagen = "Imagenes/Icono_Recetas.jpg";
        }

        public string GetEnlaceImagen()
        {
            return EnlaceImagen;
        }
        public string GetFechaDeCreacion()
        {
            return DateTime.Now.ToShortDateString();
        }
        public Int64 GetIdReceta()
        {
            return IdReceta;
        }
        public string GetNombre()
        {
            return Nombre;
        }
        public string GetDescripcion()
        {
            return Descripcion;
        }
        public string GetDificultad()
        {
            return Dificultad;
        }
        public int GetIdUsuario()
        {
            return IdUsuario;
        }
        public String GetTiempo()
        {
            return Tiempo;
        }
        public int GetVistos()
        {
            return Vistos;
        }
        public bool GetEstado()
        {
            return Estado;
        }

        public void SetIdReceta(Int64 ID)
        {
            IdReceta = ID;
        }
        public void SetNombre(string N)
        {
            Nombre = N;
        }
        public void SetDescripcion(string D)
        {
            Descripcion = D;
        }
        public void SetDificultad(string D)
        {
            Dificultad=D;
        }
        public void SetIdUsuario(int ID)
        {
            IdUsuario=ID;
        }
        public void SetTiempo(string T)
        {
            Tiempo=T;
        }
        public void SetVistos(int V)
        {
            Vistos=V;
        }
        public void SetEstado(bool E)
        {
            Estado=E;
        }
        public void SetImagenEnlace(string IE)
        {
            EnlaceImagen = IE;
        }
        public void SetFechaDeCreacion(string FDC)
        {
            FechaDeCreacion = FDC;
        }
    }
}
