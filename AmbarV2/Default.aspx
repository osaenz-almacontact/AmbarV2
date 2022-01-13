<%@ Page Title="Bienvenido" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AmbarV2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .scrollClass {
            height: 250px;
            overflow-y: scroll;
        }
    </style>
    <div class="row">
        <div class="col-md-8 col-xl-9">
            <div class="container-fluid p-0">

                <!-- Modulos -->
                <div class="row">
                    <!-- Carousel -->
                    <div class="col-xl-6 col-xxl-7">
                        <!-- Carousel -->
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <div class="img">
                                        <img class="d-block img-fluid" src="Content/Images/Carousel/Foto1.jpg" alt="First slide">
                                    </div>
                                    <div class="carousel-caption" style="background-color: rgba(27, 20, 100, 0.8)">
                                        <h3 style="color: white">Halloween</h3>
                                        <p>We had such a great time in LA!</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="img">
                                        <img class="d-block img-fluid" src="Content/Images/Carousel/Foto2.jpg" alt="Second slide">
                                    </div>
                                    <div class="carousel-caption" style="background-color: rgba(27, 20, 100, 0.8)">
                                        <h3 style="color: white">Halloween</h3>
                                        <p>Thank you, Chicago!</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="img">
                                        <img class="d-block img-fluid" src="Content/Images/Carousel/Foto3.jpg" alt="Third slide">
                                    </div>
                                    <div class="carousel-caption" style="background-color: rgba(27, 20, 100, 0.8)">
                                        <h3 style="color: white">Halloween</h3>
                                        <p>We love the Big Apple!</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>

                    </div>

                    <%--Noticias--%>
                    <div class="col-xl-6 col-xxl-5 d-flex">
                        <div class="w-100">
                            <div class="row">

                                <div class="card flex-fill w-100">
                                    <div class="card-header">
                                        <div class="col-md-12">
                                            <h1 style="color: #12679B; font-size: 50px;">NOTICIAS</h1>
                                            <h3>
                                                <asp:Label Text="text" runat="server" ID="LabFecha" />
                                            </h3>
                                        </div>
                                        <hr />
                                        <h5 class="card-title mb-0">Noticias Corporativas - <b>Alma Cominuca</b></h5>
                                    </div>
                                    <div class="card-body py-3 scrollClass">

                                        <div class="media">
                                            <i class="feather-lg" data-feather="headphones"></i>
                                            <div class="media-body" style="border-right: 5px; border-left: 5px;">
                                                <small class="float-right text-navy">5m ago</small>
                                                <strong><a href="#">Tittle</a></strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                                <small class="text-muted">Today 7:51 pm</small><br />

                                            </div>
                                        </div>

                                        <hr />

                                        <div class="media">
                                            <i class="feather-lg" data-feather="headphones"></i>
                                            <div class="media-body" style="border: 5px; border-left: 5px;">
                                                <small class="float-right text-navy">5m ago</small>
                                                <strong><a href="#">Tittle</a></strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                                <small class="text-muted">Today 7:51 pm</small><br />

                                            </div>
                                        </div>

                                        <hr />

                                        <div class="media">
                                            <i class="feather-lg" data-feather="headphones"></i>
                                            <div class="media-body" style="border-left: 5px; border-left: 5px;">
                                                <small class="float-right text-navy">5m ago</small>
                                                <strong><a href="#">Tittle</a></strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                                <small class="text-muted">Today 7:51 pm</small><br />

                                            </div>
                                        </div>

                                        <hr />

                                        <div class="media">
                                            <i class="feather-lg" data-feather="headphones"></i>
                                            <div class="media-body" style="border-left: 5px">
                                                <small class="float-right text-navy">5m ago</small>
                                                <strong><a href="#">Tittle</a></strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                                <small class="text-muted">Today 7:51 pm</small><br />

                                            </div>
                                        </div>

                                        <hr />

                                        <div class="media">
                                            <i class="feather-lg" data-feather="headphones"></i>
                                            <div class="media-body" style="border-left: 5px">
                                                <small class="float-right text-navy">5m ago</small>
                                                <strong><a href="#">Tittle</a></strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                                <small class="text-muted">Today 7:51 pm</small><br />

                                            </div>
                                        </div>

                                        <hr />

                                    </div>
                                </div>

                                <div class="col-sm-12">

                                    <div class="row">
                                        <div class="col-sm-3 col-lg-3">
                                            <p>
                                                <a href="MiPerfil/MiPerfil.aspx" class="btn btn-sq btn-primary">
                                                    <i class="fa fa-user fa-5x"></i>
                                                    <br />
                                                    Mi Perfil
                                                </a>
                                            </p>
                                        </div>
                                        <div class="col-sm-3 col-lg-3">
                                            <p>
                                                <a href="#" class="btn btn-sq btn-primary">
                                                    <i class="fas fa-thumbs-up fa-5x"></i>
                                                    <br />
                                                    Sugerencias
                                                <br>
                                                </a>
                                            </p>
                                        </div>
                                        <div class="col-sm-3 col-lg-3">
                                            <p>
                                                <a href="RecursosHumanos/DirectorioCorporativo.aspx" class="btn btn-sq btn-primary">
                                                    <i class="fa fa-at fa-5x"></i>
                                                    <br />
                                                    Directorio 
                                                <br>
                                                </a>
                                            </p>
                                        </div>
                                        <div class="col-sm-3 col-lg-3">
                                            <p>
                                                <a href="#" class="btn btn-sq btn-primary">
                                                    <i class="fas fa-rocket fa-5x"></i>
                                                    <br />
                                                    Apps
                                                <br>
                                                </a>
                                            </p>
                                        </div>
                                    </div>

                                </div>


                                <!--/COL-->
                            </div>
                        </div>
                    </div>


                </div>
                <!---END ROW--->

                <br />
                <div class="row">
                    <div class="col-xl-6 col-xxl-5">
                        <div class="w-100">
                            <div class="row">
                                <div class="card flex-fill w-100">
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

                    </div>
                    <div class="col-xl-6 col-xxl-7 d-flex">

                        <div class="card flex-fill w-100">
                            <div class="card-header">

                                <h5 class="card-title mb-0">Próximos eventos</h5>
                            </div>
                            <div class="card-body py-3 scrollClass">

                                <div class="media">
                                    <i class="feather-lg" data-feather="calendar"></i>
                                    <div class="media-body" style="border-left: 5px">
                                        <small class="float-right text-navy">5m ago</small>
                                        <strong>23/03/2021</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                        <small class="text-muted">Today 7:51 pm</small><br />

                                    </div>
                                </div>

                                <hr />

                                <div class="media">
                                    <i class="feather-lg" data-feather="calendar"></i>
                                    <div class="media-body" style="border-left: 5px">
                                        <strong>23/03/2021</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                        <small class="text-muted">Today 7:51 pm</small><br />

                                    </div>
                                </div>

                                <hr />

                                <div class="media">
                                    <i class="feather-lg" data-feather="calendar"></i>
                                    <div class="media-body" style="border-left: 5px">
                                        <small class="float-right text-navy">5m ago</small>
                                        <strong>23/03/2021</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                        <small class="text-muted">Today 7:51 pm</small><br />

                                    </div>
                                </div>

                                <hr />
                            </div>
                        </div>


                        <div class="card flex-fill w-100">
                            <div class="card-header">

                                <h5 class="card-title mb-0">Vacantes</h5>
                            </div>
                            <div class="card-body py-3 scrollClass">

                                <div class="media">
                                    <i class="feather-lg" data-feather="radio"></i>
                                    <div class="media-body" style="border-left: 5px">
                                        <small class="float-right text-navy">5m ago</small>
                                        <strong>23/03/2021</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                        <small class="text-muted">Today 7:51 pm</small><br />

                                    </div>
                                </div>

                                <hr />

                                <div class="media">
                                    <i class="feather-lg" data-feather="radio"></i>
                                    <div class="media-body" style="border-left: 5px">
                                        <strong>23/03/2021</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                        <small class="text-muted">Today 7:51 pm</small><br />

                                    </div>
                                </div>

                                <hr />

                                <div class="media">
                                    <i class="feather-lg" data-feather="radio"></i>
                                    <div class="media-body" style="border-left: 5px">
                                        <small class="float-right text-navy">5m ago</small>
                                        <strong>23/03/2021</strong> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat<br />
                                        <small class="text-muted">Today 7:51 pm</small><br />

                                    </div>
                                </div>

                                <hr />
                            </div>
                        </div>


                    </div>

                </div>
                <!-- END ROW -->

            </div>
        </div>

        <div class="col-md-4 col-xl-3">

            <div class="row mb-2 mb-xl-3">
                <div class="col-auto d-none d-sm-block">
                    <h3><strong>Notificaciones</strong> </h3>
                </div>
            </div>

            <hr />

            <div class="card flex-fill w-100">
               
                    <img src="Content/Images/Comunicados/image001.png" class="img-fluid pr-2" alt="Alternate Text" />
              
            </div>


            <hr />
            <br />
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
