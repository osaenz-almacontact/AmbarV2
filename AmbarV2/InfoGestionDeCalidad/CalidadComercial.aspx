<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalidadComercial.aspx.cs" Inherits="AmbarV2.InfoGestionDeCalidad.CalidadComercial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>Comercial</strong> </h3>
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
                                <h3 style="color: #12679B">OBJETIVO</h3>
                                <p>
                                    Ejecutar las estrategias planteadas en el Plan Comercial, logrando una relación comercial con las empresas interesadas en proyectos de Contact Center, o BPO, identificando sus necesidades, asesorándolos y ofreciéndoles soluciones a la medida, con el fin de lograr contratos nuevos.  .
                                </p>
                            </div>
                            <div style="margin-top: 8%">
                                <h3 style="color: #12679B">ALCANCE</h3>
                                <p>
                                    El proceso inicia con la elaboración de estrategias y el diseño de tácticas para acercarnos a clientes potenciales y captar sus necesidades; estas necesidades son expresadas por medio de una comunicación directa, a través de un referido, un proceso licitatorio o la necesidad comercial de un cliente interno. 

En caso de un acuerdo comercial con el cliente, el proceso finaliza con la firma de la orden de servicio (para campañas puntuales de menos de 6 meses, o de un contrato (para Operaciones permanentes). De no ser adjudicado el proyecto se busca la retroalimentación del cliente
                                </p>
                            </div>

                           
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img class="card-img-top" src="../Content/Images/GestionDeCalidad/ImgComercial/CalidadComercial.jpg" alt="Unsplash">
                        </div>
                    </div>
                    <hr />
                    <hr />
                </div>

                <br />
                <br />
            </div>
        </section>

        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>PQRS Almacontact</strong> </h3>
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
                                    Brindar el mecanismo establecido por la compañía, en lo relacionado al tratamiento de las Peticiones, Quejas, Reclamos, Sugerencias y Reconocimientos presentadas por los clientes externos de ALMACONTACT SAS. Con el fin de tomar, de manera oportuna, acciones correctivas o de mejoramiento, y fortalecer así los diferentes procesos Internos. 
                                </p>
                            </div>
                            <div style="margin-top: 8%">
                                <h3>ALCANCE</h3>
                                <p>
                                   Aplica para todas las Peticiones, Quejas, Reclamos, Sugerencias y Reconocimientos PQRS, relacionadas con los diferentes servicios ofrecidos por ALMACONTACT, desde su presentación y/o radicación, hasta la respectiva respuesta y cierre de la misma.
                                </p>
                            </div>

                            <div style="margin-top: 8%">
                                <h3>CANALES DE COMUNICACIÓN</h3>
                                <p>
                                  El Cliente podrá presentar Peticiones, Quejas, Reclamos, Sugerencias y Reconocimientos (PQRS) en forma escrita por los siguientes canales: 
                                </p>
                                <ul>
                                    <li>Enlace formulario PQRS ALMACONTACT : <a href="https://forms.office.com/r/qTG8FqrgiR">https://forms.office.com/r/qTG8FqrgiR</a> </li>
                                    <li>Correo electrónico <b>vozdelcliente@almacontactcol.co</b></li>
                                    <li>O a través del Gerente de Operaciones asignado a su cuenta. </li>
                                </ul>
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
                            <h5 class="card-title">PROCEDIMIENTOS WORKFORCE</h5>
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
                                    <td>Caracterización Comercial</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">12/10/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Comercial/Procedimientos/CARACTERIZACIÓN%20COMERCIAL.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento Comercial</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">12/10/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Comercial/Procedimientos/Procedimiento%20Comercial.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Procedimiento PQRS Almacontact</td>
                                    <td class="text-center">1</td>
                                    <td class="d-none d-md-table-cell">29/11/2021</td>
                                    <td class="table-action">
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="edit-2"></i></a>
                                        <a href="#" style="display:none"><i class="align-middle" data-feather="trash"></i></a>
                                        <a href="../Content/Documentacion/SGC/Comercial/Procedimientos/PROCEDIMIENTO%20PQRS%20ALMACONTACT.pdf" target="_blank"><i class="align-middle" data-feather="download"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="tab-pane" id="TabFormatos" role="tabpanel" aria-labelledby="profile-tab">

                    <div class="card">
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
                    </div>

                </div>
            </div>

        </div>
    </div>
</asp:Content>
