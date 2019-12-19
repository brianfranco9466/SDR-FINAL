using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class RecetaxImagen
    {

        private int IdRecetaxImg;
        private int IdReceta;
        private string Nombre;
        private string Imagen;
        private bool Estado;

        public RecetaxImagen()
        { }

        public RecetaxImagen(int id, string url, string nom)
        {
            IdReceta = id;
            Nombre = nom;
            Imagen = url;
            Estado = true;
        }

        public int GetIdRecetaxImg()
        {
            return IdRecetaxImg;
        }
        public int GetIdReceta()
        {
            return IdReceta;
        }
        public string GetNombre()
        {
            return Nombre;
        }
        public string GetImagen()
        {
            return Imagen;
        }
        public bool GetEstado()
        {
            return Estado;
        }

        public void SetIdRecetaxImg(int ID)
        {
            IdRecetaxImg=ID;
        }
        public void SetIdReceta(int ID)
        {
            IdReceta = ID;
        }
        public void SetNombre(string N)
        {
            Nombre=N;
        }
        public void SetImagen(string I)
        {
            Imagen=I;
        }
        public void SetEstado(bool E)
        {
            Estado=E;
        }
    }
}
