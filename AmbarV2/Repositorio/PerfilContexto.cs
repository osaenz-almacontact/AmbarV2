using AmbarV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AmbarV2.Repositorio
{
    public class PerfilContexto
    {
        public List<Perfiles> ObtenerPerfiles()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.Perfiles.AsNoTracking().ToList();
            }
        }
    }
}