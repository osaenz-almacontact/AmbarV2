using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace AmbarV2.Autenticacion
{
    public class LoginControlador
    {
        public string LoginAutenticacion(String NtUsuario, ref Boolean ReturnError)
        {
            string Mensaje = "";
            if (NtUsuario == String.Empty)
            {
                return "";
            }
            else
            {
                //ReturnError = false;
                //PersonaContexto personaContexto = new PersonaContexto();
                //LoginContexto loginContexto = new LoginContexto();

                //List<Usuarios> ListUsuarios = loginContexto.ConsultarUsuarios();
                //List<Perfiles> ListPerfiles = loginContexto.ConsusltarPerfiles();
                //List<Personas> ListPersonas = personaContexto.ObtenerPersonas();

                //var query = (from Persona in ListPersonas
                //             join Usuario in ListUsuarios
                //             on Persona.IdUsuario equals Usuario.Id
                //             where Usuario.Login == NtUsuario
                //             select new
                //             {
                //                 Nombres = Persona.PrimerApellido + ' ' + Persona.Nombres,
                //                 Estado = Usuario.Estado
                //             }).ToList();

                //var Reetorno = query.Find(x => x.Estado.HasValue);
                //switch (query.Count)
                //{
                //    case 0:
                //        //LabMensaje.Text = "Username and/or password is incorrect.";
                //        Mensaje = "Usuario " + NtUsuario +"no existe.";
                //        break;
                //    case 1:
                //        if (Reetorno.Estado == 1)
                //        {
                //            HttpContext.Current.Session["Nombres"] = Reetorno.Nombres.ToString();
                //            FormsAuthentication.RedirectFromLoginPage(NtUsuario, true); 
                //            break;
                //        }
                //        else
                //        {
                //            Mensaje = "Su cuenta no ha sido activada.";
                //        }
                //        break;
                //        //default:
                //        //FormsAuthentication.SetAuthCookie(user.Username, user.RememberMe);
                //        //return RedirectToAction("Profile");
                //}

                ReturnError = false;
                PersonaContexto personaContexto = new PersonaContexto();
                LoginContexto loginContexto = new LoginContexto();

                List<Usuarios> ListUsuarios = loginContexto.ConsultarUsuarios();
                List<Perfiles> ListPerfiles = loginContexto.ConsusltarPerfiles();
                List<Personas> ListPersonas = personaContexto.ObtenerPersonas();

                var query = (from Persona in ListPersonas
                             join Usuario in ListUsuarios
                             on Persona.IdUsuario equals Usuario.Id
                             where Usuario.Login == NtUsuario
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
                        Mensaje = "Usuario " + NtUsuario + "no existe.";
                        break;
                    case 1:
                        if (Reetorno.Estado == 1)
                        {
                            HttpContext.Current.Session["Nombres"] = Reetorno.Nombres.ToString();
                            FormsAuthentication.RedirectFromLoginPage(NtUsuario, true);
                            break;
                        }
                        else
                        {
                            Mensaje = "Su cuenta no ha sido activada.";
                        }
                        break;
                        //default:
                        //FormsAuthentication.SetAuthCookie(user.Username, user.RememberMe);
                        //return RedirectToAction("Profile");
                }

                //ViewBag.Message = message;
                return Mensaje;
            }
        }
    }
}