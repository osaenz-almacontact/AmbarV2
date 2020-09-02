using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;

namespace AmbarV2
{
    public partial class _Default : Page
    {
        PersonaContexto personaContexto = new PersonaContexto();
        protected void Page_Load(object sender, EventArgs e)
        {
            Obtener();
        }
        public void Obtener()
        { 
            var fecha = DateTime.Now;
            
            DataCumpleanos.DataSource = personaContexto.ObtenerPersonas().Where(a => a.fechaDeNacimiento.Month.Equals(fecha.Month) && a.nombreEstado == 1).ToList();
            DataCumpleanos.DataBind();
        }
    }
}