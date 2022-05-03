<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalidadInfo.aspx.cs" Inherits="AmbarV2.InfoGestionDeCalidad.CalidadInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>Calidad</strong> </h3>
            </div>
        </div>
        <hr />

        <!-- Right Image -->
        <section class="right-image">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="left-content">
                            <div style="margin-top: 4%">
                                <h3>OBJETIVO</h3>
                                <ul>
                                    <li>Maximizar la satisfacción de los usuarios finales y la calidad del servicio.</li>
                                    <li>Crear procesos de gestión de calidad y desempeño consistentes en los servicios.</li>
                                    <li>Asegurar la mejora continua en los indicadores mediante la provisión de una medición Independiente de la calidad en el servicio.</li>
                                </ul>
                            </div>
                            <div style="margin-top: 8%">
                                <h3>ALCANCE</h3>
                                <p>
                                   Desde la recepción de la data de formación, hasta la validación del conocimiento, seguimiento, auditorias y toma de conciencia para el óptimo cumplimiento y mejora continua de los indicadores de gestión.
                                </p>
                            </div>
                           
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img class="card-img-top" src="../Content/img/media/AlmaMision.jpg" alt="Unsplash">
                        </div>
                    </div>
                    <hr />
                    <hr />
                </div>

                <br />
                <br />
            </div>
        </section>
        <!---DOCUMETNS----->
        <div class="col-12 col-xl-12">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#TabProcesos" role="tab" aria-controls="home" aria-selected="true">Procedimientos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#TabFormatos" role="tab" aria-controls="profile" aria-selected="false">Formatos</a>
                </li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane active" id="TabProcesos" role="tabpanel" aria-labelledby="home-tab">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">PROCEDIMIENTOS Calidad</h5>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 40%;">Nombre del documento</th>
                                    <th style="width: 25%" class="text-center">Versión</th>
                                    <th class="d-none d-md-table-cell" style="width: 25%">Fecha de Aprobación</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Caracterización Calidad</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Procedimientos/CARACTERIZACION%20CALIDAD.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Calidad</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Procedimientos/PROCEDIMIENTO%20CALIDAD.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="tab-pane" id="TabFormatos" role="tabpanel" aria-labelledby="profile-tab">

                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">FORMATOS Y REGISTROS Calidad</h5>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 40%;">Nombre del documento</th>
                                    <th style="width: 25%;" class="text-center">Versión</th>
                                    <th class="d-none d-md-table-cell" style="width: 25%">Fecha de Aprobación</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Formato Asistencia a Dialogo</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20ASISTENCIA%20A%20DIALOGO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Asistencia Calibración Interna</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20ASISTENCIA%20CALIBRACIÓN%20INTERNA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Alerta Ejecución</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20DE%20ALERTA%20EJECUCIÓN.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Alerta Intransable</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20DE%20ALERTA%20INTRASABLE.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato de Alerta</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20DE%20ALERTA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato estoy Enterado</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20ESTOY%20ENTERADO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Retroalimentación Calidad</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20RETROALIMENTACION%20CALIDAD.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Role Play</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20ROLE%20PLAY.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Viernes de reto</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/FORMATO%20VIERNES%20DE%20RETO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                                              
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
