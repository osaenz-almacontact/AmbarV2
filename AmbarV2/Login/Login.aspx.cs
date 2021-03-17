using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AmbarV2.Login
{
    public partial class Login1 : System.Web.UI.Page
    {
        LoginContexto contextoUsuarios = new LoginContexto();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnIngresar_Click(object sender, EventArgs e)
        {

            //List<Usuarios> ListUsuarios = contextoUsuarios.ConsultarUsuarios();
            //List<Perfiles> ListPerfiles = contextoUsuarios.ConsusltarPerfiles();
            //List<Personas> ListPersonas = contextoUsuarios.ObtenerDatosPersona();

            //var query = (from Persona in ListPersonas
            //             join Usuario in ListUsuarios
            //             on Persona.idUsuario equals Usuario.Id
            //             where Usuario.Login == TxtUsuario.Value && Usuario.Password == TxtPassword.Value
            //             select new
            //             {
            //                 Nombres = Persona.primerApellido + ' ' + Persona.nombres,
            //                 Estado = Persona.nombreEstado
            //             }).ToList();

            //var Reetorno = query.Find(x => x.Estado.HasValue);
            //switch (query.Count)
            //{
            //    case 0:
            //        LabMensaje.Text = "Username and/or password is incorrect.";
            //        break;
            //    case 1:
            //        if (Reetorno.Estado == 1)
            //        {
            //            Session["Nombres"] = Reetorno.Nombres.ToString();
            //            FormsAuthentication.RedirectFromLoginPage(TxtUsuario.Value, true);
            //            break;
            //        }
            //        else
            //        {
            //            LabMensaje.Text = "Account has not been activated.";
            //        }
            //        break;
            //        //default:
            //        //FormsAuthentication.SetAuthCookie(user.Username, user.RememberMe);
            //        //return RedirectToAction("Profile");
            //}

            ////ViewBag.Message = message;
            ////return View(user);

        }
    }
}