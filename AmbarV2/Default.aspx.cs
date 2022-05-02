using AmbarV2.Models;
using AmbarV2.Repositorio;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.Security;
using System.Web.UI;

namespace AmbarV2
{
    public partial class _Default : Page
    {
        PersonaContexto personaContexto = new PersonaContexto();
        LoginContexto loginContexto = new LoginContexto();

        protected void Page_Load(object sender, EventArgs e)
        {
            LabFecha.Text = "Hoy " + DateTime.Now.ToString("MM/dd/yyyy");
            DivAlert.Visible = false;
            BtnActualizar.Visible = false;
            BtnModalComunicados.Visible = false;
            BtnAgregarNoticia.Visible = false;

            if (!IsPostBack)
            {
                Obtener();
                ObtenerVacantes();
                ObtenerNoticias();
                if ((string)Session["Nombres"] != null)
                {

                    ActivarBotonesAdmin(int.Parse(Session["IdPerfil"].ToString()));
                }
            }
        }
        public void Obtener()
        {
            var fecha = DateTime.Now;

            List<Usuarios> ListUsuarios = loginContexto.ConsultarUsuarios();
            List<Personas> ListPersonas = loginContexto.ObtenerDatosPersona();
            List<Perfiles> ListPerfiles = loginContexto.ConsusltarPerfiles();

            var query = (from Persona in ListPersonas
                         join Usuario in ListUsuarios on Persona.IdUsuario equals Usuario.Id
                         select new
                         {
                             Nombres = Persona.PrimerApellido + ' ' + Persona.Nombres,
                             FechaNacimiento = Persona.FechaDeNacimiento,
                         }).ToList();

            DataCumpleanos.DataSource = query.Where(a => a.FechaNacimiento.Month.Equals(fecha.Month)).ToList();
            DataCumpleanos.DataBind();
        }

        public void ObtenerVacantes()
        {
            RequisicionContexto contextoRequisisciones = new RequisicionContexto();
            CargoContexto contextoCargo = new CargoContexto();
            OperacionContexto contextoOperacion = new OperacionContexto();

            List<Requisiciones> ListRequisiciones = contextoRequisisciones.ObtenerRequisiciones();
            List<Cargos> ListCargos = contextoCargo.ObtenerCargos();
            List<Operaciones> ListOperaciones = contextoOperacion.ObtenerOperaciones();

            var query = (from Requisicion in ListRequisiciones
                         join Cargo in ListCargos on Requisicion.IdCargo equals Cargo.Id
                         join Operacion in ListOperaciones on Requisicion.IdOperacion equals Operacion.Id
                         where Requisicion.IdTipoConvocatoria == 1
                         select new
                         {
                             Id = Requisicion.Id,
                             Cargo = Cargo.Nombre,
                             Perfil = Requisicion.Perfil,
                             NumCandidatos = Requisicion.NumeroCandidato,
                             FechaPublicacion = Requisicion.FechaCreacion,
                             Salario = Requisicion.Salario,
                             Variable = Requisicion.ValorVariable.ToString() == "0" ? "N/A" : Requisicion.ValorVariable.ToString(),
                             Operacion = Operacion.Nombre
                         }).ToList();

            RptVacantes.DataSource = query.ToList();
            RptVacantes.DataBind();
        }

        public void ObtenerNoticias()
        {
            NoticiaContexto contextoNoticias = new NoticiaContexto();

            List<Noticias> ListNoticiass = contextoNoticias.ObtenerNoticias();

            var query = (from Noticia in ListNoticiass
                         orderby Noticia.Id descending
                         select new
                         {
                             Id = Noticia.Id,
                             Titulo = Noticia.Titulo,
                             Descripcion = Noticia.Descripcion,
                             FechaPublicacion = Noticia.Fecha
                         }).Take(10).ToList();

            RptNoticias.DataSource = query.ToList();
            RptNoticias.DataBind();
        }


