<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InfoClaro.aspx.cs" Inherits="AmbarV2.InfoOperaciones.InfoClaro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="container-fluid">
                <img class="card-img-top" src="../Content/Images/ImgOperaciones/ImgClaro/BannerClaro.jpg" alt="Unsplash">
            </div>
        </div>
        <br />

        <!-- Right Image -->
        <section class="right-image">
            <div class="row">
                <div class="col-xl-4 col-xxl-4">
                    <div class="card flex-fill w-100">
                        <div class="card-header" style="background-color: red">
                            <b style="color: white">Servicios</b>
                        </div>
                        <div class="card-body" id="Tabla">
                            <div class="list-group list-group-flush" role="tablist">
                                <a class="list-group-item-claro list-group-item-action active" data-toggle="list" href="#DivClaroTMKSabaneta" role="tab">Claro TMK Sabaneta</a>
                                <a class="list-group-item-claro list-group-item-action" data-toggle="list" href="#DivClaroTMKBogota" role="tab">Claro TMK Bogotá</a>
                                <a class="list-group-item-claro list-group-item-action" data-toggle="list" href="#indicadores" role="tab">Claro Premiun</a>
                                <a class="list-group-item-claro list-group-item-action" data-toggle="list" href="#reportesOnline" role="tab">Claro Swat</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-8 col-xxl-8">
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="DivClaroTMKSabaneta" role="tabpanel">
                            <div class="row">
                                <div class="col-xl-6 col-xxl-6">
                                    <div class="card">
                                        <div class="card-header" style="background-color: red">
                                            <b class="card-title" style="color: white">Equipo</b>
                                        </div>
                                        <table class="table table-striped table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Nombre</th>
                                                    <th>Cargo</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <img src="../Content/img/avatars/avatar-3.jpg" width="48" height="48" class="rounded-circle mr-2" alt="Avatar">
                                                        Vanessa Tucker
                                                    </td>
                                                    <td>ANALISTA DE PLANEACIÓN</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="../Content/img/avatars/avatar-2.jpg" width="48" height="48" class="rounded-circle mr-2" alt="Avatar">
                                                        William Harris
                                                    </td>
                                                    <td>ASESOR BILINGÜE</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="../Content/img/avatars/avatar-4.jpg" width="48" height="48" class="rounded-circle mr-2" alt="Avatar">
                                                        Sharon Lessman
                                                    </td>
                                                    <td>AUXILIAR DE CONTRATACIÓN</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <img src="../Content/img/avatars/avatar-5.jpg" width="48" height="48" class="rounded-circle mr-2" alt="Avatar">
                                                        Christina Mason
                                                    </td>
                                                    <td>COORDINADOR DE OPERACIÓN</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>


                                <div class="col-xl-6 col-xxl-6">
                                    <div class="card">
                                        <img class="card-img-top" src="../Content/Images/Empresa/ImgOperaciones/Claro.JPG" alt="Unsplash">
                                    </div>
                                    <div class="card flex-fill w-100">
                                        <div class="card-header" style="background-color: red">
                                            <b style="color: white">Información</b>
                                        </div>
                                        <div class="card-body" id="DivTabla">
                                            <%--style="background-image: url(Images/globos.png); background-repeat: no-repeat"--%>
                                            <%--<h4 align="Center">
                                        <b>Almacontact les desea un FELIZ CUMPLEAÑOS!!! 
                                        </b>
                                    </h4>
                                    <h4 align="Center">
                                        <b>Lleno de mucho amor, risas, sueños y alegría.
                                        </b>
                                    </h4>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!----END TAB--->
                        <div class="tab-pane fade show active" id="DivClaroTMKBogota" role="tabpanel">
                            <div class="row"></div>
                        </div>
                    </div>
                </div>

            </div>


            <!----END------>
            <div class="row" style="display:none">
                <div class="col-md-8">
                    <div class="left-content">
                        <div style="margin-top: 8%">
                            <h3>Claro TKM</h3>
                            <p>
                                Realizamos toda la gestión para los clientes de claro en todo lo que involucra ventas de equipos, servicios (hogar y movil) y BackOffice
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="../Content/Images/Empresa/ImgOperaciones/Claro.JPG" alt="Unsplash">
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <img class="card-img-top" src="../Content/img/media/AlmaVision.jpg" alt="Unsplash">
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="rigth-content">
                            <div style="margin-top: 10%">
                                <h3>Claro Premium</h3>
                                <p>
                                    Encargada de realizar una gestión completa dirigida a los clientes de alto valor del Claro (actores, influenciadores artistas, políticos, etc.)
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-8">
                        <div class="left-content">
                            <div style="margin-top: 10%">
                                <h3>Claro Swat</h3>
                                <p>
                                    Prestación de servicios de Contact Center y procesos asociados a la externalización de servicios BPO para clientes nacionales e internacionales.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img class="card-img-top" src="../Content/img/media/AlmaAlcance.jpg" alt="Unsplash">
                        </div>
                    </div>
                    <br />
                    <hr />

                </div>
                <div class="col-md-4">
                </div>
            </div>


        </section>

        <hr />
    </div>
</asp:Content>
