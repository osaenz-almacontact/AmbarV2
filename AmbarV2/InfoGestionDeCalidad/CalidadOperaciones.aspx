<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalidadOperaciones.aspx.cs" Inherits="AmbarV2.InfoGestionDeCalidad.CalidadOperaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>Operaciones</strong> </h3>
            </div>
        </div>
        <hr />

        <!-- Right Image -->
        <section class="right-image">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="left-content">
                            <div>
                                <h3>OBJETIVO</h3>
                                <p>
                                    Garantizar el correcto funcionamiento de las operaciones implementadas, realizando seguimiento al cumplimiento de los indicadores financieros de la compañía. Tomando acciones correctivas para asegurar el cumplimiento de los requisitos contractuales pactados con el cliente.
                                </p>
                            </div>
                            <div style="margin-top: 8%">
                                <h3>ALCANCE</h3>
                                <p>
                                    Aplica para todas las operaciones implementadas y entregadas al área de operaciones y debe contemplar el cubrimiento de todos los requerimientos contractuales establecidos.
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
            <ul class="nav nav-tabs" id="myTab1" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#TabOpProcesos" role="tab" aria-controls="home" aria-selected="true">Procedimientos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab1" data-toggle="tab" href="#TabOpFormatos" role="tab" aria-controls="profile" aria-selected="false">Formatos</a>
                </li>
            </ul>

            <div class="tab-content">
                <div class="tab-pane active" id="TabOpProcesos" role="tabpanel" aria-labelledby="home-tab">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">PROCEDIMIENTOS OPERACION</h5>
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
                                    <td>Procedimiento Modelo Operativo de Gestión</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">6/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Operacion/Procedimiantos/FORMATO%20GESTIÓN%20DE%20OPERACIÓN.docx" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Caracterización Operaciones</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">6/12/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Operacion/Procedimiantos/CARACTERIZACIÓN%20DE%20OPERACIONES%20(1).xlsx" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="tab-pane" id="TabOpFormatos" role="tabpanel" aria-labelledby="profile-tab1">

                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">FORMATOS OPERACION</h5>
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
                                    <td>Formato Gestión de Operación</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">24/08/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Operacion/Formatos/FORMATO%20GESTIÓN%20DE%20OPERACIÓN.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                                              
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>

        <!---DOCUMETNS----->
        <div class="col-12 col-xl-12">
            <div class="card">
                <div class="card-header">
                    <h3><strong>Claro</strong> </h3>
                </div>

                <div class="card-body">
                    <ul class="nav nav-tabs" id="myTab2" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab2" data-toggle="tab" href="#TabFormatos" role="tab" aria-controls="profile" aria-selected="false">Formatos</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane active" id="TabProcesos" role="tabpanel" aria-labelledby="home-tab">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="card-title">Claro</h5>
                                </div>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th style="width: 40%;">Nombre del documento</th>
                                            <th style="width: 40%;">Campaña</th>
                                            <th style="width: 25%" class="text-center">Versión</th>
                                            <th class="d-none d-md-table-cell" style="width: 25%">Fecha de Aprobación</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Procedimiento Atención  Hogar BackOffice Claro Premium</td>
                                            <td>Claro Premiun</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/02/2022</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroPremiun/Procedimiento%20Atención%20%20Hogar%20Backoffice%20Claro%20Premium.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Atención Hogar WhatsApp Claro Premium</td>
                                            <td>Claro Premiun</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/02/2022</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroPremiun/Procedimiento%20Atención%20Hogar%20Whatsapp%20Claro%20Premium.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Atención Hogar Inbound Claro premium</td>
                                            <td>Claro Premiun</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/02/2022</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroPremiun/Procedimiento%20Atención%20Hogar%20Inbound%20Claro%20premium.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Atención Hogar Outbound Claro premium</td>
                                            <td>Claro Premiun</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/02/2022</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroPremiun/Procedimiento%20Atención%20Hogar%20Outbound%20Claro%20Premium.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Atención Ventas Claro premium</td>
                                            <td>Claro Premiun</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/02/2022</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroPremiun/Procedimiento%20Atención%20Ventas%20Claro%20Premium.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Atención Hogar Inbound Claro Swat</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimeinto%20Operación%20Claro-%20Ventas.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Célula Apoyo en Piso Claro Swat</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimiento%20Celula%20Apoyo%20en%20Piso%20Claro%20Swat.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Célula Detractores Claro Swat</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimiento%20Celula%20Detractores%20Claro%20Swat.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Célula Operaciones CGO Claro Swat</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimeinto%20Celula%20Operaciones%20CGO%20Claro%20Swat.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Célula Soporte Mal Escalados Claro Swat</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimiento%20Celula%20Soporte%20Mal%20Escalados%20Claro%20Swat.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Operación Claro Swat - PQR</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimiento%20Operación%20Claro%20-%20PQR.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Operación Claro Swat- Ajustes</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimiento%20Operación%20Craro%20Swat-%20Ajustes.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Operación Claro Swat- Ventas</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimeinto%20Operación%20Claro-%20Ventas.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Operación Reincidente y Recurrentes Claro Swat</td>
                                            <td>Claro Swat</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroSwat/Procedimiento%20Operación%20Reincidente%20y%20Recurrentes%20Claro%20Swat.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Claro TMK - Hogar</td>
                                            <td>Claro TMK</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroTMK/PROCEDIMIENTO%20CLARO%20TMK%20-%20HOGAR.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Claro TMK - Móvil Migración</td>
                                            <td>Claro TMK</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroTMK/PROCEDIMIENTO%20CLARO%20TMK%20-%20MOVIL%20MIGRACIÓN%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Claro TMK - Móvil Portabilidad</td>
                                            <td>Claro TMK</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroTMK/PROCEDIMIENTO%20CLARO%20TMK%20-%20MOVIL%20PORTABILIDAD.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Procedimiento Claro TMK - TYT OUT</td>
                                            <td>Claro TMK</td>
                                            <td class="text-center">1</td>
                                            <td class="d-none d-md-table-cell">7/12/2021</td>
                                            <td class="table-action">
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                <a href="../Content/Documentacion/SGC/Operaciones/ClaroTMK/PROCEDIMIENTO%20CLARO%20TMK%20TYT%20OUT.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-12 col-xl-12">
            <div class="card">
                <div class="card-header">
                    <h3><strong>LATAM</strong> </h3>
                </div>
                <div class="card-body">
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
                                <td>Procedimiento Latam Cargo Customer Care</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">15/10/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/LATAM/Procedimiento%20Latam%20Cargo%20Customer%20Care.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Latam Cargo	</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">15/10/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/LATAM/Procedimiento%20Latam%20Cargo.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Latam No Voz</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/LATAM/Procedimiento%20No%20Voz.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Operación Ventas_Latam</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/LATAM/Procedimiento%20Operación%20Ventas_Latam.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Servicing B2B_ Latam</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/LATAM/Procedimiento%20Servicing%20B2B.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-12 col-xl-12">
            <div class="card">
                <div class="card-header">
                    <h3><strong>Samsung</strong> </h3>
                </div>
                <div class="card-body">
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
                                <td>Procedimiento Operación Samsung - Administrador Salesforce (2)</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20ADMINISTRADOR%20SALESFORCE.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Operación Samsung - B2B</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20B2B.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Operación Samsung - Cambios</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20CAMBIOS.pd" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Operación Samsung - Cancelaciones</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20CANCELACIONES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Operación Samsung - Dealers</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20DEALERS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Operación Samsung - Garantías</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20GARANTÌAS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Operación Samsung- Risk</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20RISK.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Operación Samsung- Support Special Tracking & Asignaciones</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20SUPPORT%20SPECIAL%20TRACKING%20&%20ASIGNACIONES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                             <tr>
                                <td>Procedimiento Operación Samsung - Vendor</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20VENDOR.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento OperaciònSamsung - Voc Sic</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20VOC%20SIC.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-12 col-xl-12">
            <div class="card">
                <div class="card-header">
                    <h3><strong>Shopee</strong> </h3>
                </div>
                <div class="card-body">
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
                                <td>Procedimiento Customer Service Chat</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">7/02/2022</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Shopee/PROCEDIMIENTO%20OPERACIÓN%20SHOPEE%20CHAT.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Customer Service Email</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">7/02/2022</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Shopee/PROCEDIMIENTO%20OPERACIÓN%20EMAIL%20CS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Customer Service Redes Sociales</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">7/02/2022</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Samsung/Procedimiento%20Operaciòn%20SAMSUNG%20-%20CAMBIOS.pd" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Disputas</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">7/02/2022</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Shopee/PROCEDIMIENTO%20OPERACIÓN%20SHOPEE%20DISPUTAS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Sip</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">7/02/2022</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Shopee/PROCEDIMIENTO%20OPERACION%20SIP%20CS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>Procedimiento Catálogos</td>
                                <td class="text-center">1</td>
                                <td class="d-none d-md-table-cell">26/11/2021</td>
                                <td class="table-action">
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                    <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                    <a href="../Content/Documentacion/SGC/Operaciones/Shopee/PROCEDIMIENTO%20OPERACIÓN%20CATÁLOGO%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
