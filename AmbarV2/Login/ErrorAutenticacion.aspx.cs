using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace AmbarV2.Login
{
    public partial class ErrorAutenticacion : System.Web.UI.Page
    {
        string EmployeeLogin = System.Security.Principal.WindowsIdentity.GetCurrent().Name;

        #region Variables

        //string EmployeeLogin = "oscarord";
        //string EmployeeLogin = "jgarcia";
        #endregion

        protected void Page_Load(object sender, EventArgs e)
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
                         join Area in ListAreas on Persona.IdArea equals Area.Id
                         join Operacion in ListOperaciones on Persona.IdOperacion equals Operacion.Id
                         join Cargo in ListCargos on Persona.IdCargo equals Cargo.Id
                         join Site in ListSite on Persona.IdSite equals Site.Id
                         join Usuario in ListUsuarios on Persona.IdUsuario equals Usuario.Id
                         join Perfil in ListPerfiles on Usuario.IdPerfilAlmaNet equals Perfil.Id
                         where Usuario.Login.Replace("\\\\", "\\") == EmployeeLogin
                         select new
                         {
                             IdPersona = Persona.Id,
                             IdUsuario = Usuario.Id,
                             Nombres = Persona.PrimerApellido + ' ' + Persona.Nombres,
                             Operacion = Operacion.Nombre,
                             Area = Area.Nombre,
                             Cargo = Cargo.Nombre,
                             Site = Site.Nombre,
                             EstadoUsuairo = Perfil.Estado,
                             Perfil = Perfil.Nombre,
                             IdPerfil = Perfil.Id,
                             Foto = Persona.FotoURL
                         }).ToList();

            var Retorno = query.Find(x => x.EstadoUsuairo.HasValue);
            switch (query.Count)
            {
                case 0:
                    //LabMensaje.Text = "Username and/or password is incorrect.";
                    break;
                case 1:
                    if (Retorno.EstadoUsuairo == 1)
                    {
                        Session["IdPersona"] = Retorno.IdPersona.ToString();
                        Session["IdUsuario"] = Retorno.IdUsuario.ToString();
                        Session["Nombres"] = Retorno.Nombres.ToString();
                        Session["Operacion"] = Retorno.Operacion.ToString();
                        Session["Area"] = Retorno.Area.ToString();
                        Session["Cargo"] = Retorno.Cargo.ToString();
                        Session["Site"] = Retorno.Site.ToString();
                        Session["Estado"] = Retorno.EstadoUsuairo.ToString();
                        Session["Perfil"] = Retorno.Perfil.ToString();
                        Session["IdPerfil"] = Retorno.IdPerfil.ToString();
                        Session["NT"] = EmployeeLogin;
                        FormsAuthentication.RedirectFromLoginPage(EmployeeLogin, true);
                        break;
                    }
                    else
                    {
                        //LabMensaje.Text = "Account has not been activated.";
                    }
                    break;
                    //default:
                    //FormsAuthentication.SetAuthCookie(user.Username, user.RememberMe);
                    //return RedirectToAction("Profile");
            }

        }
    }
}