        protected void BtnAplicar_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "confirm('Esta seguro que desea participar en este proceso de selección?');", true);
        }

        protected void BtnAgregarNoticia_ServerClick(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>$(document).ready(function(){$('#ModalAgregarNoticia').modal('show');});</script>", false);
        }

        protected void BtnPublicaer_Click(object sender, EventArgs e)
        {
            NoticiaContexto contextoNoticias = new NoticiaContexto();
            try
            {
                Noticias modelo = new Noticias()
                {
                    Titulo = TxtTituloNoticia.Text.Trim(),
                    Descripcion = TxtDescripcion.Text.Trim(),
                    Fecha = DateTime.Now
                };
                contextoNoticias.GuardarNoticia(modelo);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>$(document).ready(function(){$('#ModalActualizarImagenes').modal('show');});</script>", false);
        }

        protected void BtnPublicarImagenes_Click(object sender, EventArgs e)
        {
            if (FlpImagen1.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpImagen1.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpImagen1.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Carousel/") + "Foto1.jpg";
                            FlpImagen1.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpImagen2.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpImagen2.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpImagen2.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Carousel/") + "Foto2.jpg";
                            FlpImagen2.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpImagen3.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpImagen3.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpImagen3.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Carousel/") + "Foto3.jpg";
                            FlpImagen3.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpImagen4.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpImagen4.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpImagen4.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Carousel/") + "Foto4.jpg";
                            FlpImagen4.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpImagen5.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpImagen5.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpImagen5.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Carousel/") + "Foto5.jpg";
                            FlpImagen5.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpImagen6.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpImagen6.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpImagen6.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Carousel/") + "Foto6.jpg";
                            FlpImagen6.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpImagen7.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpImagen7.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpImagen7.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Carousel/") + "Foto7.jpg";
                            FlpImagen7.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpImagen8.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpImagen8.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpImagen8.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Carousel/") + "Foto8.jpg";
                            FlpImagen8.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }
                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }
        }

        protected void BtnActualizarComunicados_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>$(document).ready(function(){$('#ModalActualizarComunicados').modal('show');});</script>", false);
        }
        protected void BtnPublicarComunicado_Click(object sender, EventArgs e)
        {
            if (FlpComunicado1.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpComunicado1.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpComunicado1.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Comunicados/") + "image001.jpg";
                            FlpComunicado1.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpComunicado2.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpComunicado2.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpComunicado2.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Comunicados/") + "image002.jpg";
                            FlpComunicado2.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpComunicado3.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpComunicado3.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpComunicado3.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Comunicados/") + "image002.jpg";
                            FlpComunicado3.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpComunicado4.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpComunicado4.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpComunicado4.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Comunicados/") + "image002.jpg";
                            FlpComunicado4.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }

            if (FlpComunicado5.PostedFile.FileName != null)
            {
                try
                {
                    if (Path.GetExtension(FlpComunicado5.PostedFile.FileName).ToLower() == ".jpg")
                    {
                        if (FlpComunicado5.PostedFile.ContentLength <= 1000000)
                        {
                            string path = Server.MapPath("Content/Images/Comunicados/") + "image002.jpg";
                            FlpComunicado5.SaveAs(path);
                        }
                    }
                    else
                    {
                        LabTipoMensajeAlerta.Text = "ERROR";
                        LabMensajeAlerta.Text = "El archivo es demasiado grade para ser cargado o no tiene el formato correcto, debe ser menor a 1 MB y formato JPG.";
                        DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                        DivAlert.Visible = true;
                    }

                }
                catch (Exception ex)
                {
                    LabTipoMensajeAlerta.Text = "ERROR";
                    LabMensajeAlerta.Text = ex.ToString();
                    DivAlert.Attributes.Add("Class", "alert alert-danger alert-dismissible");
                    DivAlert.Visible = true;
                }
            }
        }

        public void ActivarBotonesAdmin(int IdPerfil)
        {
            if (int.Parse(Session["IdPerfil"].ToString()) == 6)
            {
                BtnAgregarNoticia.Visible = true;
                BtnActualizar.Visible = true;
                BtnModalComunicados.Visible = true;
            }
            else if (int.Parse(Session["IdPerfil"].ToString()) == 7)
            {
                BtnActualizar.Visible = true;
                BtnModalComunicados.Visible = true;
            }
        }


    }
}