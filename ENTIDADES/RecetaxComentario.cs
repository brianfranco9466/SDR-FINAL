using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class RecetaxComentario
    {
        private int IdRecetaxComentario;
        private int IdUsuario;
        private string Fecha;
        private string Comentario;
        private bool Estado;

        public RecetaxComentario()
        { }

        public int GetIdRecetaxComentario()
        {
            return IdRecetaxComentario;
        }
        public int GetIdUsuario()
        {
            return IdUsuario;
        }
        public string GetFecha()
        {
            return Fecha;
        }
        public string GetComentario()
        {
            return Comentario;
        }
        public bool GetEstado()
        {
            return Estado;
        }

        public void SetIdRecetaxComentario(int ID)
        {
            IdRecetaxComentario=ID;
        }
        public void SetIdUsuario(int ID)
        {
            IdUsuario=ID;
        }
        public void SetFecha(string ID)
        {
            Fecha=ID;
        }
        public void SetComentario(string C)
        {
            Comentario=C;
        }
        public void SetEstado(bool E)
        {
            Estado=E;
        }
    }
}
