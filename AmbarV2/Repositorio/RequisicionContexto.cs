using AmbarV2.Models;
using System.Collections.Generic;
using System.Linq;

namespace AmbarV2.Repositorio
{
    public class RequisicionContexto
    {
        public List<Requisiciones> ObtenerRequisiciones()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.Requisiciones.AsNoTracking().ToList();
            }
        }
    }
}