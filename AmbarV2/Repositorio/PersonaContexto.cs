using AmbarV2.Models;
using System;
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

        internal void ActualizarInfomracionPersonal(Personas modelo)
        {
            using (AMBAREntities contexto = new AMBAREntities())
            {
                Personas persona = (from p in contexto.Personas
                                                   where p.Id == modelo.Id
                                                   select p).First();
               
                persona.Nombres = modelo.Nombres;
                persona.PrimerApellido = modelo.PrimerApellido;
                persona.SegundoApellido = modelo.SegundoApellido;
                persona.Cedula = modelo.Cedula;
                persona.LugarDeNacimiento = modelo.LugarDeNacimiento;
                persona.FechaDeNacimiento = modelo.FechaDeNacimiento;
                persona.DireccionResidencia = modelo.DireccionResidencia;
                persona.Telefono = modelo.Telefono;
                persona.Sexo = modelo.Sexo;
                persona.IdRh = modelo.IdRh;
                persona.Celular = modelo.Celular;
                persona.Correo = modelo.Correo;
                persona.PersonaDeEmergencia = modelo.PersonaDeEmergencia;
                persona.TelefonoDeEmergencia = modelo.TelefonoDeEmergencia;

                contexto.SaveChanges();
            }
        }
    }
}