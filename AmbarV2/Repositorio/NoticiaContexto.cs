using AmbarV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AmbarV2.Repositorio
{
    public class NoticiaContexto
    {
        public List<Noticias> ObtenerNoticias()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.Noticias.AsNoTracking().ToList();
            }
        }

        public void GuardarNoticia(Noticias modelo)
        {
            try
            {
                using (AMBAREntities contexto = new AMBAREntities())
                {
                    contexto.Noticias.Add(modelo);
                    contexto.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }
    }
}