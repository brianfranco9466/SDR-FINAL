using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Instruccion
    {
        private int IdInstruccion;
        private int IdReceta;
        private int IdOrden;
        private string Descripcion;
        private bool Estado;
        
        public Instruccion()
        {

        }

        public Instruccion(int idRec, string desc, int nroOrden)
        {
            IdReceta = idRec;
            Descripcion = desc;
            IdOrden = nroOrden;
        }

        public int GetIdInstruccion()
        {
            return IdInstruccion;
        }
        public int GetIdReceta()
        {
            return IdReceta;
        }
        public int GetIdOrden()
        {
            return IdOrden;
        }
        public string GetDescripcion()
        {
            return Descripcion;
        }
        public bool GetEstado()
        {
            return Estado;
        }
        public void SetIdReceta(int ID)
        {
            IdReceta=ID;
        }
        public void SetIdInstruccion(int ID)
        {
            IdInstruccion = ID;
        }
        public void SetIdOrden(int ID)
        {
            IdOrden=ID;
        }
        public void SetDescripcion(string E)
        {
            Descripcion=E;
        }
        public void SetEstado(bool E)
        {
            Estado=E;
        }
    }
}
