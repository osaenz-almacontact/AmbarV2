<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Oficinas.aspx.cs" Inherits="AmbarV2.Oficinas.Oficinas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">
        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3><strong>Oficinas y sitios</strong> </h3>
            </div>
        </div>
        <hr />

        <!-- Right Image -->
        <section class="right-image">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="left-content">
                            <h3>Almacontact</h3>
                            <p>
                                Almacontact opera en sus dos sitios administrativos y operativos en Bogotá y Sabaneta, con un crecimiento constante de recursos profesionales y calificados: los agentes de los Contact Center interactúan en un entorno dinámico y operan a través de los servicios innovadores y las soluciones llave en mano de <i>Digital Customer Management</i> y herramientas avanzadas de análisis para una excelente experiencia del cliente.
                            </p>
                            <img class="rounded mr-2 mb-2" style="max-width: 700px" src="../Content/Images/Empresa/mondo-b.jpg" />
                        </div>
                    </div>

                    <div class="col-md-6">

                        <div class="rigth-content">
                            <div class="card mb-2" style="max-width: 540px;">
                                <div class="row no-gutters">
                                    <div class="col-md-4">
                                        <div align="center">
                                            <img class="media-object rounded-circle mb-2" style="max-width: 120px" src="../Content/Images/Iconos/ubicacion-azul-.jpg" />
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title">Bogotá</h5>
                                            <p class="card-text">Carrera 15 No. 110-45, Piso 6</p>
                                            <p class="card-text"><small class="text-muted">Tel. (+57)5802117</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card mb-2" style="max-width: 540px;">
                                <div class="row no-gutters">
                                    <div class="col-md-4">
                                        <div align="center">
                                            <img class="media-object rounded-circle mb-2" style="max-width: 120px" src="../Content/Images/Iconos/ubicacion-azul-.jpg" />
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body">
                                            <h5 class="card-title">Sabaneta</h5>
                                            <p class="card-text">Carrera 48 a 61 sur 75 / Centro Ejecutivo</p>
                                            <p class="card-text"><small class="text-muted">Sabana 2 (Sabaneta-Antioquia)</small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
