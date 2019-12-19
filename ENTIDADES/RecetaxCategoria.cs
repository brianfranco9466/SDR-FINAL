using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class RecetaxCategoria
    {
        private int IdRecetaxCategoria;
        private int IdCategoria;
        private int IdReceta;
        private bool Estado;

        public RecetaxCategoria()
        { }

        public void SetIdRecetaxCategoria(int Id)
        {
            IdRecetaxCategoria = Id;
        }
        public void SetIdCategoria(int Id)
        {
            IdCategoria = Id;
        }
        public void SetIdReceta(int Id)
        {
            IdReceta = Id;
        }
        public int GetIdReceta()
        {
            return IdReceta;
        }
        public int GetIdRecetaxCategoria()
        {
            return IdRecetaxCategoria;
        }
        public int GetIdCategoria()
        {
            return IdCategoria;
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