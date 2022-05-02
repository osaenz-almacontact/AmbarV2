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
                    </div>
                </div>

                <br />
            </div>
        </section>

    </div>
</asp:Content>
