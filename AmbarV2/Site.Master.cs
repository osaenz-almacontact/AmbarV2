using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmbarV2
{
    public partial class SiteMaster : MasterPage
    {
        //string EmployeeLogin = System.Security.Principal.WindowsIdentity.GetCurrent().Name;

        #region Contextos

        string EmployeeLogin = "oscarord";
        LoginContexto contextoUsuarios = new LoginContexto();
        AreaContexto contextoAreas = new AreaContexto();
        OperacionContexto contextoOperaciones = new OperacionContexto();
        CargoContexto contextoCargos = new CargoContexto();
        SiteContexto contextoSites = new SiteContexto();

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!this.Page.User.Identity.IsAuthenticated)
                {
                    //FormsAuthentication.RedirectToLoginPage();
                    Login();
                }
                else
                {
                    //if ((string)Session["Nombres"] == "" || (string)Session["Nombres"] == null)
                    //{
                    //    FormsAuthentication.RedirectToLoginPage();
                    //}
                    //else
                    //{
                    //    string NombresYApellidos = Convert.ToString(Session["Nombres"]);
                    //    int TipoUsuario = Convert.ToInt32(Session["TipoUsuario"]);
                    //     = NombresYApellidos;

                    //}
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void Login()
        {
            List<Usuarios> ListUsuarios = contextoUsuarios.ConsultarUsuarios();
            List<Perfiles> ListPerfiles = contextoUsuarios.ConsusltarPerfiles();
            List<Personas> ListPersonas = contextoUsuarios.ObtenerDatosPersona();
            List<Areas> ListAreas = contextoAreas.ObtenerAreas();
            List<Operaciones> ListOperaciones = contextoOperaciones.ObtenerOperaciones();
            List<Cargos> ListCargos = contextoCargos.ObtenerCargos();
            List<Sites> ListSite = contextoSites.ObtenerSites();

            var query = (from Persona in ListPersonas
                         join Area in ListAreas on Persona.idArea equals Area.Id
                         join Operacion in ListOperaciones on Persona.idOperacion equals Operacion.Id
                         join Cargo in ListCargos on Persona.IdCargo equals Cargo.Id
                         join Site in ListSite on Persona.IdSite equals Site.Id
                         join Usuario in ListUsuarios on Persona.idUsuario equals Usuario.Id
                         join Perfil in ListPerfiles on Usuario.IdPerfil equals Perfil.Id
                         where Usuario.Login == EmployeeLogin
                         select new
                         {
                             Nombres = Persona.primerApellido + ' ' + Persona.nombres,
                             Operacion =Operacion.Nombre,
                             Area = Area.Nombre,
                             Cargo = Cargo.Nombre,
                             Site = Site.Nombre,
                             EstadoUsuairo = Perfil.Estado,
                             Perfil = Perfil.Nombre,
                             IdPerfil = Perfil.Id
                         }).ToList();

            var Retorno = query.Find(x => x.EstadoUsuairo.HasValue);
            switch (query.Count)
            {
                case 0:
                    //LabMensaje.Text = "Username and/or password is incorrect.";
                    Response.Redirect(@"\Login\ErrorAutenticacion.aspx");
                    break;
                case 1:
                    if (Retorno.EstadoUsuairo == 1)
                    {
                        LabNombres.Text = Retorno.Nombres.ToString();
                        Session["Nombres"] = Retorno.Nombres.ToString();
                        Session["Operacion"] = Retorno.Operacion.ToString();
                        Session["Area"] = Retorno.Area.ToString();
                        Session["Cargo"] = Retorno.Cargo.ToString();
                        Session["Site"] = Retorno.Site.ToString();
                        Session["Estado"] = Retorno.EstadoUsuairo.ToString();
                        Session["Perfil"] = Retorno.Perfil.ToString();
                        Session["IdPerfil"] = Retorno.IdPerfil.ToString();
                        //FormsAuthentication.RedirectFromLoginPage(TxtUsuario.Value, true);
                        break;
                    }
                    else
                    {
                        Response.Redirect(@"\Login\ErrorAutenticacion.aspx");
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