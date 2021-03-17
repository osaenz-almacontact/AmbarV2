using AmbarV2.Models;
using System.Collections.Generic;
using System.Linq;

namespace AmbarV2.Repositorio
{
    public class AreaContexto
    {
        public List<Areas> ObtenerAreas()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.Areas.AsNoTracking().ToList();
            }
        }
    }
}