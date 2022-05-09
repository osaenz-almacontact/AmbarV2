<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalidadAdministrativoYFinanciero.aspx.cs" Inherits="AmbarV2.InfoGestionDeCalidad.CalidadAdministrativoYFinanciero" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>ADMINISTRATIVO Y FINANCIERO</strong> </h3>
            </div>
        </div>
        <hr />

        <!-- Right Image -->
        <section class="right-image">
            <div class="container-fluid">

                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#TabCompras" role="tab" aria-controls="home" aria-selected="true">Compras</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#TabContabilidad" role="tab" aria-controls="profile" aria-selected="false">Contabilidad</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="messages-tab" data-toggle="tab" href="#TabInfraestructura" role="tab" aria-controls="messages" aria-selected="false">Infraestructura Y seguridad fisica</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="settings-tab" data-toggle="tab" href="#TabTesoreria" role="tab" aria-controls="settings" aria-selected="false">Tesoreria</a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="TabCompras" role="tabpanel" aria-labelledby="home-tab">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="left-content">
                                    <div style="margin-top: 4%">
                                        <h3>OBJETIVO</h3>
                                        <p>Garantizar la idoneidad y transparencia de las compras requeridas por la compañía, velar por que se cumplan las condiciones necesarias de productos o servicios de acuerdo con las solicitudes requeridas de las áreas funcionales, aplicando el procedimiento establecido y sus controles respectivos.</p>
                                    </div>
                                    <div style="margin-top: 8%">
                                        <h3>ALCANCE</h3>
                                        <p>
                                            Aplica a todas las compras de productos y/o adquisición de servicios necesarios para el buen funcionamiento de la empresa y cumplimiento de su objeto social en calidad de contratante con excepción de los que se deban generar por disposiciones legales, tales como los contratos laborales, servicios públicos domiciliarios, contratos bancarios  o a los que la empresa deba alinearse a la directriz de casa matriz, desde el momento en que se genera el requerimiento, consecución de opciones, , presentación a comité, negociación y generación de la orden de compra y finalmente seguimiento de entrega del producto o servicio por parte del proveedor al líder solicitante.  
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
                        <div class="row">
                            <!---DOCUMETNS----->
                            <div class="col-12 col-xl-12">
                                <ul class="nav nav-tabs" id="myTabForm" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tabForm" data-toggle="tab" href="#TabProcesos" role="tab" aria-controls="home" aria-selected="true">Procedimientos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tabForm" data-toggle="tab" href="#TabFormatos" role="tab" aria-controls="profile" aria-selected="false">Formatos</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="TabProcesos" role="tabpanel" aria-labelledby="home-tabForm">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title">PROCEDIMIENTOS COMPRAS</h5>
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
                                                        <td>Caracterización Compras</td>
                                                        <td class="text-center">2</td>
                                                        <td class="d-none d-md-table-cell">10/02/2022</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Compras/CARACTERIZACION%20COMPRAS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Compras</td>
                                                        <td class="text-center">2</td>
                                                        <td class="d-none d-md-table-cell">10/02/2022</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Compras/PROCEDIMIENTO%20DE%20COMPRAS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Evaluación de proveedores</td>
                                                        <td class="text-center">2</td>
                                                        <td class="d-none d-md-table-cell">10/02/2022</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Compras/PROCEDIMIENTO%20EVALUACIÓN%20DE%20PROVEEDORES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                    <div class="tab-pane" id="TabFormatos" role="tabpanel" aria-labelledby="profile-tabForm">

                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title">FORMATOS COMPRAS</h5>
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
                                                        <td>Evaluación de Proveedores</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">25/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Compras/EVALUACIÓN%20DE%20PROVEEDORES%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Formato Acta Comité de Compras</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">25/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Compras/FORMATO%20ACTA%20COMITE%20DE%20COMPRAS%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Formato Solicitud de Compra</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">25/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Compras/FORMATO%20SOLICITUD%20DE%20COMPRA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Registro de Proveedores</td>
                                                        <td class="text-center">2</td>
                                                        <td class="d-none d-md-table-cell">10/02/2022</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Compras/REGISTRO%20DE%20PROVEEDORES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Formato OC</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">25/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Compras/FORMATO%20OC.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
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
                    <div class="tab-pane" id="TabContabilidad" role="tabpanel" aria-labelledby="profile-tab">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="left-content">
                                    <div style="margin-top: 4%">
                                        <h3>OBJETIVO</h3>
                                        <p>Garantizar la adecuada programación, control, registro y presentación de las operaciones financieras.</p>
                                    </div>
                                    <div style="margin-top: 8%">
                                        <h3>ALCANCE</h3>
                                        <p>
                                            Desde el registro de documentos contables hasta presentación de los informes contables, financieros, tributarios y de gestión a los accionistas, entes de control y la sociedad en general.
  
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
                        <div class="row">
                            <!---DOCUMETNS----->
                            <div class="col-12 col-xl-12">
                                <ul class="nav nav-tabs" id="myTabFormCon" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tabFormCon" data-toggle="tab" href="#TabProcesosCon" role="tab" aria-controls="home" aria-selected="true">Procedimientos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tabFormCon" data-toggle="tab" href="#TabFormatosCon" role="tab" aria-controls="profile" aria-selected="false">Formatos</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="TabProcesosCon" role="tabpanel" aria-labelledby="home-tabFormCon">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title">PROCEDIMIENTOS CONTABLIDAD</h5>
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
                                                        <td>Procedimiento Facturación al cliente</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Contabilidad/PROCEDIMIENTO%20FACTURACION%20A%20CLIENTES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Causación Pagos y Conciliación</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Contabilidad/PROCEDIMIENTO%20CAUSACION%20PAGOS%20Y%20CONCILIACION.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Diferencia en Cambio</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Contabilidad/PROCEDIMIENTO%20DIFERENCIA%20EN%20CAMBIO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Facturación a Proveedores</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Contabilidad/PROCEDIMIENTO%20FACTURACION%20A%20PROVEEDORES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Legalizaciones</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Contabilidad/PROCEDIMIENTO%20LEGALIZACIONES%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Provisiones y Reversiones</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Contabilidad/PROCEDIMIENTO%20PROVISIONES%20Y%20REVERSIONES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Ciclo Contable</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Contabilidad/PROCEDIMIENTO%20CICLO%20CONTABLE%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Caracterización Ciclo Contable</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Contabilidad/CARACTERIZACION%20CICLO%20CONTABLE.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                    <div class="tab-pane" id="TabFormatosCon" role="tabpanel" aria-labelledby="profile-tabFormCon">

                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title">FORMATOS CONTABLIDAD</h5>
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
                                                        <td>Conciliación Bancaria</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Contabilidad/CONCILIACION%20BANCARIA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Control Causaciones</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">26/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Contabilidad/CONTROL%20CAUSACIONES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
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
                    <div class="tab-pane" id="TabInfraestructura" role="tabpanel" aria-labelledby="messages-tab">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="left-content">
                                    <div style="margin-top: 4%">
                                        <h3>OBJETIVO</h3>
                                        <ul>
                                            <li>Definir los lineamientos administrativos y operativos mediante los cuales se realizará el mantenimiento preventivo y correctivo de las instalaciones.</li>
                                            <li>Mantener en condiciones óptimas y operativas las instalaciones, para garantizar un ambiente óptimo para prestar el servicio requerido.</li>
                                        </ul>
                                    </div>
                                    <div style="margin-top: 8%">
                                        <h3>ALCANCE</h3>
                                        <p>
                                            Este procedimiento da alcance a todos los coordinadores de infraestructura de las dos sedes, proveedores y contratistas.
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
                        <div class="row">
                            <!---DOCUMETNS----->
                            <div class="col-12 col-xl-12">
                                <ul class="nav nav-tabs" id="myTabFormInfr" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tabFormInfr" data-toggle="tab" href="#TabProcesosInfr" role="tab" aria-controls="home" aria-selected="true">Procedimientos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tabFormInfr" data-toggle="tab" href="#TabFormatosInfr" role="tab" aria-controls="profile" aria-selected="false">Formatos</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="TabProcesosInfr" role="tabpanel" aria-labelledby="home-tabFormCon">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title">PROCEDIMIENTOS INFRAESTRUCTURA</h5>
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
                                                        <td>Aspectos Generales de Seguridad Física</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Infraestructura/ASPECTOS%20GENERALES%20DE%20SEGURIDAD%20FÍSICA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Caracterización Infraestructura y Seguridad Física</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Infraestructura/CARACTERIZACION%20INFRAESTRUCTURA%20Y%20SEGURIDAD%20FISICA%20(1).pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Manual de Políticas de Acceso</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Infraestructura/MANUAL%20DE%20POLITICAS%20DE%20ACCESO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Mantenimiento Infraestructura Física</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Infraestructura/PROCEDIMIENTO%20MANTENIMIENTO%20INFRAESTRUCTURA%20FÍSICA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Seguridad Física</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Infraestructura/PROCEDIMIENTOS%20DE%20SEGURIDAD%20FÍSICA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                    <div class="tab-pane" id="TabFormatosInfr" role="tabpanel" aria-labelledby="profile-tabFormCon">

                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title">FORMATOS INFRAESTRUCTURA</h5>
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
                                                        <td>Entrega de Tarjetas de Proximidad</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Infraestructura/ENTREGA%20DE%20TARJETAS%20DE%20PROXIMIDAD%20DE%20USO%20INTERNO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lista de Chequeo de Limpieza y desinfección de Baños</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Infraestructura/LISTA%20DE%20CHEQUEO%20DE%20LIMPIEZA%20Y%20DESINFECCIÓN%20DE%20BAÑOS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Lista de Chequeo de Limpieza y desinfección de Cafetería</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Infraestructura/LISTA%20DE%20CHEQUEO%20DE%20LIMPIEZA%20Y%20DESINFECCIÓN%20DE%20CAFETERIAS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Registro de Ingreso al data center</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Infraestructura/REGISTRO%20DE%20INGRESOS%20AL%20DATA%20CENTER.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Registro de Visitantes</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">17/11/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Infraestructura/REGISTRO%20DE%20VISITANTES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Revisión de Infraestructura</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">9/09/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Infraestructura/REVISION%20DE%20INFRAESTRUCTURA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Seguimiento de Novedades de Infraestructura y Seguridad Física</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">8/02/2022</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Infraestructura/SEGUIMIENTO%20DE%20NOVEDADES%20DE%20INFRAESTRUCTURA%20Y%20SEGURIDAD%20FÍSICA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Solicitud de Ingreso</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">9/09/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Infraestructura/SOLICITUD%20DE%20INGRESO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
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
                    <div class="tab-pane" id="TabTesoreria" role="tabpanel" aria-labelledby="settings-tab">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="left-content">
                                    <div style="margin-top: 4%">
                                        <h3>OBJETIVO</h3>
                                        <p>Verificar y realizar los pagos por la adquisición de bienes y servicios autorizados por la Dirección.</p>
                                    </div>
                                    <div style="margin-top: 8%">
                                        <h3>ALCANCE</h3>
                                        <p>
                                            La determinación de disponibilidad de recursos hasta la ejecución de pagos y desembolsos autorizados por la Dirección.
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
                        <div class="row">
                            <!---DOCUMETNS----->
                            <div class="col-12 col-xl-12">
                                <ul class="nav nav-tabs" id="myTabFormTeso" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="home-tabFormTeso" data-toggle="tab" href="#TabProcesosTeso" role="tab" aria-controls="home" aria-selected="true">Procedimientos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="profile-tabFormTeso" data-toggle="tab" href="#TabFormatosTeso" role="tab" aria-controls="profile" aria-selected="false">Formatos</a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="TabProcesosTeso" role="tabpanel" aria-labelledby="home-tabFormTeso">
                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title">PROCEDIMIENTOS TESORERÍA</h5>
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
                                                        <td>Caracterización Tesorería</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Tesoreria/CARCATERIZACION%20TESORERIA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Anticipos</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Tesoreria/PROCEDIMIENTO%20ANTICIPOS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Caja Menor</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Tesoreria/PROCEDIMIENTO%20CAJA%20MENOR.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Cartera</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Tesoreria/PROCEDIMIENTO%20CARTERA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Pagos</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Tesoreria/PROCEDIMIENTO%20DE%20PAGOS.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Procedimiento Tesorería</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Procedimientos/Tesoreria/PROCEDIMIENTO%20TESORERIA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                    </div>
                                    <div class="tab-pane" id="TabFormatosTeso" role="tabpanel" aria-labelledby="profile-tabFormTeso">

                                        <div class="card">
                                            <div class="card-header">
                                                <h5 class="card-title">FORMATOS TESORERÍA</h5>
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
                                                        <td>Arqueo de Caja Menor</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Tesoreria/Arqueo%20de%20Caja.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Formato Reembolso de Gastos</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Tesoreria/Formato%20Reembolso%20de%20Gastos%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Formato Solicitud Reembolso de Caja Menor</td>
                                                        <td class="text-center">1</td>
                                                        <td class="d-none d-md-table-cell">22/10/2021</td>
                                                        <td class="table-action">
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="edit-2"></i></a>
                                                            <a href="#" style="display: none"><i class="align-middle" data-feather="trash"></i></a>
                                                            <a href="../Content/Documentacion/SGC/Administrativo/Formatos/Tesoreria/Formato%20Solicitud%20-%20Reembolso%20de%20Caja%20Menor.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
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
                </div>

                <br />
            </div>
        </section>

    </div>
</asp:Content>
