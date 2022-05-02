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
        //string EmployeeLogin = System.Security.Principal.WindowsIdentity.GetCurrent().Name;

        #region Variables

        //string EmployeeLogin = "oscarord";
        string EmployeeLogin = "jgarcia";
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            PersonaContexto personaContexto = new PersonaContexto();
            LoginContexto loginContexto = new LoginContexto();
            PerfilContexto perfilContexto = new PerfilContexto();

            List<Usuarios> ListUsuarios = loginContexto.ConsultarUsuarios();
            List<Perfiles> ListPerfiles = perfilContexto.ObtenerPerfiles();
            List<Personas> ListPersonas = personaContexto.ObtenerPersonas();

            var query = (from Persona in ListPersonas
                         join Usuario in ListUsuarios
                         on Persona.IdUsuario equals Usuario.Id
                         where Usuario.Login == EmployeeLogin
                         select new
                         {
                             Nombres = Persona.PrimerApellido + ' ' + Persona.Nombres,
                             Estado = Usuario.Estado
                         }).ToList();

            var Reetorno = query.Find(x => x.Estado.HasValue);
            switch (query.Count)
            {
                case 0:
                    //LabMensaje.Text = "Username and/or password is incorrect.";
                    break;
                case 1:
                    if (Reetorno.Estado == 1)
                    {
                        Session["Nombres"] = Reetorno.Nombres.ToString();
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

            //ViewBag.Message = message;
            //return View(user);
        }
    }
}