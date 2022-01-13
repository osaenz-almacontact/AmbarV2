using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace AmbarV2.RecursosHumanos
{
    public partial class DirectorioCorporativo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ObtenerPersonas();
        }
        protected void DataDirectorio_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataDirectorio.PageIndex = e.NewPageIndex;
            DataDirectorio.DataBind();
        }
        public void ObtenerPersonas()
        {
            LoginContexto contextoUsuario = new LoginContexto();

            List<Personas> ListPersonas = contextoUsuario.ObtenerDatosPersona();

            var query = (from Persona in ListPersonas
                         select new
                         {
                             Id = Persona.Id,
                             Nombres = Persona.Nombres +" " + Persona.PrimerApellido + " " + Persona.SegundoApellido,
                             Extension = Persona.ExtFisica,
                             Correo = Persona.Correo
                         }).ToList();

            DataDirectorio.DataSource = query.ToList();
            DataDirectorio.DataBind();
        }

        protected void Btnguardar_Click(object sender, EventArgs e)
        {
            LoginContexto contextoUsuario = new LoginContexto();

            List<Personas> ListPersonas = contextoUsuario.ObtenerDatosPersona();

            var query = (from Persona in ListPersonas
                         where Persona.Nombres.StartsWith(TxtNombres.Text)
                         select new
                         {
                             Id = Persona.Id,
                             Nombres = Persona.Nombres + " " + Persona.PrimerApellido + " " + Persona.SegundoApellido,
                             Extension = Persona.ExtFisica,
                             Correo = Persona.Correo
                         }).ToList();

            DataDirectorio.DataSource = query.ToList();
            DataDirectorio.DataBind();
        }
    }
}
