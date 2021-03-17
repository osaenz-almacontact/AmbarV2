using AmbarV2.Models;
using System.Collections.Generic;
using System.Linq;

namespace AmbarV2.Repositorio
{
    public class SiteContexto
    {
        public List<Sites> ObtenerSites()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.Sites.AsNoTracking().ToList();
            }
        }
    }
}