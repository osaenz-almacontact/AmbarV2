using Alma_Reporting.Mail;
using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmbarV2.Novedades
{
    public partial class IngresoDeNovedades : System.Web.UI.Page
    {
        int IdPersonaSession = 0;
        int IdUsuarioSession = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            DivFormularioNovedad.Attributes.Add("Style", "display:none");
            TxtNombre.Value = Convert.ToString(Session["Nombres"]);
            IdPersonaSession = Convert.ToInt32(Session["IdPersona"]);
            IdUsuarioSession = Convert.ToInt32(Session["IdUsuario"]);
            DivAlert.Visible = false;

            ObtenerNovedades();
        }

        public void BtnEnviar_Click(object sender, EventArgs e)
        {
            String html = "";
            string Mensaje = "";
            string MensajeDatos = "";

            try
            {
                if (LabTipoNovedad.Value != "")
                {
                    if (ObtenerNovedadExistente(LabTipoNovedad.Value, IdPersonaSession) == 0)
                    {
                        Mensaje = ValidarCampos();
                        MensajeDatos = ValidarDatos();

                        if (Mensaje == "")
                        {
                            CargoContexto contextoCargos = new CargoContexto();
                            LoginContexto contextoUsuario = new LoginContexto();
                            AreaContexto contextoArea = new AreaContexto();
                            NovedadesUsuarioContexto contextoNovedadesUsuarios = new NovedadesUsuarioContexto();

                            List<Cargos> ListCargos = contextoCargos.ObtenerCargos();
                            List<Personas> ListPersonas = contextoUsuario.ObtenerDatosPersona();
                            List<Usuarios> ListUsuarios = contextoUsuario.ConsultarUsuarios();
                            List<Areas> ListAreas = contextoArea.ObtenerAreas();

                            var query = (from Persona in ListPersonas
                                         join Cargo in ListCargos on Persona.IdCargo equals Cargo.Id
                                         join Area in ListAreas on Persona.IdArea equals Area.Id
                                         join Usuario in ListUsuarios on Persona.IdUsuario equals Usuario.Id
                                         where Persona.Id == IdPersonaSession
                                         select new
                                         {
                                             Id = Persona.Id,
                                             Nombres = Persona.PrimerApellido + ' ' + Persona.Nombres,
                                             Cedula = Persona.Cedula,
                                             IdUsuario = Persona.IdUsuario,
                                             Usuario = Usuario.Login,
                                             IdCargo = Cargo.Id,
                                             Cargo = Cargo.Nombre,
                                             IdOperacion = Persona.IdOperacion,
                                             Operacion = Persona.IdOperacion,
                                             Telefono = Persona.TelefonoDeEmergencia,
                                             //Estado = Persona.IdEst,
                                             IdArea = Area.Id,
                                             Area = Area.Nombre,
                                             Correo = Persona.Correo,
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

                            if (MensajeDatos=="")
                            {
                                NovedadesUsuarios modelo = new NovedadesUsuarios()
                                {
                                    TipoNovedad = "NOVEDAD",
                                    FechaNovedad = DateTime.Now,
                                    Nombres = TxtNombre.Value,
                                    Cedula = query.Cedula.ToString(),
                                    NumeroDias = TxtNumeroDias.Value.Trim(),
                                    FechaInicio = Convert.ToDateTime("2021/11/25", CultureInfo.InvariantCulture),
                                    FechaFin = Convert.ToDateTime(TxtFechaFin.Value, CultureInfo.InvariantCulture),
                                    Area = query.Area.ToString(),
                                    IdArea = int.Parse(query.IdArea.ToString()),
                                    Operacion = query.Operacion.ToString(),
                                    IdOperacion = int.Parse(query.IdOperacion.ToString()),
                                    Cargo = query.Cargo.ToString(),
                                    IdCargo = int.Parse(query.IdCargo.ToString()),
                                    Concepto = LabTipoNovedad.Value.Trim(),
                                    Jurado = "NO",
                                    Horario = DropHorario.SelectedItem.Text == "(Seleccionar)" ? "N/A" : DropHorario.SelectedItem.Text,
                                    NombreBackup = TxtNombreBackup.Value,
                                    Ususario = query.Usuario.ToString(),
                                    IdUsuario = int.Parse(query.IdUsuario.ToString()),
                                    Estado = "PE",
                                    Observacion = TxtObservaciones.Value,
                                    HoraInicio = TxtHoraInicio.Value,
                                    HoraFin = TxtHoraFin.Value,
                                    IdPersona = IdPersonaSession
                                };
                                contextoNovedadesUsuarios.GuardarUsuarioNovedad(modelo);

                                //TO DO cambiar la URL

                                html = "<div style='padding:15px;'>" +
                                        "<p style='margin:10px 0px 10px 10px;font-family:century gothic;font-size:14px'>Notificacion de <strong> " + LabTipoNovedad.Value.Trim() + " </strong>registrada</p>" +
                                        "<p> <b>" + TxtNombre.Value + "</b> Ha solicitado del día  <b>" + TxtFechaInicio.Value + "</b> al dia <b>" + TxtFechaFin.Value + "</b> en la jornada de la <b>" + DropHorario.Text + "</b> Por motivo de <strong> " + LabTipoNovedad.Value.Trim() + " </strong>.</p>" +
                                        "</div>" +
                                        "<p style='margin:0px 0px 20px 10px;font-family:century gothic;font-size:14px;color:#585964'>Ingreso a la aplicación <a href='http://alma-bi.co/AlmaBI/Login/Login'>link</a></p>";
                                html = BaseEmail.crearRetornarCuerpoCorreo("NOTIFICACIÓN DE CREACIÓN DE NOVEDAD", html, "Almacontact", "");

                                Email.EnviarEmail(query.Correo.ToString().Trim(), queruJefe.Correo.ToString().Trim(), "ALMA-NET", "ALMACONTACT - Registro de novedad ", html);

                                //contextoReporte.Refresh(System.Data.Linq.RefreshMode.OverwriteCurrentValues, entity);

                                DivFormularioNovedad.Attributes.Add("Style", "display:none");
                                //VaciarCampos();
                                ObtenerNovedades();
                                //GuardarLog("Registro de usuario");

                                DivAlert.Visible = true;
                                DivAlert.Attributes.Add("class", "alert alert-success");
                                LabMensajeAlerta.Text = "Novedad creada exitosamente.";
                            }
                            else
                            {
                                DivAlert.Visible = true;
                                DivAlert.Attributes.Add("class", "alert alert-danger");
                                LabMensajeAlerta.Text = "La fecha final no pude ser mayor a la inicial.";
                            }
                        }
                        else
                        {
                            DivAlert.Visible = true;
                            DivAlert.Attributes.Add("class", "alert alert-danger");
                            LabMensajeAlerta.Text = Mensaje;
                        }
                    }
                    else
                    {
                        DivAlert.Visible = true;
                        DivAlert.Attributes.Add("class", "alert alert-danger");
                        LabMensajeAlerta.Text = "Esta novedad ya ha sido registrada.";
                    }

                }
            }
            catch (Exception ex)
            {
                bool tipoExcepcion = ex.ToString().Contains("Cannot insert duplicate key in object");
                //throw ex;
                DivAlert.Visible = true;
                DivAlert.Attributes.Add("class", "alert alert-danger");
                if (tipoExcepcion)
                {
                    LabMensajeAlerta.Text = "El nombre de usuario ya ha sido ingresado";
                }
                else
                {
                    LabMensajeAlerta.Text = ex.ToString();
                }


            }
        }

        public int ObtenerNovedadExistente(string Concepto, int IdUsuario)
        {

            int NumeroNovedades = 0;
            NovedadesUsuarioContexto contextoNovedadesUsuarios = new NovedadesUsuarioContexto();

            List<NovedadesUsuarios> ListNovedadesUsuario = contextoNovedadesUsuarios.ObtenerNovedadesUsuarios();

            var query = (from NovedadUsuario in ListNovedadesUsuario
                         select new
                         {
                             Id = NovedadUsuario.Id,
                             IdUsuario = NovedadUsuario.IdUsuario,
                             NombreUsuario = NovedadUsuario.Ususario,
                             Estado = NovedadUsuario.Estado,
                             Concepto = NovedadUsuario.Concepto
                         }).Where(e => e.Estado == "PE").Where(c => c.Concepto == Concepto).Where(u => u.IdUsuario == IdUsuario).Count();

            NumeroNovedades = query != 0 ? query : 0;
            return NumeroNovedades;
        }

        public void ObtenerNovedades()
        {
            NovedadesUsuarioContexto contextoNovedadesUsuarios = new NovedadesUsuarioContexto();

            List<NovedadesUsuarios> ListNovedadesUsuario = contextoNovedadesUsuarios.ObtenerNovedadesUsuarios();

            var query = (from NovedadUsuario in ListNovedadesUsuario
                         where NovedadUsuario.IdPersona == IdPersonaSession
                         select new
                         {
                             Id = NovedadUsuario.Id,
                             IdUsuario = NovedadUsuario.IdUsuario,
                             Concepto = NovedadUsuario.Concepto,
                             FechaInicial = NovedadUsuario.FechaInicio,
                             FechaFinal = NovedadUsuario.FechaFin,
                             Estado = NovedadUsuario.Estado
                         }).ToList();

            RepeaterNovedades.DataSource = query.ToList();
            RepeaterNovedades.DataBind();
        }

        public string ValidarCampos()
        {
            string Mensaje = "";
            if (TxtNombre.Value != null)
            {
                if (LabTipoNovedad.Value == "Incapacidades")
                {
                    if (TxtFechaInicio.Value == "")
                    {
                        LabValFechaInicio.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValFechaInicio.Text = "Falto ingresar la fecha inicial";
                        Mensaje = "Falto ingresar la fecha inicial";
                    }
                    if (TxtFechaFin.Value == "")
                    {
                        LabValFechaFin.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValFechaFin.Text = "Debe agregar una fecha de culminación.";
                        Mensaje = "Debe agregar una fecha de culminación.";
                    }
                }
                else if (LabTipoNovedad.Value == "Permiso")
                {
                    if (TxtFechaInicio.Value == "")
                    {
                        LabValFechaInicio.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValFechaInicio.Text = "Falto ingresar la fecha inicial";
                        Mensaje = "Falto ingresar la fecha inicial";
                    }
                    if (TxtFechaFin.Value == "")
                    {
                        LabValFechaFin.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValFechaFin.Text = "Debe agregar una fecha de culminación.";
                        Mensaje = "Debe agregar una fecha de culminación.";
                    }
                    if (TxtNumeroDias.Value == "")
                    {
                        LabValNumDias.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValNumDias.Text = "Debe agregar el número de días.";
                        Mensaje = "Debe agregar el número de días";
                    }
                    if (int.Parse(TxtNumeroDias.Value) <= 1)
                    {
                        if (TxtHoraInicio.Value == "")
                        {
                            LabValHoraInicio.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                            LabValHoraInicio.Text = "Debe agregar una hora de inicio.";
                            Mensaje = "Debe agregar una hora de culminación.";
                        }
                        if (TxtHoraFin.Value == "")
                        {
                            LabValHoraFin.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                            LabValHoraFin.Text = "Debe agregar una hora de culminación.";
                            Mensaje = "Debe agregar una hora de culminación.";
                        }
                    }
                }
                else if (LabTipoNovedad.Value == "Dia Electoral")
                {
                    if (TxtFechaInicio.Value == "")
                    {
                        LabValFechaInicio.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValFechaInicio.Text = "Falto ingresar la fecha inicial";
                        Mensaje = "Falto ingresar la fecha inicial";
                    }
                    if (TxtFechaFin.Value == "")
                    {
                        LabValFechaFin.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValFechaFin.Text = "Debe agregar una fecha de culminación.";
                        Mensaje = "Debe agregar una fecha de culminación.";
                    }

                    if (DropHorario.SelectedValue == "(Seleccionar)")
                    {
                        LabValHorario.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValHorario.Text = "Debe seleccionar un horario.";
                        Mensaje = "Debe seleccionar un horario.";
                    }

                }
                else if (LabTipoNovedad.Value == "Vacaciones")
                {
                    if (TxtFechaInicio.Value == "")
                    {
                        LabValFechaInicio.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValFechaInicio.Text = "Falto ingresar la fecha inicial";
                        Mensaje = "Falto ingresar la fecha inicial";
                    }
                    if (TxtFechaFin.Value == "")
                    {
                        LabValFechaFin.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValFechaFin.Text = "Debe agregar una fecha de culminación.";
                        Mensaje = "Debe agregar una fecha de culminación.";
                    }
                    if (TxtNumeroDias.Value == "")
                    {
                        LabValNumDias.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValNumDias.Text = "Debe agregar el número de días.";
                        Mensaje = "Debe agregar el número de días";
                    }
                    if (int.Parse(TxtNumeroDias.Value) < 1)
                    {
                        LabValNumDias.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValNumDias.Text = "Debe agregar el número de días.";
                        Mensaje = "Debe agregar el número de días";
                    }

                    if (TxtNombreBackup.Value == "")
                    {
                        LabValNombreBackup.ForeColor = System.Drawing.Color.FromName("#C10C0C");
                        LabValNumDias.Text = "Debe agregar el nombre de su backup.";
                        Mensaje = "Debe agregar el nombre de su backup.";
                    }
                }
            }


            return Mensaje;
        }

        public string ValidarDatos()
        {
            string Mensaje = "";
            DateTime FechaParametro = DateTime.Now;
            DateTime FechaInicio = Convert.ToDateTime(TxtFechaInicio.Value);
            DateTime FechaFinal = Convert.ToDateTime(TxtFechaFin.Value);

            if (Convert.ToDateTime(this.TxtFechaFin.Value) > Convert.ToDateTime(this.TxtFechaInicio.Value))
            {
                if (LabTipoNovedad.Value == "Permiso")
                {
                    if (FechaParametro.Date <= FechaInicio.Date)
                    {
                        Mensaje = "Los permisos deben de solicitarse con un día de anticipación.";
                    }
                }
                if (LabTipoNovedad.Value == "Dia Electoral")
                {
                    if (FechaParametro <= Convert.ToDateTime(TxtFechaInicio.Value))
                    {
                        Mensaje = "El día laboral deben de solicitarse con un día de anticipación.";
                    }
                    if (DateTime.Now <= Convert.ToDateTime(TxtFechaInicio.Value))
                    {

                    }
                }
                if (LabTipoNovedad.Value == "Vacaciones")
                {
                    FechaParametro.AddDays(15);
                    if (FechaParametro <= Convert.ToDateTime(TxtFechaInicio.Value))
                    {
                        Mensaje = "Debe solicitar sus vacaciones como mínimo 15 (calendario) de antelación.";
                    }
                }
            }
            return Mensaje;
        }
    }
}