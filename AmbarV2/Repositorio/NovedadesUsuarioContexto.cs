using AmbarV2.Models;
using System;
using System.Collections.Generic;
using System.Linq;

namespace AmbarV2.Repositorio
{
    public class NovedadesUsuarioContexto
    {
        public List<NovedadesUsuarios> ObtenerNovedadesUsuarios()
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                return contexto.NovedadesUsuarios.AsNoTracking().ToList();
            }
        }

        public void GuardarUsuarioNovedad(NovedadesUsuarios modelo)
        {
            try
            {
                using (AMBAREntities contexto = new AMBAREntities())
                {
                    contexto.NovedadesUsuarios.Add(modelo);
                    contexto.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }

        public void ActualizarNovedad(NovedadesUsuarios modelo)
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                NovedadesUsuarios NovedadUsuario = (from NovUsu in contexto.NovedadesUsuarios
                                                    where NovUsu.Id == modelo.Id
                                                         select NovUsu).First();
                NovedadUsuario.Estado = modelo.Estado;
                NovedadUsuario.Motivo = modelo.Motivo;

                contexto.SaveChanges();
            }
        }
    }
}