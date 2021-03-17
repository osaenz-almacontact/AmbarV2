<%@ Page Title="Bienvenido" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AmbarV2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-10">
            <div class="container-fluid p-0">

                <div class="row mb-2 mb-xl-3">
                    <div class="col-auto d-none d-sm-block">
                        <h3><strong>Dashboard</strong> </h3>
                    </div>
                </div>

                <hr />
                <!-- Modulos -->
                <div class="row">
                    <div class="col-xl-6 col-xxl-5 d-flex">
                        <div class="w-100">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title mb-4">Sales</h5>
                                            <h1 class="display-5 mt-1 mb-3">2.382</h1>
                                            <div class="mb-1">
                                                <span class="text-danger"><i class="mdi mdi-arrow-bottom-right"></i>-3.65% </span>
                                                <span class="text-muted">Since last week</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title mb-4"></h5>

                                            <div class="row">
                                                <div class="col-8">
                                                    <div align="center" style="margin-top: 18px">
                                                        <h2>
                                                            <a href="ITAplicaciones.aspx" class="pull">
                                                                <span class="" style="color:black"><i class="mdi mdi-arrow-bottom-right"></i>Aplicaciones</span>
                                                            </a>
                                                        </h2>
                                                    </div>
                                                </div>
                                                <div class="col-4" align="center">
                                                    <i class="text-success feather-max" data-feather="cpu"></i>
                                                </div>
                                            </div>

                                            <div class="mb-1">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--COL-->
                                <div class="col-sm-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title mb-4"></h5>

                                            <div class="row">
                                                <div class="col-8">
                                                    <div align="center" style="margin-top: 18px">
                                                        <h2>
                                                            <a href="MiPerfil/MiPerfil.aspx" class="pull">
                                                                <span class="" style="color:black"><i class="mdi mdi-arrow-bottom-right"></i>Mi Perfil</span>
                                                            </a>
                                                        </h2>
                                                    </div>
                                                </div>
                                                <div class="col-4" align="center">
                                                    <i class="text-success feather-max" data-feather="bell"></i>
                                                </div>
                                            </div>

                                            <div class="mb-1">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">

                                        <div class="card-body">
                                            <h5 class="card-title mb-4"></h5>

                                            <div class="row">
                                                <div class="col-8">
                                                    <div align="center" style="margin-top: 18px">
                                                        <h2>
                                                            <a href="DBDirectorio.aspx" class="pull">
                                                                <span class="" style="color:black"><i class="mdi mdi-arrow-bottom-right"></i>Directorio</span>
                                                            </a>
                                                        </h2>
                                                    </div>
                                                </div>
                                                <div class="col-4" align="center">
                                                    <i class="text-success feather-max" data-feather="book-open"></i>
                                                </div>
                                            </div>

                                            <div class="mb-1">
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!--/COL-->
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-6 col-xxl-7">
                        <div class="card flex-fill w-100">
                            <div class="card-header">

                                <h5 class="card-title mb-0">Recent Movement</h5>
                            </div>
                            <div class="card-body py-3">
                                <div class="chart chart-sm">
                                    <canvas id="chartjs-dashboard-line"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- Left Image -->
                <section class="left-image">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                <!------Cumpleaños--------->

                                <div class="Compose-Message">
                                    <div class="card">
                                        <div class="card-header">
                                            <b>Cumpleaños colaboradores de Almacontact.</b>
                                        </div>
                                        <div class="card-body" id="Tabla">
                                            <%--style="background-image: url(Images/globos.png); background-repeat: no-repeat"--%>
                                            <%--<h4 align="Center">
                                        <b>Almacontact les desea un FELIZ CUMPLEAÑOS!!! 
                                        </b>
                                    </h4>
                                    <h4 align="Center">
                                        <b>Lleno de mucho amor, risas, sueños y alegría.
                                        </b>
                                    </h4>--%>
                                            <div class="table-responsive">
                                                <asp:GridView ID="DataCumpleanos" runat="server" AutoGenerateColumns="False" class="table table-hover" GridLines="None">
                                                    <Columns>
                                                        <asp:BoundField DataField="nombres" HeaderText="Nombres Y Apellidos" />
                                                        <asp:BoundField DataField="fechaDeNacimiento" DataFormatString="{0:dd/MM}" HeaderText="Fecha" />
                                                    </Columns>
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="right-content">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="profile-card-2">
                                                <img src="Content/Images/Card/card-info-blue-button.png" class="img img-responsive">
                                                <div class="profile-name">Actividades</div>
                                                <div class="profile-username">Pendienes</div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="profile-card-2">
                                                <img src="Content/Images/Card/card-danger-red-button.png" class="img img-responsive">
                                                <div class="profile-name">Protegete del COVID</div>
                                                <div class="profile-username">¡Todo lo que hay que saber!</div>
                                                <div class="profile-icons"><a href="https://www.youtube.com/channel/UCM2FgiMUvOBBTbyW4YjXsrA" target="_blank"><i class="fa fa-youtube"></i></a><a href="https://twitter.com/MedicinaUNAL" target="_blank"><i class="fa fa-twitter"></i></a><a href="https://medicina.bogota.unal.edu.co/coronavirus" target="_blank"><i class="fa fa-html5"></i></a></div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- Banner -->

            </div>
        </div>

        <div class="col-md-2">

            <div class="row mb-2 mb-xl-3">
                <div class="col-auto d-none d-sm-block">
                    <h3><strong>Notificaciones</strong> </h3>
                </div>
            </div>

            <hr />

            <div class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="alert-message">
                    <h4 class="alert-heading">Well done!</h4>
                    <p>
                        Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an
													alert works with this kind of content.
                    </p>
                    <hr>
                    <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
                </div>
            </div>
            <div class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="alert-message">
                    <h4 class="alert-heading">Well done!</h4>
                    <p>
                        Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an
													alert works with this kind of content.
                    </p>
                    <hr>
                    <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
