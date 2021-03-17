using AmbarV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AmbarV2.Repositorio
{
    public class OperacionContexto
    {
        public List<Operaciones> ObtenerOperaciones()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.Operaciones.AsNoTracking().ToList();
            }
        }
    }
}