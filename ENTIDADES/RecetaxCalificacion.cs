using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class RecetaxCalificacion
    {
        private int IdRecetaxCalificacion;
        private int IdUsuario;
        private int IdReceta;
        private int Calificación;
        private bool Estado;

        public RecetaxCalificacion()
        { }

        public int GetIdRecetaxCalificacion()
        {
            return IdRecetaxCalificacion;
        }
        public int GetIdReceta()
        {
            return IdReceta;
        }
        public int GetIdUsuario()
        {
            return IdUsuario;
        }
        public int GetCalificación()
        {
            return Calificación;
        }
        public bool GetEstado()
        {
            return Estado;
        }

        public void SetIdRecetaxCalificacion(int ID)
        {
            IdRecetaxCalificacion=ID;
        }
        public void SetIdReceta(int ID)
        {
            IdReceta = ID;
        }
        public void SetIdUsuario(int ID)
        {
            IdUsuario=ID;
        }
        public void SetCalificación(int C)
        {
            Calificación=C;
        }
        public void SetEstado(bool E)
        {
            Estado=E;
        }
    }
}
