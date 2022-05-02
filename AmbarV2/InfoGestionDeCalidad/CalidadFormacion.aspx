<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalidadFormacion.aspx.cs" Inherits="AmbarV2.InfoGestionDeCalidad.CalidadFormacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>Formación</strong> </h3>
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
                                <p>
                                    Diseñar y administrar los procesos de formación para desarrollar y fortalecer los conocimientos y habilidades del personal que ingresa como el que se mantiene en la organización para soportar la operación acorde a las necesidades de nuestros clientes, obteniendo un alto desempeño y potencializando su desarrollo integral. 
                                </p>
                            </div>
                            <div style="margin-top: 8%">
                                <h3>ALCANCE</h3>
                                <p>
                                   Abarca desde la detección de las necesidades de formación para el personal operativo y capcaitación hasta la evaluación de las competencias adquiridas.
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
                            <h5 class="card-title">PROCEDIMIENTOS FORMACION</h5>
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
                                    <td>Acta de Contenidos CLARO</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Formatos/Acta%20de%20Contenidos%20CLARO.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Acta de Contenidos y Cronograma LATAM</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Formatos/Acta%20de%20Contenidos%20y%20Cronograma%20LATAM.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Acta Entrega de Usuarios</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Formatos/Acta%20Entrega%20de%20Usuarios.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato compromiso de Mejora</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Formatos/Formato%20compromiso%20de%20Mejora.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Entrega Kit</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Formatos/Formato%20Entrega%20Kit.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Estoy Enterado</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Formatos/Formato%20Estoy%20Enterado.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Formato Feedback Nesting</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Formatos/Formato%20Feedback%20Nesting.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="tab-pane" id="TabFormatos" role="tabpanel" aria-labelledby="profile-tab">

                    <div class="card">
                        <div class="card-header">
                            <h5 class="card-title">FORMATOS FORMACION</h5>
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
                                    <td>Formato Caracterización Formación</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Procedimientos/Formato%20Caracterización%20Formación.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Formación</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">9/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Formacion/Procedimientos/Procedimiento%20Formación.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
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
