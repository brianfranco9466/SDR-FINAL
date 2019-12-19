using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using ENTIDADES;

namespace NEGOCIO
{
    public class GestionInsXRec
    {
        public void AgregarInstruccion(string desc, string nroOrden)
        {
            DaoReceta daoRec = new DaoReceta();
            int codReceta = daoRec.ObtenerUltimoID();
            Instruccion ins = new Instruccion(codReceta, desc, Int32.Parse(nroOrden));
            DaoInstruccion daoIns = new DaoInstruccion();

            daoIns.AgregoInstruccion(ins);

        }

        public void AgregarInstruccionAReceta(string idrec, string desc, string nroOrden)
        {
            Instruccion ins = new Instruccion(Int32.Parse(idrec), desc, Int32.Parse(nroOrden));
            DaoInstruccion daoIns = new DaoInstruccion();

            daoIns.AgregoInstruccion(ins);
        }

        public DataTable TablaInstrucciones(Int64 id)
        {
            DaoInstruccion x = new DaoInstruccion();
            DataTable DTIns = new DataTable();
            DTIns = x.ObtenerInstruccionesXIdReceta(id);
            return DTIns;
        }

    }
}
