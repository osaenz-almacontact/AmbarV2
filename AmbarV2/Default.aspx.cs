using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;
using System.Web.UI;

namespace AmbarV2
{
    public partial class _Default : Page
    {
        PersonaContexto personaContexto = new PersonaContexto();
        LoginContexto loginContexto = new LoginContexto();

        protected void Page_Load(object sender, EventArgs e)
        {
            LabFecha.Text = "Hoy " + DateTime.Now.ToString("MM/dd/yyyy");
            if (!IsPostBack)
            {
                Obtener();
            }
        }
        public void Obtener()
        { 
            var fecha = DateTime.Now;

            List<Usuarios> ListUsuarios = loginContexto.ConsultarUsuarios();
            List<Personas> ListPersonas = loginContexto.ObtenerDatosPersona();
            List<Perfiles> ListPerfiles = loginContexto.ConsusltarPerfiles();

            //var query = (from Persona in ListPersonas
            //             join Usuario in ListUsuarios on Persona.idUsuario equals Usuario.Id
            //             join Perfil in ListPerfiles on Usuario.IdPerfil equals Perfil.Id
            //             select new
            //             {
            //                 Nombres = Persona.primerApellido + ' ' + Persona.nombres,
            //                 FechaNacimiento = Persona.fechaDeNacimiento,
            //                 Estado = Perfil.Estado,
            //             }).ToList();

            //DataCumpleanos.DataSource = query.Where(a => a.FechaNacimiento.Month.Equals(fecha.Month) && a.Estado == 1).ToList();
            //DataCumpleanos.DataBind();
        }
    }
}