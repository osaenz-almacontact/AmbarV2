using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmbarV2.MiPerfil
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        string NTColaborador;
        protected void Page_Load(object sender, EventArgs e)
        {
            DivAlert.Visible = false;
            if (!IsPostBack)
            {
                if ((string)Session["Nombres"] != null)
                {
                    NTColaborador = Session["NT"].ToString();
                    ObtenerDatosPersonales();
                    ActivarBotonesAdmin(int.Parse(Session["IdPerfil"].ToString()));
                }
                else
                {
                    Response.Redirect(@"\#");
                }
            }
        }

        public void ObtenerDatosPersonales()
        {
            LoginContexto contextoUsuarios = new LoginContexto();
            AreaContexto contextoAreas = new AreaContexto();
            OperacionContexto contextoOperaciones = new OperacionContexto();
            CargoContexto contextoCargos = new CargoContexto();
            SiteContexto contextoSites = new SiteContexto();

            List<Usuarios> ListUsuarios = contextoUsuarios.ConsultarUsuarios();
            List<Perfiles> ListPerfiles = contextoUsuarios.ConsusltarPerfiles();
            List<Personas> ListPersonas = contextoUsuarios.ObtenerDatosPersona();
            List<Areas> ListAreas = contextoAreas.ObtenerAreas();
            List<Operaciones> ListOperaciones = contextoOperaciones.ObtenerOperaciones();
            List<Cargos> ListCargos = contextoCargos.ObtenerCargos();
            List<Sites> ListSite = contextoSites.ObtenerSites();

            var query = (from Persona in ListPersonas
                         join Usuario in ListUsuarios on Persona.IdUsuario equals Usuario.Id
                         join Perfil in ListPerfiles on Usuario.IdPerfilAlmaNet equals Perfil.Id
                         where Usuario.Login == NTColaborador
                         select new
                         {
                             IdPersona = Persona.Id,
                             IdUsuario = Usuario.Id,
                             Nombres = Persona.Nombres,
                             PrimerApellido = Persona.PrimerApellido,
                             SegundoApellido = Persona.SegundoApellido,
                             Cedula = Persona.Cedula,
                             LugarDeNacimiento = Persona.LugarDeNacimiento,
                             FechaDeNacimiento = Persona.FechaDeNacimiento,
                             Direccion = Persona.DireccionResidencia,
                             Telefono = Persona.Telefono,
                             Genero = Persona.Sexo,
                             RH = Persona.IdRh,
                             Celular = Persona.Celular,
                             CorreoPersonal = Persona.Correo,
                             PersonaEmergencia = Persona.PersonaDeEmergencia,
                             TelefonoEmergencia = Persona.TelefonoDeEmergencia,

                             EstadoUsuairo = Perfil.Estado,
                             Perfil = Perfil.Nombre,
                             IdPerfil = Perfil.Id,
                             Foto = Persona.FotoURL
                         }).FirstOrDefault();

            HideIdPersona.Value = query.IdPersona.ToString();
            TxtNombres.Text = query.Nombres;
            TxtPrimerApellido.Text = query.PrimerApellido;
            TxtSegundoApellido.Text = query.SegundoApellido;
            TxtCedula.Text = query.Cedula;
            TxtLugarDeNacimiento.Text = query.LugarDeNacimiento;
            TxtFechaDeNacimiento.Text = DateTime.Parse(query.FechaDeNacimiento.ToString()).ToString("dd/MM/yyyy");
            TxtDireccion.Text = query.Direccion;
            TxtTelefono.Text = query.Telefono;
            DropGenero.SelectedValue = query.Genero;
            DropRH.SelectedValue = query.RH.ToString();
            TxtTelefonoMovil.Text = query.Cedula;
            TxtCorreo.Text = query.CorreoPersonal;

            TxtNombrePersonaDeEmergencia.Text = query.PersonaEmergencia;
            TxtTelefonoEmergencia.Text = query.TelefonoEmergencia;

        }

        protected void BtnActualizarInfomracionPersonal_Click(object sender, EventArgs e)
        {
            try
            {
                PersonaContexto contextoPersona = new PersonaContexto();
                Personas modelo = new Personas()
                {
                    Id = int.Parse(HideIdPersona.Value),
                    Nombres = TxtNombres.Text.Trim(),
                    PrimerApellido = TxtPrimerApellido.Text.Trim(),
                    SegundoApellido = TxtSegundoApellido.Text.Trim(),
                    Cedula = TxtCedula.Text.Trim(),
                    LugarDeNacimiento = TxtLugarDeNacimiento.Text.Trim(),
                    FechaDeNacimiento = DateTime.Parse(TxtFechaDeNacimiento.Text),
                    DireccionResidencia = TxtDireccion.Text.Trim(),
                    Telefono = TxtTelefono.Text.Trim(),
                    Sexo = DropGenero.SelectedValue,
                    IdRh = int.Parse(DropRH.SelectedValue),
                    Celular = TxtTelefonoMovil.Text,
                    Correo = TxtCorreo.Text,
                    PersonaDeEmergencia = TxtNombrePersonaDeEmergencia.Text,
                    TelefonoDeEmergencia = TxtTelefonoEmergencia.Text

                };
                contextoPersona.ActualizarInfomracionPersonal(modelo);

                LabTipoMensajeAlerta.Text = "ACTUALIZACIÓN";
                LabMensajeAlerta.Text = "Se han actualizado sus datos correctamente.";
                DivAlert.Attributes.Add("Class", "alert alert-success alert-dismissible");
                DivAlert.Visible = true;
            }
            catch (Exception ex)
            {
                LabTipoMensajeAlerta.Text = "ERROR";
                LabMensajeAlerta.Text = ex.ToString();
                DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                DivAlert.Visible = true;
            }
        }

        public void ActivarBotonesAdmin(int IdPerfil)
        {
            if (int.Parse(Session["IdPerfil"].ToString()) == 6)
            {
                LinkHorario.Visible = true;
                LinkIndicadores.Visible = true;
                LinkReportes.Visible = true;
                LinkAdminReportes.Visible = true;
            }
            else
            {
                LinkHorario.Visible = false;
                LinkIndicadores.Visible = false;
                LinkReportes.Visible = false;
                LinkAdminReportes.Visible = false;
            }
        }
    }
}