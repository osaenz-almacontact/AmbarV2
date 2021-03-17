using AmbarV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AmbarV2.Repositorio
{
    public class CargoContexto
    {
        public List<Cargos> ObtenerCargos()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.Cargos.AsNoTracking().ToList();
            }
        }
    }
}