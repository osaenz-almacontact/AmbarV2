<%@ Page Title="Ingreso de Novedades" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IngresoDeNovedades.aspx.cs" Inherits="AmbarV2.Novedades.IngresoDeNovedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="/Scripts/jquery/jquery.js"></script>
    <script>
        $(document).ready(function () {
            $('#PNotaIncapaccidad').hide();
            $('#PNotaIncapaccidadDos').hide();
            $('#PNotaPermiso').hide();
            $('#PDiaElectoral').hide();
            $('#TxtHorario').hide();

            $("div[id=DivIncapacidad]").click(function () {
                $('#DivIncapacidad').css('background-color', '#21618C');
                $('#DivPermisos').css('background-color', '#eaebef');
                $('#DivDiaElectoral').css("background-color", '#eaebef');
                $('#DivVacaciones').css('background-color', '#eaebef');

                $('#PNotaIncapaccidad').show();
                $('#PNotaIncapaccidadDos').hide();
                $('#PNotaPermiso').hide();
                $('#PNotaIncapaccidad').hide();
                $('#DivHoraInicio').hide();
                $('#DivHoraFin').hide();
                $('#DivCargarArchivo').show();
                //alert("incapacidad");
            });

            $("div[id=DivPermisos]").click(function () {
                $('div[id=DivIncapacidad]').css('background-color', '#eaebef');
                $('div[id=DivPermisos]').css('background-color', '#21618C');
                $('div[id=DivDiaElectoral]').css('background-color', '#eaebef');
                $('div[id=DivVacaciones]').css('background-color', '#eaebef');

                $('#PNotaIncapaccidad').hide();
                $('#PNotaIncapaccidadDos').show();
                $('#PNotaPermiso').hide();
                $('#PNotaIncapaccidad').hide();
                $('#DivHoraInicio').show();
                $('#DivHoraFin').show();
                $('#DivCargarArchivo').hide();
                //alert("pemisos");
            });

            $("div[id=DivDiaElectoral]").click(function () {
                $('div[id=DivIncapacidad]').css("background-color", "#eaebef");
                $('div[id=DivPermisos]').css("background-color", "#eaebef");
                $('div[id=DivDiaElectoral]').css("background-color", "#21618C");
                $('div[id=DivVacaciones]').css("background-color", "#eaebef");

                $('#PNotaIncapaccidad').hide();
                $('#PNotaIncapaccidadDos').hide();
                $('#PNotaPermiso').hide();
                $('#PNotaIncapaccidad').hide();
                $('#DivHoraInicio').show();
                $('#DivHoraFin').show();
                $('#DivCargarArchivo').hide();
                //alert("dia electoral");
            });


            $("div[id=DivVacaciones]").click(function () {
                $('div[id=DivIncapacidad]').css("background-color", "#eaebef");
                $('div[id=DivPermisos]').css("background-color", "#eaebef");
                $('div[id=DivDiaElectoral]').css("background-color", "#eaebef");
                $('div[id=DivVacaciones]').css("background-color", "#21618C");

                $('#PNotaIncapaccidad').hide();
                $('#PNotaIncapaccidadDos').hide();
                $('#PNotaPermiso').hide();
                $('#PNotaIncapaccidad').hide();
                $('#DivHoraInicio').hide();
                $('#DivHoraFin').hide();
                $('#DivCargarArchivo').hide();

            });


        });
    </script>

    <div class="row">
        <div class="col-md-12">
            <h1>Ingreso de Novedades</h1>
        </div>
    </div>
    <hr />
    <section class="forms">
        <div class="container-fluid">

            <div class="row">
                <div class="col-md-4">

                    <br />
                    <br />
                    <!-- Tables -->
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="d-flex align-items-center mb-9 alert alert-success rounded p-2">
                                    <!--begin::Title-->
                                    <div class="d-flex flex-column flex-grow-1 mr-2">
                                        <a class="font-weight-bold text-dark-75 text-hover-primary font-size-lg mb-1">Incapacidad</a>
                                        <span class="text-muted font-weight-bold">17 Oct 2020 - 21 Oct 2020</span>
                                    </div>
                                    <!--end::Title-->
                                    <!--begin::Lable-->
                                    <span class="font-weight-bolder text-warning py-1 font-size-lg">AP</span>
                                    <!--end::Lable-->
                                </div>

                                <div class="d-flex align-items-center mb-9 alert alert-danger rounded p-2">
                                    <!--begin::Title-->
                                    <div class="d-flex flex-column flex-grow-1 mr-2">
                                        <a href="#" class="font-weight-bold text-dark-75 text-hover-primary font-size-lg mb-1">Vacaciones</a>
                                        <span class="text-muted font-weight-bold">11 Jul 2020 - 30 Jul 2020</span>
                                    </div>
                                    <!--end::Title-->
                                    <!--begin::Lable-->
                                    <span class="font-weight-bolder text-warning py-1 font-size-lg">RH</span>
                                    <!--end::Lable-->
                                </div>

                                <div class="d-flex align-items-center mb-9 alert alert-primary rounded p-2">
                                    <!--begin::Title-->
                                    <div class="d-flex flex-column flex-grow-1 mr-2">
                                        <a href="#" class="font-weight-bold text-dark-75 text-hover-primary font-size-lg mb-1">Group lunch celebration</a>
                                        <span class="text-muted font-weight-bold">17 Oct 2020 - 21 Oct 2020</span>
                                    </div>
                                    <!--end::Title-->
                                    <!--begin::Lable-->
                                    <span class="font-weight-bolder text-warning py-1 font-size-lg">PD</span>
                                    <!--end::Lable-->
                                </div>

                                <div class="d-flex align-items-center mb-9 alert alert-success rounded p-2">
                                    <!--begin::Title-->
                                    <div class="d-flex flex-column flex-grow-1 mr-2">
                                        <a href="#" class="font-weight-bold text-dark-75 text-hover-primary font-size-lg mb-1">Group lunch celebration</a>
                                        <span class="text-muted font-weight-bold">Due in 2 Days</span>
                                    </div>
                                    <!--end::Title-->
                                    <!--begin::Lable-->
                                    <span class="font-weight-bolder text-warning py-1 font-size-lg">+28%</span>
                                    <!--end::Lable-->
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-md-8">
                    <section class="services">

                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-3">
                                    <div id="DivIncapacidad" class="service-item first-item" style="padding: 15px">
                                        <div class="icon" style="height: 10px">
                                            <i class="icon-2x color-light fa fa-user-md fa-2x fa-lg"></i>
                                        </div>
                                        <a class="pull">
                                            <h5 style="color: #31323a">Incapacidades</h5>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div id="DivPermisos" class="service-item second-item" style="padding: 15px">
                                        <div class="icon" style="height: 10px">
                                            <i class="icon-2x color-light fa fa-check-circle-o fa-2x fa-lg"></i>
                                        </div>
                                        <a class="pull">
                                            <h5 style="color: #31323a">Permisos</h5>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div id="DivDiaElectoral" class="service-item third-item" style="padding: 15px">
                                        <div class="icon" style="height: 10px">
                                            <i class="icon-2x color-light fa fa-university fa-2x fa-lg"></i>
                                        </div>
                                        <a class="pull">
                                            <h5 style="color: #31323a">Dia Electoral</h5>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div id="DivVacaciones" class="service-item fourth-item" style="padding: 15px">
                                        <div class="icon" style="height: 10px">
                                            <i class="icon-2x color-light fa fa-plane fa-2x fa-lg"></i>
                                        </div>
                                        <a class="pull">
                                            <h5 class="pull" style="color: #31323a">Vacaciones</h5>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--container--->

                    </section>
                    <br />
                    <!-- Forms -->

                    <div class="col-md-12">
                        <div class="section-heading">
                            <p class="bg-warning" id="PNotaIncapaccidad"><strong>Nota:</strong> Para incapacidades superiores a <b>2 Dias</b> deben entregar el historial médico + la incapacidad original.</p>
                            <p class="bg-warning" id="PNotaIncapaccidadDos"><strong>Nota 2:</strong> Tenga en cuenta que si su incapacidad no corresponde al POS deberá transcribirla ante su EPS y a su vez adjuntar historia Clínica.</p>
                            <p class="bg-warning" id="PNotaPermiso"><strong>Nota:</strong> Recuerde que antes de registrar el permiso debe tener el visto bueno de <b>Americas B.P.S.</b> y de la <b>B.U.</b></p>
                            <p class="bg-warning" id="PDiaElectoral"><strong>Nota:</strong> Recuerde que tiene plazo de solicitar el medio día dentro dento de los primeros <b>30 Dias</b> calendario después de la votación.</p>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <fieldset>
                                    <input name="TxtNombre" runat="server" type="text" class="form-control" id="TxtNombre" placeholder="Tu Nombre..." required="">
                                </fieldset>
                            </div>
                            <div class="col-md-6">
                                <fieldset>
                                    <input name="TxtApellido" runat="server" type="text" class="form-control" id="TxtApellido" placeholder="Tu Apellido..." required="">
                                </fieldset>
                            </div>
                            <hr />
                            <div class="col-md-6">
                                <fieldset>
                                    <input name="TxtFechaInicio" runat="server" type="date" class="form-control" id="TxtFechaInicio" placeholder="Tu Nombre..." required="">
                                </fieldset>
                                <fieldset>
                                    <div id="DivHoraInicio">
                                        <input name="TxtHoraInicio" runat="server" type="time" class="form-control" id="TxtHoraInicio" placeholder="Tu Nombre..." required="">
                                    </div>
                                </fieldset>
                            </div>
                            <div class="col-md-6">
                                <fieldset>
                                    <input name="TxtFechaFin" runat="server" type="date" class="form-control" id="TxtFechaFin" placeholder="Tu Apellido..." required="">
                                </fieldset>
                                <fieldset>
                                    <div id="DivHoraFin">
                                        <input name="TxtHoraFin" runat="server" type="time" class="form-control" id="TxtHoraFin" placeholder="Tu Nombre..." required="">
                                    </div>
                                </fieldset>
                            </div>
                            <div class="col-md-12">
                                <fieldset>
                                    <input name="TxtNumeroDias" runat="server" type="text" class="form-control" id="TxtNumeroDias" placeholder="# Dias" required="">
                                </fieldset>
                            </div>
                            <div class="col-md-12" id="DivCargarArchivo">
                                <fieldset>
                                    <asp:FileUpload ID="FlpCargarArchivo" runat="server" CssClasss="form-control" />
                                </fieldset>
                            </div>

                            <div class="col-6">
                                <textarea name="demo-message" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                            </div>
                            <div class="col-md-12">
                                <button type="submit" id="form-submit" class="button">Enviar</button>
                            </div>
                        </div>

                    </div>



                </div>
            </div>
        </div>
    </section>

</asp:Content>
