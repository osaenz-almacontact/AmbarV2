<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="AmbarV2.MiPerfil.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        $off_white:#fafafa;
        $light_grey:#A39D9E;
        * {
            box-sizing: border-box;
        }

        body {
            background-color: $off_white;
        }

        .container {
            margin: 80px auto;
            width: 809px;
        }

        .light {
            background-color: #fff;
        }

        .calendar {
            width: 100%;
            font-family: 'century gothic', sans-serif;
            padding: 20px 30px;
            display: inline-block;
        }

        .calendar_header {
            border-bottom: 2px solid rgba(0, 0, 0, 0.08);
        }

        .header_copy {
            color: $light_grey;
        }

        .calendar_plan {
            margin: 20px 0 40px;
        }

        .cl_plan {
            width: 100%;
            height: 140px;
            background-image: linear-gradient(-222deg, #12679B, #1EA6FA);
            box-shadow: 0px 0px 52px -18px rgba(0, 0, 0, 0.75);
            padding: 30px;
            color: #fff;
        }

        .cl_title {
        }

        .cl_copy {
            font-size: 20px;
            margin: 20px 0;
            display: inline-block;
        }

        .calendar_events {
            color: $light_grey;
        }

        .ce_title {
            font-size: 14px;
        }
    </style>
    <!---Alert---->
    <div class="alert alert-danger alert-dismissible" role="alert" runat="server" id="DivAlert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        <div class="alert-message">
            <strong>
                <asp:Label Text="text" runat="server" Id="LabTipoMensajeAlerta"/>
            </strong> <asp:Label Text="text" runat="server" ID="LabMensajeAlerta"/>
        </div>
    </div>
    <div class="container-fluid p-0">

        <h1 class="h3 mb-3">Mi Perfil</h1>

        <div class="row">
            <div class="col-md-3 col-xl-2">

                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title mb-0">Menu</h5>
                    </div>

                    <div class="list-group list-group-flush" role="tablist">
                        <a class="list-group-item list-group-item-action active" data-toggle="list" href="#datosPersonales" role="tab">Datos Personales
                        </a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#horario" role="tab" runat="server" id="LinkHorario">Horario
                        </a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#indicadores" role="tab" runat="server" id="LinkIndicadores">Indicadores
                        </a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#reportesOnline" role="tab" runat="server" id="LinkReportes">Reportes Online
                        </a>
                        <a class="list-group-item list-group-item-action" data-toggle="list" href="#generacionDeReportes" role="tab" runat="server" id="LinkAdminReportes">Genreacion De Reportes
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-md-9 col-xl-10">
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="datosPersonales" role="tabpanel">

                        <div class="card">
                            <div class="card-header">
                                <asp:HiddenField ID="HideIdPersona" runat="server" />
                                <h5 class="card-title mb-0">Datos personales</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="inputUsername">Nombres</label>
                                            <asp:TextBox runat="server" ID="TxtNombres" placeholder="Nombres" class="form-control" />
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="inputUsername">Primer Apellido</label>
                                                    <asp:TextBox runat="server" ID="TxtPrimerApellido" class="form-control" placeholder="Primer Apellido" />
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="inputUsername">Segundo Apellido</label>
                                                    <asp:TextBox runat="server" ID="TxtSegundoApellido" class="form-control" placeholder="Segundo Apellido" />
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-4">
                                        <div class="text-center">
                                            <img alt="Charles Hall" src="img/avatars/avatar.jpg" class="rounded-circle img-responsive mt-2" width="128" height="128" />
                                            <%--<div class="mt-2">
                                                <span class="btn btn-primary"><i class="fas fa-upload"></i>Upload</span>
                                            </div>
                                            <small>For best results, use an image at least 128px by 128px in .jpg format</small>--%>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="TxtCedula">Cedula</label>
                                            <asp:TextBox runat="server" ID="TxtCedula" placeholder="Cedula" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="TxtLugarDeNacimiento">Lugar De Nacimiento</label>
                                            <asp:TextBox runat="server" ID="TxtLugarDeNacimiento" placeholder="Lugar De Nacimiento" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="TxtFechaDeNacimiento">Fecha De Nacimiento</label>
                                            <asp:TextBox runat="server" Type="date" id="TxtFechaDeNacimiento" CssClass="form-control" Enabled="false"/>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="inputUsername">Direccion</label>
                                            <asp:TextBox runat="server" ID="TxtDireccion" placeholder="Direccion" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="inputUsername">Telefono</label>
                                            <asp:TextBox runat="server" ID="TxtTelefono" placeholder="Telefono" class="form-control" />
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="inputUsername">Genero</label>
                                            <asp:DropDownList ID="DropGenero" class="form-control" runat="server">
                                                <Items>
                                                    <asp:ListItem Text="(Seleccionar)" Value="-1" />
                                                    <asp:ListItem Text="Masculino" Value="M" />
                                                    <asp:ListItem Text="Femenino" Value="F" />
                                                </Items>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="inputUsername">RH</label>
                                            <asp:DropDownList ID="DropRH" class="form-control" runat="server">
                                                <Items>
                                                    <asp:ListItem Text="(Seleccionar)" Value="-1" />
                                                    <asp:ListItem Text="O+" Value="1" />
                                                    <asp:ListItem Text="O-" Value="2" />
                                                </Items>
                                            </asp:DropDownList>
                                        </div>
                                    </div>


                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="inputUsername">Telefono Movil</label>
                                            <asp:TextBox runat="server" ID="TxtTelefonoMovil" placeholder="Telefono" class="form-control" />
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="inputUsername">Correo Personal</label>
                                            <asp:TextBox runat="server" ID="TxtCorreo" placeholder="Nombres" class="form-control" />
                                        </div>
                                    </div>
                                </div>

                                <%--EPS - ARL--%>
                                <%--<div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="inputUsername">EPS</label>
                                            <asp:TextBox runat="server" ID="TextBox12" placeholder="Nombres" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="inputUsername">ARL</label>
                                            <asp:TextBox runat="server" ID="TextBox13" placeholder="Nombres" class="form-control" />
                                        </div>
                                    </div>


                                </div>--%>
                            </div>

                        </div>
                        <!---END CARD--->

                        <div class="card">
                            <div class="card-header">

                                <h5 class="card-title mb-0">Persona de emergencia</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="inputUsername">Nombre Contacto De Emergencia</label>
                                            <asp:TextBox runat="server" ID="TxtNombrePersonaDeEmergencia" placeholder="Nombres" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="inputUsername">Telefono De Emergencia</label>
                                            <asp:TextBox runat="server" ID="TxtTelefonoEmergencia" placeholder="Telefono" class="form-control" />
                                        </div>
                                    </div>
                                </div>

                                <asp:Button Text="Actualizar Informacion" runat="server" CssClass="btn btn-primary btn-lg" id="BtnActualizarInfomracionPersonal" OnClick="BtnActualizarInfomracionPersonal_Click"/>

                            </div>
                        </div>
                        <!---END CARD--->

                    </div>
                    <!--END TAB-PANE--->

                    <div class="tab-pane fade" id="horario" role="tabpanel">
                        <div class="card">
                            <div class="card-header">
                                <ul class="nav nav-tabs card-header-tabs pull-right" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#tab-1">Activo</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#tab-2">Cambio</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link disabled" data-toggle="tab" href="#tab-3">Autorizacion</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="card-body">


                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="tab-1" role="tabpanel">



                                        <div class="calendar light">
                                            <div class="calendar_header">
                                                <h1 class="header_title">Mi Horario</h1>
                                                <p class="header_copy">Semanal</p>
                                            </div>
                                            <div class="calendar_plan">
                                                <div class="cl_plan">
                                                    <div class="cl_title">Hoy</div>
                                                    <div class="row">
                                                        <div class="cl_copy col-md-4">22nd  April  2018</div>
                                                        <div class="col-md-8">
                                                            <h2 style="color: white;"><b>Hora Ingreso</b> 8 AM - <b>Hora Salida</b> 5PM</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="calendar_events">

                                                <div class="row">
                                                    <div class="col-md-8">

                                                        <div class="table-responsive">
                                                            <table class="table mb-0">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">Dia</th>
                                                                        <th scope="col">Ingreso</th>
                                                                        <th scope="col">Break #1</th>
                                                                        <th scope="col">Break #2</th>
                                                                        <th scope="col">Dialogo</th>
                                                                        <th scope="col">Formacion</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <th scope="row">Lunes</th>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">Martes</th>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">Miercoles</th>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">Jueves</th>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">Viernes</th>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">Sabado</th>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th scope="row">Domingo</th>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                        <td>Cell</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>

                                                        <hr />
                                                        <br />
                                                        <div class="col-sm-12">
                                                            <h3>Solicitud de cambio</h3>
                                                            <p style="color: red">Recuerde que la solicitud debe ser enviada al menos 24 horas antes del día a cambiar</p>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Dia</label>
                                                                    <input type="date" id="DateDiaCambio" class="form-control" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Id Trabajador</label>
                                                                    <asp:TextBox runat="server" ID="TxtIdPersonaCmabio" placeholder="Id de la persona con quien se realizará el cambio." CssClass="form-control" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Ingreso</label>
                                                                    <asp:DropDownList ID="DropIngreso" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label>Salida</label>
                                                                    <asp:DropDownList ID="DropSalida" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-12">
                                                            <asp:Button runat="server" ID="BtnSolicitar" class="btn btn-primary btn-block" Text="Solicitar" />
                                                        </div>


                                                    </div>
                                                    <!---END COL--->
                                                    <div class="col-md-4">

                                                        <div class="alert alert-primary alert-dismissible" role="alert">
                                                            <div class="alert-icon">
                                                                <i class="far fa-fw fa-bell"></i>
                                                            </div>
                                                            <div class="alert-message">
                                                                <strong>Fecha de ingreso</strong> Su solicitud para el dia 02-02-2021 en estado Pendiente!
                                                            </div>
                                                        </div>

                                                        <div class="alert alert-primary alert-dismissible" role="alert">
                                                            <div class="alert-icon">
                                                                <i class="far fa-fw fa-bell"></i>
                                                            </div>
                                                            <div class="alert-message">
                                                                <strong>Fecha de ingreso</strong> Su solicitud para el dia 02-02-2021 en estado Pendiente!
                                                            </div>
                                                        </div>


                                                    </div>

                                                </div>
                                                <!----END ROW---->

                                            </div>
                                        </div>


                                    </div>


                                    <div class="tab-pane fade" id="tab-2" role="tabpanel">
                                        <div class="calendar light">
                                            <div class="calendar_header">
                                                <h1 class="header_title">Cambio de Jornada</h1>
                                                <p class="header_copy">Semanal</p>
                                            </div>
                                            <div class="caledar_events">
                                                <div class="row">
                                                    <div class="col-md-8">
                                                        <br />
                                                        <div class="row">
                                                            <div class="form-group">
                                                                <label>ID Agente</label>
                                                                <asp:TextBox runat="server" ID="TxtIdAgenteCambio" CssClass="form-control" />
                                                            </div>
                                                            <div class="form-group" style="margin-top: 25px; margin-left: 5px;">
                                                                <asp:Button Text="Buscar Horario" runat="server" CssClass="btn btn-pill btn-primary" />
                                                            </div>

                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>Dia</label>
                                                                    <asp:TextBox ID="TxtMonday" runat="server" placeholder="Dia" class="form-control" OnFocus="this.blur()"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="TxtTuesday" runat="server" placeholder="Dia" class="form-control" OnFocus="this.blur()"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="TxtWednesday" runat="server" placeholder="Dia" class="form-control" OnFocus="this.blur()"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="TxtThursday" runat="server" placeholder="Dia" class="form-control" OnFocus="this.blur()"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="TxtFriday" runat="server" placeholder="Dia" class="form-control" OnFocus="this.blur()"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="TxtSaturday" runat="server" placeholder="Dia" class="form-control" OnFocus="this.blur()"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="TxtSunday" runat="server" placeholder="Dia" class="form-control" OnFocus="this.blur()"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>LogIn</label>
                                                                    <asp:DropDownList ID="DropLogInMonday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogInTuesday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogInWednesday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogInThursday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogInFriday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogInSaturday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogInSunday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label>LogOut</label>
                                                                    <asp:DropDownList ID="DropLogOutMonday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogOutTuesday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogOutWednesday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogOutThursday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogOutFriday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogOutSaturday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:DropDownList ID="DropLogOutSunday" class="form-control" runat="server">
                                                                        <asp:ListItem>(Seleccionar)</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!----END COL---->
                                                    <div class="col-md-4">

                                                        <div class="alert alert-primary alert-dismissible" role="alert">
                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <div class="alert-icon">
                                                                <i class="far fa-fw fa-bell"></i>
                                                            </div>
                                                            <div class="alert-message">
                                                                <strong>Oscar Orduz</strong> Ha solicitado canbiar jornada con <strong>Jaime Garcia</strong> El dia 12-02-2021
                                                            </div>
                                                        </div>

                                                        <div class="alert alert-primary alert-dismissible" role="alert">
                                                            <button type="button" class="close" data-dismiss="alert">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                            <div class="alert-icon">
                                                                <i class="far fa-fw fa-bell"></i>
                                                            </div>
                                                            <div class="alert-message">
                                                                <strong>Oscar Orduz</strong> Ha solicitado canbiar jornada con <strong>Jaime Garcia</strong> El dia 12-02-2021
                                                            </div>
                                                        </div>


                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="tab-3" role="tabpanel">
                                        <h5 class="card-title">Card with tabs</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>

                            </div>


                        </div>
                    </div>
                    <!--END TAB-PANE--->

                    <div class="tab-pane fade" id="indicadores" role="tabpanel">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="w-100">


                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-4">Indicador 1</h5>
                                                        <div class="row">
                                                            <div class="col-md-8">
                                                                <h1 class="display-5 mt-1 mb-3">0,0</h1>
                                                            </div>
                                                            <div class="col-md-4" align="center">
                                                                <i class="text-success feather-max" data-feather="arrow-up-circle"></i>
                                                            </div>
                                                        </div>

                                                        <div class="mb-1">
                                                            <span class="text-success"><i class="mdi mdi-arrow-bottom-right"></i>0,0% </span>
                                                            <span class="text-muted">Desde el mes pasado</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-4">Indicador 2</h5>
                                                        <div class="row">
                                                            <div class="col-md-8">
                                                                <h1 class="display-5 mt-1 mb-3">0,0</h1>
                                                            </div>
                                                            <div class="col-md-4" align="center">
                                                                <i class="text-success feather-max" data-feather="arrow-up-circle"></i>
                                                            </div>
                                                        </div>

                                                        <div class="mb-1">
                                                            <span class="text-success"><i class="mdi mdi-arrow-bottom-right"></i>0,0% </span>
                                                            <span class="text-muted">Desde el mes pasado</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-4">Indicador 3</h5>
                                                        <div class="row">
                                                            <div class="col-md-8">
                                                                <h1 class="display-5 mt-1 mb-3">0,0</h1>
                                                            </div>
                                                            <div class="col-md-4" align="center">
                                                                <i class="text-danger feather-max" data-feather="arrow-down-circle"></i>
                                                            </div>
                                                        </div>

                                                        <div class="mb-1">
                                                            <span class="text-danger"><i class="mdi mdi-arrow-bottom-right"></i>0,0% </span>
                                                            <span class="text-muted">Desde el mes pasado</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-4">Indicador 4</h5>
                                                        <div class="row">
                                                            <div class="col-md-8">
                                                                <h1 class="display-5 mt-1 mb-3">0,0</h1>
                                                            </div>
                                                            <div class="col-md-4" align="center">
                                                                <i class="text-danger feather-max" data-feather="arrow-down-circle"></i>
                                                            </div>
                                                        </div>
                                                        <div class="mb-1">
                                                            <span class="text-danger"><i class="mdi mdi-arrow-bottom-right"></i>-0,0% </span>
                                                            <span class="text-muted">Desde el mes pasado</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-4">Desempeño Mes</h5>
                                                        <div class="row">
                                                            <div class="col-md-8">
                                                                <h1 class="display-5 mt-1 mb-3">0,0</h1>
                                                            </div>
                                                            <div class="col-md-4" align="center">
                                                                <i class="text-danger feather-max" data-feather="arrow-down-circle"></i>
                                                            </div>
                                                        </div>
                                                        <div class="mb-1">
                                                            <span class="text-danger"><i class="mdi mdi-arrow-bottom-right"></i>0,0% </span>
                                                            <span class="text-muted">Desde el mes pasado</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card">
                                                    <div class="card-body">
                                                        <h5 class="card-title mb-4">Orders</h5>
                                                        <h1 class="display-5 mt-1 mb-3">64</h1>
                                                        <div class="mb-1">
                                                            <span class="text-danger"><i class="mdi mdi-arrow-bottom-right"></i>-2.25% </span>
                                                            <span class="text-muted">Desde el mes pasado</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-9">

                                                <div class="table-responsive">
                                                    <table class="table mb-0">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Semana</th>
                                                                <th scope="col">Indicador 1</th>
                                                                <th scope="col">Indicador 2</th>
                                                                <th scope="col">Indicador 3</th>
                                                                <th scope="col">Indicador 4</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row">Semana 1</th>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">Semana 2</th>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">Semana 3</th>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">Semana 4</th>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                                <td>Cell</td>
                                                            </tr>
                                                            
                                                        </tbody>
                                                    </table>
                                                </div>


                                            </div>
                                        </div>

                                    </div>

                                </div>


                            </div>
                        </div>
                    </div>
                    <!--END TAB-PANE--->

                </div>
                <!--END TAB-CONTENT--->


            </div>

        </div>
    </div>

</asp:Content>
