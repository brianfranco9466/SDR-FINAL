using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Favoritos
    {
        private int IdFavorito;
        private int IdUsuario;
        private int IdReceta;
        private bool Estado;

        public Favoritos()
        {

        }

        public void SetIdFavorito(int Id)
        {
            IdFavorito = Id;
        }
        public int GetIdFavorito()
        {
            return IdFavorito;
        }
        public void SetIdReceta(int Id)
        {
            IdReceta = Id;
        }
        public int GetIdReceta()
        {
            return IdReceta;
        }
        public int GetIdUsuario()
        {
            return IdUsuario;
        }
        public void SetIdUsuario(int iD)
        {
            IdUsuario = iD;
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
