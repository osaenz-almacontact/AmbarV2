using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmbarV2.Notificaciones
{
    public partial class Notificaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ObtenerOperaciones();
        }

        public void ObtenerOperaciones()
        {
            OperacionContexto operacionContexto = new OperacionContexto();
            List<Operaciones> ListOperaciones = operacionContexto.ObtenerOperaciones();

            var query = (from Operacion in ListOperaciones
                         select new
                         {
                             Id = Operacion.Id,
                             Nombres = Operacion.Nombre
                         }).ToList();

            ListItem item = new ListItem();
            item.Value = "0";
            item.Text = "(Seleccionar)";

            DropOperacion.DataSource = query.ToList();
            DropOperacion.DataTextField = "Nombres";
            DropOperacion.DataValueField = "Id";
            DropOperacion.DataBind();
            DropOperacion.Items.Insert(0, item);

        }
        protected void BtnCrear_Click(object sender, EventArgs e)
        {

        }
    }
}