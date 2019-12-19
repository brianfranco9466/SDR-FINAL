using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class IngredientexReceta
    {
        private int IdIngredientexReceta;
        private int IdIngrediente;
        private int IdReceta;
        private string Cantidad;
        private bool Estado;

        public IngredientexReceta()
        { }

        public IngredientexReceta(int idr, int idi, string cant)
        {
            IdIngrediente = idi;
            IdReceta = idr;
            Cantidad = cant;
        }

        public int GetIdIngredientexReceta()
        {
            return IdIngredientexReceta;
        }
        public int GetIdIngrediente()
        {
            return IdIngrediente;
        }
        public int GetIdReceta()
        {
            return IdReceta;
        }
        public string GetCantidad()
        {
            return Cantidad;
        }
        public bool GetEstado()
        {
            return Estado;
        }

        public void SetIdIngrediente(int ID)
        {
            IdIngrediente = ID;
        }
        public void SetIdIngredientexReceta(int ID)
        {
            IdIngredientexReceta = ID;
        }
        public void SetIdReceta(int ID)
        {
            IdReceta=ID;
        }
        public void SetCantidad(string C)
        {
             Cantidad=C;
        }
        public void SetEstado(bool E)
        {
            Estado=E;
        }
    }
}
