<%@ Page Title="Ingreso de Novedades" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IngresoDeNovedades.aspx.cs" Inherits="AmbarV2.Novedades.IngresoDeNovedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Jquery/jquery.js"></script>
    <script>
        $(document).ready(function () {
            $('#PNotaIncapaccidad').hide();
            $('#PNotaIncapaccidadDos').hide();
            $('#PNotaPermiso').hide();
            $('#PDiaElectoral').hide();
            $('#TxtHorario').hide();

            $("div[id=DivIncapacidad]").click(function () {
                $('#MainContent_DivFormularioNovedad').css('display', 'block');
                $('#<%= LabTipoNovedad.ClientID %>').val('Incapacidad');
                $('#DivIncapacidad').css('background-color', '#21618C');
                $('#DivPermisos').css('background-color', '#eaebef');
                $('#DivDiaElectoral').css("background-color", '#eaebef');
                $('#DivVacaciones').css('background-color', '#eaebef');

                $('#PNotaIncapaccidad').show();
                $('#PNotaIncapaccidadDos').show();
                $('#PNotaPermiso').hide();
                $('#PDiaElectoral').hide();
                $('#DivHoraInicio').hide();
                $('#DivHoraFin').hide();
                $('#DivCargarArchivo').show();
                $('#DivJurado').hide();
                $('#DivNombreBackup').hide();
                //alert("incapacidad");
            });

            $("div[id=DivPermisos]").click(function () {
                $('#MainContent_DivFormularioNovedad').css('display', 'block');
                $('#<%= LabTipoNovedad.ClientID %>').val('Permiso');
                $('div[id=DivIncapacidad]').css('background-color', '#eaebef');
                $('div[id=DivPermisos]').css('background-color', '#21618C');
                $('div[id=DivDiaElectoral]').css('background-color', '#eaebef');
                $('div[id=DivVacaciones]').css('background-color', '#eaebef');

                $('#PNotaIncapaccidad').hide();
                $('#PNotaIncapaccidadDos').hide();
                $('#PNotaPermiso').show();
                $('#PDiaElectoral').hide();
                $('#DivHoraInicio').show();
                $('#DivHoraFin').show();
                $('#DivCargarArchivo').hide();
                $('#DivJurado').hide();
                $('#DivNombreBackup').hide();
                //alert("pemisos");
            });

            $("div[id=DivDiaElectoral]").click(function () {
                $('#MainContent_DivFormularioNovedad').css('display', 'block');
                $('#<%= LabTipoNovedad.ClientID %>').val('DiaElectoral');
                $('div[id=DivIncapacidad]').css("background-color", "#eaebef");
                $('div[id=DivPermisos]').css("background-color", "#eaebef");
                $('div[id=DivDiaElectoral]').css("background-color", "#21618C");
                $('div[id=DivVacaciones]').css("background-color", "#eaebef");

                $('#PNotaIncapaccidad').hide();
                $('#PNotaIncapaccidadDos').hide();
                $('#PNotaPermiso').hide();
                $('#PDiaElectoral').show();
                $('#DivHoraInicio').show();
                $('#DivHoraFin').show();
                $('#DivCargarArchivo').hide();
                $('#DivJurado').show();
                $('#DivNombreBackup').hide();
                //alert("dia electoral");
            });


            $("div[id=DivVacaciones]").click(function () {
                $('#MainContent_DivFormularioNovedad').css('display', 'block');
                $('#<%= LabTipoNovedad.ClientID %>').val('Vacaciones');
                $('div[id=DivIncapacidad]').css("background-color", "#eaebef");
                $('div[id=DivPermisos]').css("background-color", "#eaebef");
                $('div[id=DivDiaElectoral]').css("background-color", "#eaebef");
                $('div[id=DivVacaciones]').css("background-color", "#21618C");

                $('#PNotaIncapaccidad').hide();
                $('#PNotaIncapaccidadDos').hide();
                $('#PNotaPermiso').hide();
                $('#PDiaElectoral').hide();
                $('#DivHoraInicio').hide();
                $('#DivHoraFin').hide();
                $('#DivCargarArchivo').hide();
                $('#DivJurado').hide();
                $('#DivNombreBackup').show();
            });


        });

        function validate() {
            if (document.getElementById('<%=CheckJurado.ClientID%>').checked) {
                $("#<%=DropHorario.ClientID%>").attr('disabled', true);
            } else {
                $("#<%=DropHorario.ClientID%>").attr('disabled', false);
            }
        }

    </script>
    <div class="alert alert-danger alert-dismissible" role="alert" runat="server" id="DivAlert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        <div class="alert-icon">
            <i class="far fa-fw fa-bell"></i>
        </div>
        <div class="alert-message">
            <asp:Label Text="text" runat="server" ID="LabMensajeAlerta" />
        </div>
    </div>
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
                                <asp:Repeater ID="RepeaterNovedades" runat="server">
                                    <ItemTemplate>
                                        <div class='<%# Eval("Estado").ToString() == "PE" ? "d-flex align-items-center mb-9 alert alert-primary rounded p-2" : Eval("Estado").ToString() == "AP" ? "d-flex align-items-center mb-9 alert alert-success rounded p-2" : "d-flex align-items-center mb-9 alert alert-danger rounded p-2" %>' id="DivDetalleNovedad">
                                            <!--begin::Title-->
                                            <div class="d-flex flex-column flex-grow-1 mr-2">
                                                <a class="font-weight-bold text-dark-75 text-hover-primary font-size-lg mb-1"><%#Eval("Concepto") %></a>
                                                <span class="text-muted font-weight-bold"> <b>Inicio </b><%#Eval("FechaInicial", "{0:dd/M/yyyy}") %> - <b>Hasta</b> <%#Eval("FechaFinal", "{0:dd/M/yyyy}") %></span>
                                            </div>
                                            <!--end::Title-->
                                            <!--begin::Lable-->
                                            <span class="font-weight-bolder text-warning py-1 font-size-lg"><%#Eval("Estado") %></span>
                                            <!--end::Lable-->
                                        </div>
                                        <%--<div class="form-check form-switch ps-0">

                                            <label><%#Eval("Nombres") %></label>
                                            <asp:Label Text='<%#Eval("Id") %>' runat="server" ID="LabIdOperacion" />
                                            <asp:Label Text='<%#Eval("Nombres") %>' runat="server" ID="LabNombreOperacion" Visible="false" />
                                            <asp:CheckBox runat="server" ID="ChekOperaciones" Style="margin-left: 25px !important" />
                                        </div>--%>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-md-8">
                    <section class="services">
                        <div>
                            <asp:HiddenField ID="LabTipoNovedad" runat="server" />
                        </div>

                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="card">
                                        <div class="card-body" id="DivIncapacidad" style="padding: 15px">
                                            <div class="row">
                                                <div class="col-sm-3" style="height: 10px">
                                                    <i class="icon-2x color-light fa fa-user-md fa-2x fa-lg"></i>
                                                </div>
                                                <a class="col-sm-9">
                                                    <h5 style="color: #31323a">Incapacidades</h5>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card">
                                        <div class="card-body" id="DivPermisos" style="padding: 15px">
                                            <div class="row">
                                                <div class="col-sm-3" style="height: 10px">
                                                    <i class="icon-2x color-light align-middle mr-2" data-feather="file-text"></i>
                                                </div>
                                                <a class="col-sm-9">
                                                    <h5 style="color: #31323a">Permisos</h5>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card">
                                        <div class="card-body" id="DivDiaElectoral" style="padding: 15px">
                                            <div class="row">
                                                <div class="col-sm-3" style="height: 10px">
                                                    <i class="icon-2x color-light fa fa-university fa-2x fa-lg"></i>
                                                </div>
                                                <a class="col-sm-9">
                                                    <h5 style="color: #31323a">Dia Electoral</h5>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card">
                                        <div class="card-body" id="DivVacaciones" style="padding: 15px">
                                            <div class="row">
                                                <div class="col-sm-3" style="height: 10px">
                                                    <i class="icon-2x color-light fa fa-plane fa-2x fa-lg"></i>
                                                </div>
                                                <a class="col-sm-9">
                                                    <h5 style="color: #31323a">Vacaciones</h5>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!--container--->

                    </section>
                    <!-- Forms -->

                    <div class="col-md-12">
                        <div class="section-heading">
                            <p class="bg-warning" id="PNotaIncapaccidad"><strong>Nota:</strong> Para incapacidades superiores a <b>2 Dias</b> deben entregar el historial médico + la incapacidad original.</p>
                            <p class="bg-warning" id="PNotaIncapaccidadDos"><strong>Nota 2:</strong> Tenga en cuenta que si su incapacidad no corresponde al POS deberá transcribirla ante su EPS y a su vez adjuntar historia Clínica.</p>
                            <p class="bg-warning" id="PNotaPermiso"><strong>Nota:</strong> Recuerde que antes de registrar el permiso debe tener el visto bueno de <b>su lider</b> </p>
                            <p class="bg-warning" id="PDiaElectoral"><strong>Nota:</strong> Recuerde que tiene plazo de solicitar el medio día dentro dento de los primeros <b>30 Dias</b> calendario después de la votación.</p>
                        </div>

                        <div class="row" runat ="server" id="DivFormularioNovedad" > 
                            <div class="col-12 col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-12 ">
                                                <label class="form-label">Nombres y Apellidos</label>
                                                <input name="TxtNombre" runat="server" type="text" class="form-control" id="TxtNombre" placeholder="Nombres" runat="server">
                                                <asp:Label Id="LabValNombres" runat="server" />
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-md-6 mb-3">
                                                <label class="form-label" id="LabFechaInicio">Fecha Inicio</label>
                                                <input name="TxtFechaInicio" runat="server" type="date" class="form-control" id="TxtFechaInicio" placeholder="" runat="server">
                                                <asp:Label Id="LabValFechaInicio" runat="server" />
                                            </div>
                                            <div class="col-md-6">
                                                <div id="DivHoraInicio">
                                                    <label class="form-label" id="LabHoraInicio">Hora Inicio</label>
                                                    <input name="TxtHoraInicio" runat="server" type="time" class="form-control" id="TxtHoraInicio" placeholder="" runat="server">
                                                    <asp:Label Id="LabValHoraInicio" runat="server" />
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label class="form-label" id="LabFechaFin">Fecha Fin</label>
                                                <input name="TxtFechaFin" runat="server" type="date" class="form-control" id="TxtFechaFin" placeholder="" runat="server">
                                                <asp:Label Id="LabValFechaFin" runat="server" />
                                            </div>
                                            <div class="col-md-6 mb-3 mb-3">
                                                <div id="DivHoraFin">
                                                    <label class="form-label" id="LabHoraFin">Hora Fin</label>
                                                    <input name="TxtHoraFin" runat="server" type="time" class="form-control" id="TxtHoraFin" placeholder="" runat="server">
                                                    <asp:Label Id="LabValHoraFin" runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 mb-3 mb-3">
                                                <label class="form-label">Numero Dias</label>
                                                <input name="TxtNumeroDias" runat="server" type="number" value="0" class="form-control" id="TxtNumeroDias" placeholder="# Dias" runat="server">
                                                <asp:Label Id="LabValNumDias" runat="server" />
                                            </div>
                                        </div>
                                        <div class="row" id="DivJurado">
                                            <div class="col-md-6 mb-3 mb-3">
                                                <label class="form-label">Fue jurado de votacion?</label>
                                                <div class="checkbox">
                                                    <label>
                                                        <asp:CheckBox ID="CheckJurado" runat="server" onclick="validate()" />
                                                        SI
                                                    </label>

                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label>Horario</label>
                                                <asp:DropDownList ID="DropHorario" class="form-control" runat="server" AppendDataBoundItems="true">
                                                    <Items>
                                                        <asp:ListItem Text="(Seleccionar)" Value="" />
                                                        <asp:ListItem Text="MAÑANA" Value="MAÑANA" />
                                                        <asp:ListItem Text="TARDE" Value="TARDE" />
                                                    </Items>
                                                </asp:DropDownList>
                                                <asp:Label Id="LabValHorario" runat="server" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 mb-3" id="DivCargarArchivo">
                                                <label class="form-label">Comprobante</label>
                                                <asp:FileUpload ID="FlpCargarArchivo" runat="server" CssClasss="form-control" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 mb-3" id="DivNombreBackup">
                                                <label class="form-label">Nombre Backup</label>
                                                <input name="TxtNombreBackup" runat="server" type="text" class="form-control" id="TxtNombreBackup" placeholder="Nombre Backup" runat="server">
                                                <asp:Label Id="LabValNombreBackup" runat="server" />
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-6 mb-3">
                                                <label class="form-label">Onservaciones</label>
                                                <textarea id="TxtObservaciones" name="demo-message" class="form-control" placeholder="Enter your message" rows="6" runat="server"></textarea>
                                            </div>
                                        </div>
                                        <hr />
                                        <div class="row">
                                            <div class="col-md-12 mb-3">
                                                <div class="d-grid">
                                                    <asp:Button Text="Enviar" ID="BtnEnviar" class="btn btn-success" runat="server" OnClick="BtnEnviar_Click" />
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>



                </div>
            </div>
        </div>
    </section>

</asp:Content>
