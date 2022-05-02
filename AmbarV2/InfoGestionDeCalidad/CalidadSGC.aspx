<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalidadSGC.aspx.cs" Inherits="AmbarV2.InfoGestionDeCalidad.CalidadSGC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>SGC</strong> </h3>
            </div>
        </div>
        <hr />

        <!-- Right Image -->
        <section class="right-image">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="left-content">
                            <div style="margin-top: 4%">
                                <h3 style="color: #00467E;"><b>OBJETIVO</b></h3>
                                <p>Incrementar la satisfacción del cliente, mediante procesos de mejora continua. Está pensada para que la organización pueda garantizar su capacidad de ofrecer productos y servicios que cumplan con las exigencias de sus clientes.</p>
                                <h4 style="color: #00467E;"><b>Beneficios</b></h4>
                                <ul>
                                    <li>Generar mayor eficiencia.</li>
                                    <li>Estimula la moral de los empleados.</li>
                                    <li>Ofrece reconocimiento internacional.</li>
                                    <li>Mejora la gestión de procesos.</li>
                                    <li>Ofrece niveles más altos de satisfacción del cliente.</li>
                                </ul>
                            </div>
                            <div style="margin-top: 8%">
                                <h3 style="color: #00467E;"><b>ALCANCE</b></h3>
                                <p>
                                    Desde el diseño del Sistema de gestión hasta su implementación, seguimiento y mejora.
                                </p>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <img class="card-img-top" src="../Content/Images/GestionDeCalidad/ImgSGC/SGC.jpg" alt="Unsplash">
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
                            <h5 class="card-title">PROCEDIMIENTOS SGC</h5>
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
                                    <td>Caracterización SGC</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Procedimientos/Caracterización%20SGC.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Auditorías Internas</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Procedimientos/Procedimiento%20Auditorias%20Internas.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Control de Documentos Almacontact</td>
                                    <td class="text-center">2</td>
                                    <td class="d-none d-md-table-cell">24/01/2022</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Procedimientos/Procedimiento%20Control%20de%20Documentos%20Almacontact%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento NC y Ciclo de Mejoramiento</td>
                                    <td class="text-center">2</td>
                                    <td class="d-none d-md-table-cell">24/01/2022</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Procedimientos/Procedimiento%20NC%20y%20Ciclo%20de%20Mejoramiento%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Salida No conforme</td>
                                    <td class="text-center">2</td>
                                    <td class="d-none d-md-table-cell">24/01/2022</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Procedimientos/Procedimiento%20Salida%20No%20conforme.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="tab-pane" id="TabFormatos" role="tabpanel" aria-labelledby="profile-tab">

                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">FORMATOS Y REGISTROS SGC</h5>
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
                                    <td>Acta de Reunión Efectiva</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Acta%20de%20Reunion%20Efectiva.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ficha técnica de indicadores Almacontact</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/Ficha%20tecnica%20de%20indicadores%20Almacontact.xlsx" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Caracterización Almacontact</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Formato%20Caracterizacion%20Almacontact%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Evaluación Auditor</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Formato%20Evaluación%20Auditor.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Informe de auditoria</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Formato%20Informe%20de%20auditoria.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Lista de Verificación</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Calidad/Formatos/Formato%20Lista%20de%20Verificación.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato NC y Ciclo de Mejoramiento</td>
                                    <td class="text-center">2</td>
                                    <td class="d-none d-md-table-cell">24/01/2022</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Formato%20de%20NC%20y%20Ciclo%20de%20Mejoramiento.xlsm" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Plan de auditoria</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Formato%20Plan%20de%20auditoria.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Planificación del cambio</td>
                                    <td class="text-center">2</td>
                                    <td class="d-none d-md-table-cell">9/02/2022</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Formato%20Planificación%20del%20cambio.xlsx" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Salida No Conforme</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Formato%20Salida%20No%20Conforme.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Listado Documentos Externos</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Listado%20Documentos%20Externos%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Listado Maestro de Documentos</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Listado%20Maestro%20de%20Documentos.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Listado Maestro de Registros</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Listado%20Maestro%20de%20Registros%20.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Matriz de Comunicaciones Almacontact</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Matriz%20de%20Comunicaciones%20Almacontact.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Matriz de riesgos y oportunidades</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">2/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/CalidadSGC/Formatos/Matriz%20de%20riesgos%20y%20oportunidades.xlsx" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>

        </div>

        <br />
        <br />
    </div>
</asp:Content>
