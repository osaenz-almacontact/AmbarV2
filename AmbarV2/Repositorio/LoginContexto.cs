using AmbarV2.Models;
using System.Collections.Generic;
using System.Linq;

namespace AmbarV2.Repositorio
{
    public class LoginContexto
    {
        public List<Usuarios> ConsultarUsuarios()
        {
            using (AMBAREntities contextoUsuario = new AMBAREntities())
            {
                return contextoUsuario.Usuarios.AsNoTracking().ToList();
            }
        }

        public List<Perfiles> ConsusltarPerfiles()
        {
            using (AMBAREntities contextoPerfiles = new AMBAREntities())
            {
                return contextoPerfiles.Perfiles.AsNoTracking().ToList();
            }
        }

        public List<Permisos> ConsultarPermisos()
        {
            using (AMBAREntities permisosContexto = new AMBAREntities())
            {
                return permisosContexto.Permisos.AsNoTracking().ToList();
            }
        }

        public List<Personas> ObtenerDatosPersona()
        {
            using (AMBAREntities personaContexto = new AMBAREntities())
            {
                return personaContexto.Personas.AsNoTracking().ToList();
            }
        }
        public static void ConsultaUsuarioPerfil()
        {
            //List<Usuarios> ListUsuarios = new List<Usuarios>();
            //List<Perfiles> ListPerfiles = new List<Perfiles>();
            //List<Personas> ListPersonas = new List<Personas>();

            //var query = (from Persona in ListPersonas
            //             join Usuario in ListUsuarios 
            //             on Persona.idUsuario equals Usuario.Id
            //             select  new { Nombres = Persona.primerApellido +' '+ Persona.nombres, 
            //                            Estado = Persona.nombreEstado}).ToList();
 
        }
    }
}