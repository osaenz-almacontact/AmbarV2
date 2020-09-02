using AmbarV2.Models;
using System.Collections.Generic;
using System.Linq;

namespace AmbarV2.Repositorio
{
    public class PersonaContexto 
    {
        public List<Personas> ObtenerPersonas()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.Personas.AsNoTracking().ToList();
            }
        }
    }
}