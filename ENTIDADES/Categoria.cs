using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Categoria
    {
        private int IdCategoria;
        private string Nombre;
        private bool Estado;

        public Categoria()
        { }

        public void SetIdCategoria(int Id)
        {
            IdCategoria = Id;
        }
        public int GetIdCategoria()
        {
            return IdCategoria;
        }
        public string GetNombre()
        {
            return Nombre;
        }
        public void SetNombre(string N)
        {
            Nombre = N;
        }
        public bool GetEstado()
        {
            return Estado;
        }
        public void SetEstado(bool E)
        {
            Estado = E;
        }

    }
}