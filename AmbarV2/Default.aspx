<%@ Page Title="Bienvenido" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AmbarV2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12">
            <h1>Dashboard</h1>
        </div>

    </div>
    <hr />
    <!-- Modulos -->
    <section class="services">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="service-item first-item">
                        <div class="icon">
                            <i class="fa fa-edit dashboard-div-icon fa-4x fa-lg"></i>
                        </div>
                        <a href="DBBoletin.aspx" class="pull">
                            <h5 style="color: #31323a">Boletines</h5>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service-item second-item">
                        <div class="icon">
                            <i class="fa fa-cogs dashboard-div-icon fa-4x fa-lg"></i>
                        </div>
                        <a href="ITAplicaciones.aspx" class="pull">
                            <h5 style="color: #31323a">Aplicaciones</h5>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service-item third-item">
                        <div class="icon">
                            <i class="fa fa-bell-o dashboard-div-icon fa-4x fa-lg"></i>
                        </div>
                        <a runat="server" href="~/Novedades/IngresoDeNovedades.aspx">
                            <h5 style="color: #31323a">Novedades</h5>
                        </a>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="service-item fourth-item">
                        <div class="icon">
                            <i class="fa fa-file-text dashboard-div-icon fa-4x fa-lg"></i>
                        </div>
                        <a href="DBDirectorio.aspx" class="pull">
                            <h5 class="pull" style="color: #31323a">Directorio</h5>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
                        <h4>Cooperativa Almacontact.</h4>
                        <p>
                            Almacontact es una cooperativa que busca aportar al mejoramiento de la calidad de vida de nuestros asociados, poniendo a su disposición un amplio portafolio de servicios, beneficios y productos financieros competitivo.
                                <br>
                            <br>
                            Para más información puede ingresar al siguiente <a href="#" target="_blank" style="color: blue">Link</a>.
                        </p>
                        <br />
                        <h4>Portal del colaborador Almacontact.</h4>
                        <p align="justify">
                            Desde esta herramienta puedes modificar tus datos personales, consultar tus recibos de nómina y tus datos laborales. Recuerda que para acceder a estas y otras secciones de gestión del colaborador, debes identificarte previamente.
                        <u><a href="#" target="_blank" style="color: blue">Ingreso al portal</a></u>
                        </p>
                        <div class="primary-button">
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner -->
    <section class="main-banner">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="banner-content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="banner-caption">
                                    <h4>Hello, this is your <em>Ramayana</em> Theme.</h4>
                                    <span>AWESOME HTML5 &amp; CSS3 TEMPLATE</span>
                                    <p>Do you know that <strong>Ramayana</strong> is a free to use Bootstrap 4 CSS template by <strong>templatemo</strong>? You can edit and add more pages as you wanted for your personal or corporate websites.</p>
                                    <div class="primary-button">
                                        <a href="#">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Top Image -->
    <section class="top-image">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <img src="assets/images/top-image.jpg" alt="">
                    <div class="down-content">
                        <h4>Ante Interdum Chambray</h4>
                        <p>Lorem ipsum dolor amet raclette chambray bitters, hammock celiac slow-carb flexitarian four dollar toast food truck health goth. Air plant brunch food truck vegan scenester organic crucifix irony pour-over pop-up austin hexagon kitsch swag. Godard literally humblebrag cloud bread vice master cleanse chambray typewriter put a bird on it brooklyn forage.</p>
                        <div class="primary-button">
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Right Image -->
    <section class="right-image">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <div class="left-content">
                        <h4>Ante Interdum Raclette</h4>
                        <p>
                            Lorem ipsum dolor amet raclette chambray bitters, hammock celiac slow-carb flexitarian four dollar toast food truck health goth. Air plant brunch food truck vegan scenester organic crucifix irony pour-over pop-up austin hexagon kitsch swag. Godard literally humblebrag cloud bread vice master cleanse chambray typewriter put a bird on it brooklyn forage.<br>
                            <br>
                            Air plant brunch food truck vegan scenester organic crucifix irony pour-over pop-up austin hexagon kitsch swag. Godard literally humblebrag cloud bread vice master cleanse chambray typewriter put bird brooklyn
                        </p>
                        <div class="primary-button">
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="assets/images/right-image.jpg" alt="">
                </div>
            </div>
        </div>
    </section>





</asp:Content>
