using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Ingrediente
    {
        private int IdIngrediente;
        private string Nombre;
        private string Detalle;
        private string Medida;
        private int Cantidad;
        private bool Estado;

        public Ingrediente()
        { }

        public Ingrediente(string nom, string det, string med)
        {
            Nombre = nom;
            Detalle = det;
            Medida = med;
        }

        public int GetIdIngrediente()
        {
            return IdIngrediente;
        }
        public string GetNombre()
        {
            return Nombre;
        }
        public string GetDetalle()
        {
            return Detalle;
        }
        public string GetMedida()
        {
            return Medida;
        }
        public bool GetEstado()
        {
            return Estado;
        }
        public int GetCantidad()
        {
            return Cantidad;
        }
        public void SetIdIngrediente(int ID)
        {
            IdIngrediente = ID;
        }
        public void SetNombre(string N)
        {
            Nombre = N;
        }
        public void SetDetalle(string D)
        {
            Detalle=D;
        }
        public void SetMedida(string M)
        {
            Medida=M;
        }
        public void SetEstado(bool E)
        {
            Estado=E;
        }
        public void SetCantidad(int C)
        {
            Cantidad = C;
        }
    }
}
