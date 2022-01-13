using Alma_Reporting.Mail;
using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmbarV2.Novedades
{
    public partial class AprovacionDeNovedades : System.Web.UI.Page
    {
        int IdPersonaSession = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            DivAlert.Visible = false;
            IdPersonaSession = Convert.ToInt32(Session["IdPersona"]);
            if (!IsPostBack)
            {
                ObtenerNovedades();
            }
        }

        public void ObtenerNovedades()
        {
            NovedadesUsuarioContexto contextoNovedadesUsuarios = new NovedadesUsuarioContexto();
            LoginContexto contextoUsuario = new LoginContexto();

            List<NovedadesUsuarios> ListNovedadesUsuario = contextoNovedadesUsuarios.ObtenerNovedadesUsuarios();
            List<Personas> ListPersonas = contextoUsuario.ObtenerDatosPersona();

            var query = (from NovedadUsuario in ListNovedadesUsuario
                         join Persona in ListPersonas on NovedadUsuario.IdPersona equals Persona.Id
                         where Persona.SupervisorOperativo == IdPersonaSession
                         select new
                         {
                             Id = NovedadUsuario.Id,
                             IdUsuario = NovedadUsuario.IdUsuario,
                             Nombres = NovedadUsuario.Nombres,
                             NumeroDias = NovedadUsuario.NumeroDias,
                             FechaInicial = NovedadUsuario.FechaInicio,
                             FechaFinal = NovedadUsuario.FechaFin,
                             Concepto = NovedadUsuario.Concepto,
                             Estado = NovedadUsuario.Estado
                         }).ToList();

            RepterAprovacionNovedades.DataSource = query.ToList();
            RepterAprovacionNovedades.DataBind();
        }

        public void BtnSeleccionar_Click(object sender, EventArgs e)
        {
            //ModalAsignacionDispositivos
            RepeaterItem item = (sender as Button).Parent as RepeaterItem;

            int IdNovedad = int.Parse((item.FindControl("LabIdUsuario") as Label).Text);

            NovedadesUsuarioContexto contextoNovedadesUsuarios = new NovedadesUsuarioContexto();

            List<NovedadesUsuarios> ListNovedadesUsuario = contextoNovedadesUsuarios.ObtenerNovedadesUsuarios();

            var query = (from NovedadUsuario in ListNovedadesUsuario
                         where NovedadUsuario.Id == IdNovedad
                         select new
                         {
                             Id = NovedadUsuario.Id,
                             IdUsuario = NovedadUsuario.IdUsuario,
                             Nombres = NovedadUsuario.Nombres,
                             NumeroDias = NovedadUsuario.NumeroDias,
                             FechaInicial = NovedadUsuario.FechaInicio,
                             FechaFinal = NovedadUsuario.FechaFin,
                             Dias = NovedadUsuario.NumeroDias,
                             Concepto = NovedadUsuario.Concepto,
                             Observacion = NovedadUsuario.Observacion,
                             Estado = NovedadUsuario.Estado
                         }).FirstOrDefault();

            LabId.Text = query.Id.ToString();
            LabConcepto.Text = query.Concepto.ToString();
            LabNombres.Text = query.Nombres.ToString();
            LabFechaInicio.Text = Convert.ToDateTime(query.FechaInicial).ToString("MM/dd/yyyy");
            LabFechaFin.Text = Convert.ToDateTime(query.FechaFinal).ToString("MM/dd/yyyy");
            LabDias.Text = query.Dias.ToString();
            LabMotivo.Text = query.Observacion.ToString();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>$(document).ready(function(){$('#ModalDetalleNovedad').modal('show');});</script>", false);

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            String html = "";
            int IdNovedad = int.Parse(LabId.Text);

            NovedadesUsuarioContexto contextoNovedadesUsuarios = new NovedadesUsuarioContexto();
            LoginContexto contextoUsuario = new LoginContexto();

            List<NovedadesUsuarios> ListNovedadesUsuario = contextoNovedadesUsuarios.ObtenerNovedadesUsuarios();
            List<Personas> ListPersonas = contextoUsuario.ObtenerDatosPersona();
            List<Usuarios> ListUsuarios = contextoUsuario.ConsultarUsuarios();

            var query = (from NovedadUsuario in ListNovedadesUsuario
                         join Persona in ListPersonas on NovedadUsuario.IdPersona equals Persona.Id
                         where NovedadUsuario.Id == IdNovedad
                         select new
                         {
                             Id = NovedadUsuario.Id,
                             Correo = Persona.Correo,
                             Estado = NovedadUsuario.Estado,
                             Jefe = Persona.SupervisorOperativo
                         }).FirstOrDefault();

            var queruJefe = (from Persona in ListPersonas
                             join Usuario in ListUsuarios on Persona.IdUsuario equals Usuario.Id
                             where Persona.Id == query.Jefe
                             select new
                             {
                                 Id = Persona.Id,
                                 Nombres = Persona.PrimerApellido + ' ' + Persona.Nombres,
                                 Correo = Persona.Correo
                             }).FirstOrDefault();

            if (query.Estado.ToString() == "PE")
            {
                if (DropEstado.SelectedValue != "(Seleccionar)")
                {
                    NovedadesUsuarios modelo = new NovedadesUsuarios()
                    {
                        Id = int.Parse(LabId.Text),
                        Estado = DropEstado.SelectedValue,
                        Motivo = TxtObservaciones.Text
                    };
                    contextoNovedadesUsuarios.ActualizarNovedad(modelo);

                    if (DropEstado.Text == "AP")
                    {
                        html = "<div style='padding:15px;'>" +
                         "<p> La solicitud de sus " + LabConcepto.Text + " ha sido <b>APROBADA</b> </p>" +
                         "</div>" +
                         "<div style='padding:10px;'>" +
                         "<h4>Motivo</h4></hr><p>" + TxtObservaciones.Text + "</p>" +
                         "</div>" +
                         "</td></tr>" +
                         "<tr><td><hr style='color:#A6A6A7' size='5' /> <br/></td></tr><tr><td><p style='font-size:16px;color:#585964;margin-bottom:6px'><strong>Cordialmente:</strong></p><p style='margin:0px;color:#A6A6A7;font-size:14px;'" +
                         "<strong>HR</strong></p>";

                    }
                    else if (DropEstado.Text == "RH")
                    {
                        html = "<div style='padding:15px;'>" +
                         "<p> La solicitud de sus " + LabConcepto.Text + " ha sido <b>Negada</b> por favor re-agende esta solicitud para otro día</p>" +
                         "</div>" +
                         "<div style='padding:10px;'>" +
                         "<h4>Motivo</h4></hr><p>" + TxtObservaciones.Text + "</p>" +
                         "</div>" +
                         "</td></tr>" +
                         "<tr><td><hr style='color:#A6A6A7' size='5' /> <br/></td></tr><tr><td><p style='font-size:16px;color:#585964;margin-bottom:6px'><strong>Cordialmente:</strong></p><p style='margin:0px;color:#A6A6A7;font-size:14px;'" +
                         "<strong>IT</strong></p>";

                    }

                    html = BaseEmail.crearRetornarCuerpoCorreo("NOTIFICACIÓN DE ACTUALIZACIÓN DE NOVEDAD", html, "Almacontact", "");

                    Email.EnviarEmail(queruJefe.Correo.ToString().Trim(), query.Correo.ToString().Trim(), "ALMA-NET", "ALMACONTACT - Actualización de novedad ", html);

                    DivAlert.Visible = true;
                    DivAlert.Attributes.Add("class", "alert alert-success");
                    LabMensajeAlerta.Text = "La novedad se ha actualizado.";
                }
                else
                {
                    DivAlert.Visible = true;
                    DivAlert.Attributes.Add("class", "alert alert-danger");
                    LabMensajeAlerta.Text = "Debe seleccionar un estado.";
                }
            }
            else
            {
                DivAlert.Visible = true;
                DivAlert.Attributes.Add("class", "alert alert-danger");
                LabMensajeAlerta.Text = "Una vez cambiando el estado de una novedad, no podrá ser cambiado por segunda vez.";
            }
        }
    }
}