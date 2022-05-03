<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalidadGestionHumana.aspx.cs" Inherits="AmbarV2.InfoGestionDeCalidad.CalidadGestionHumana" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>GESTIÓN HUMANA</strong> </h3>
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
                                <p>Elaborar y desarrollar diferentes proyectos y procesos con el fin de atraer, desarrollar, motivar y retener al mejor talento humano de Almacontact,  el cual parte de la necesidad de potenciar y desarrollar las habilidades de todos los colaboradores de las diferentes áreas.</p>
                            </div>
                            <div style="margin-top: 8%">
                                <h3>ALCANCE</h3>
                                <p>
                                   Desde el proceso de búsqueda y selección de personal a nivel nacional hasta la administración de Gestión talento humano existente en Almacontact lo cual incluye: Selección, contratación, nomina, relaciones laborales, SST, Bienestar y Desarrollo humano.
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
                            <h5 class="card-title">GESTIÓN HUMANA</h5>
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
                                    <td>Procedimiento Contratación</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">15/10/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/PROCEDIMIENTO%20CONTRATACIÓN.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Ev de desempeño 2021 - Metodología</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">16/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/EV%20DESEMPEÑO%202021%20-%20METODOLOGIA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Plan carrera</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">7/03/2022</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Procedimiento%20Plan%20Carrera.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Nomina</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">12/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/PROCEDIMIENTO%20NOMINA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Caracterización Gestión Humana</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">12/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/CARACTERIZACIÓN%20GESTIÓN%20HUMANA.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Relaciones laborales</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">12/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/PROCEDIMIENTO%20RELACIONES%20LABORALES.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Selección</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">24/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/PROCEDIMIENTO%20DE%20SELECCIÓN.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Manual del Comité de Convivencia Laboral</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Manual%20Del%20Comité%20De%20Convivencia%20Laboral.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Manual Del Sistema De Gestión De Seguridad Y Salud En El Trabajo</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Manual%20Del%20Sistema%20De%20Gestión%20De%20Seguridad%20Y%20Salud%20En%20El%20Trabajo.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Plan De Emergencia Almacontact</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Plan%20De%20Emergencia%20Almacontact.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Política De Prevención Al Consumo De Alcohol, Tabaco Y Drogas</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Política%20De%20Prevención%20Al%20Consumo%20De%20Alcohol,%20Tabaco%20Y%20Drogas%20-%20Política%20De%20Seguridad%20Y%20Salud%20En%20El%20Trabajo%20-%20Politica%20de%20Higiene%20y%20Seguridad%20en.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Política De Seguridad Y Salud En El Trabajo</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Política%20De%20Prevención%20Al%20Consumo%20De%20Alcohol,%20Tabaco%20Y%20Drogas%20-%20Política%20De%20Seguridad%20Y%20Salud%20En%20El%20Trabajo%20-%20Politica%20de%20Higiene%20y%20Seguridad%20en.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Gestión Del Cambio</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Procedimiento%20Gestión%20Del%20Cambio.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Para La Identificación De Peligros, Evaluación Y Valoración De Riesgos Y Establecimiento De Controles</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Procedimiento%20Para%20La%20Identificación%20De%20Peligros,%20Evaluación%20Y%20Valoración%20De%20Riesgos%20Y%20Establecimiento%20De%20Controles.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Reglamento De Higiene Y Seguridad En El Trabajo</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Política%20De%20Prevención%20Al%20Consumo%20De%20Alcohol,%20Tabaco%20Y%20Drogas%20-%20Política%20De%20Seguridad%20Y%20Salud%20En%20El%20Trabajo%20-%20Politica%20de%20Higiene%20y%20Seguridad%20en.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Organigrama Almacontact</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/09/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/GestionHumana/Procedimientos/Organigrama%20V2%20-%208%20Febrero%202022_.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="tab-pane" id="TabFormatos" role="tabpanel" aria-labelledby="profile-tab">

                    <%--<div class="card">
                        <div class="card-header">
                            <h5 class="card-title">FORMATOS Y REGISTROS WORKFORCE</h5>
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
                                    <td>Formato Entrega de Proyecto</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">12/10/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Comercial/Formatos/Formato%20Entrega%20de%20Proyecto.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Resumen Proyecto</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">12/10/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Comercial/Formatos/RESUMEN%20PROYECTO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                                              
                            </tbody>
                        </table>
                    </div>--%>

                </div>
            </div>

        </div>

    </div>
</asp:Content>
