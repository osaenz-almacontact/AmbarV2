<%@ Page Title="Bienvenido" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AmbarV2._Default" ValidateRequest="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .scrollClass {
            height: 250px;
            overflow-y: scroll;
        }

        .blog .carousel-indicators {
            left: 0;
            top: auto;
            bottom: -80px;
        }

            /* The colour of the indicators */
            .blog .carousel-indicators li {
                background: #a3a3a3;
                border-radius: 50%;
                width: 4px;
                height: 4px;
            }

            .blog .carousel-indicators .active {
                background: #707070;
            }
    </style>

    <script>
        $('#blogCarousel').carousel({
            interval: 5000
        });
    </script>
    <script type="text/javascript">
        function openModal() {
            $("#defaultModalPrimary").modal('show');
            //$("#ModalAsignacionDispositivos").modal('show');
        }
    </script>
    <!---Alert---->
    <div class="alert alert-danger alert-dismissible" role="alert" runat="server" id="DivAlert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        <div class="alert-message">
            <strong>
                <asp:Label Text="text" runat="server" Id="LabTipoMensajeAlerta"/>
            </strong> <asp:Label Text="text" runat="server" ID="LabMensajeAlerta"/>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-xl-9">
            <div class="container-fluid p-0">

                <!-- Modulos -->
                <div class="row">
                    <!-- Carousel -->
                    <div class="col-xl-6 col-xxl-6">
                        <div class="w-100">
                            <div class="row">

                                <div class="card flex-fill w-100">
                                    <div class="card-header">
                                        <div class="col-md-12">
                                            <h1 style="color: #12679B; font-size: 50px;">NOTICIAS</h1>
                                            <h3>
                                                <asp:Label Text="text" runat="server" ID="LabFecha" />
                                            </h3>
                                            <button class="btn btn-success" runat="server" id="BtnAgregarNoticia" onserverclick="BtnAgregarNoticia_ServerClick"><i class="fas fa-plus"></i></button>
                                        </div>
                                        <hr />
                                        <h5 class="card-title mb-0">Noticias Corporativas - <b>Alma Cominuca</b></h5>
                                    </div>
                                    <div class="card-body py-3 scrollClass">
                                        <asp:Repeater ID="RptNoticias" runat="server">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <div class="media">
                                                    <i class="feather-lg" data-feather="headphones"></i>
                                                    <div class="media-body" style="border-right: 5px; border-left: 5px;">
                                                        <strong><b style="color: #12679B;"><%#Eval("Titulo") %> </b></strong><%#Eval("Descripcion") %><br />
                                                        <small class="text-muted"><b>Publicado el: </b><%#Eval("FechaPublicacion") %></small><br />

                                                    </div>
                                                </div>

                                                <hr />
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </div>
                                </div>



                                <!--/COL-->
                            </div>
                            <!--END ROW-->
                            <br />
                            <div class="row">
                                <div class="card flex-fill w-100">
                                    <div class="card-header">

                                        <h5 class="card-title mb-0">Creciendo con Alma</h5>
                                    </div>
                                    <div class="card-body py-3 scrollClass">
                                        <asp:Repeater ID="RptVacantes" runat="server">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <div class="col-12 ">
                                                    <div class="card">
                                                        <div class="card-header">
                                                            <div class="row">
                                                                <div class="col-2">
                                                                    <i class="feather-lg" data-feather="radio"></i>
                                                                </div>
                                                                <div class="col-10">
                                                                    <h4 class="card-title mb-0" style="margin-top: 5px"><b>Buscamos: </b></h4>
                                                                    <h5 class="card-title mb-0" style="margin-top: 5px"><%#Eval("Cargo") %></h5>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="card-body">
                                                            <p class="card-text"><%#Eval("Perfil") %></p>
                                                            <div class="row">
                                                                <div class="col-6">
                                                                    <p class="card-text"><b>Candidatos requeridos: </b><%#Eval("NumCandidatos") %></p>
                                                                    <p class="card-text"><b>Salario: </b><%#Eval("Salario") %></p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="card-text"><b>Operación: </b><%#Eval("Operacion") %></p>
                                                                    <p class="card-text"><b>Varibale: </b><%#Eval("Variable") %></p>
                                                                </div>
                                                            </div>
                                                            <br />
                                                            <asp:Button Text="Aplicar" runat="server" ID="BtnAplicar" class="btn btn-success" OnClick="BtnAplicar_Click" />
                                                            <hr />
                                                            <small><b>Fecha Publicación: </b><%#Eval("FechaPublicacion") %></small><br />
                                                            <small><b>Fecha de cierre: </b><%#Eval("FechaPublicacion", "{0:dd/MM/yyyy}") %></small>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr />
                                            </ItemTemplate>
                                            <FooterTemplate>
                                            </FooterTemplate>
                                        </asp:Repeater>


                                    </div>
                                </div>
                            </div>
                            <!--END ROW-->

                        </div>


                    </div>

                    <%--Noticias--%>
                    <div class="col-xl-6 col-xxl-6">
                        <asp:Button Text="Actualizar" runat="server" ID="BtnModalComunicados" OnClick="BtnActualizarComunicados_Click" class="btn btn-primary" />
                        <div class="scrollClass" style="height: 755px">
                            <img src="Content/Images/Comunicados/image002.jpg" class="d-block img-fluid" />
                            <hr />
                            <img src="Content/Images/Comunicados/image001.jpg" class="d-block img-fluid" />
                        </div>


                        <!-- Carousel -->
                        <%--<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
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
                        </div>--%>
                    </div>


                </div>
                <!---END ROW--->

                <br />

                <div class="col-xl-12 col-xxl-12 d-flex">
                    <!---CAROUSEL--->
                    <div class="row blog">
                        <asp:Button Text="Actualizar" runat="server" ID="BtnActualizar" OnClick="BtnActualizar_Click" class="btn btn-primary" />
                        <div class="col-md-12">
                            <div id="blogCarousel" class="carousel slide" data-ride="carousel">

                                <ol class="carousel-indicators">
                                    <li data-target="#blogCarousel" data-slide-to="0" class="btn btn-primary active"></li>
                                    <li data-target="#blogCarousel" data-slide-to="1" class="btn btn-primary"></li>

                                </ol>

                                <!-- Carousel items -->
                                <div class="carousel-inner">

                                    <div class="carousel-item active">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img class="d-block img-fluid" src="Content/Images/Carousel/Foto1.jpg" alt="First slide" style="max-width: 100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img class="d-block img-fluid" src="Content/Images/Carousel/Foto2.jpg" alt="First slide" style="max-width: 100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img class="d-block img-fluid" src="Content/Images/Carousel/Foto3.jpg" alt="First slide" style="max-width: 100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img class="d-block img-fluid" src="Content/Images/Carousel/Foto4.jpg" alt="First slide" style="max-width: 100%;">
                                                </a>
                                            </div>
                                        </div>
                                        <!--.row-->
                                    </div>
                                    <!--.item-->

                                    <div class="carousel-item">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img class="d-block img-fluid" src="Content/Images/Carousel/Foto5.jpg" alt="First slide" style="max-width: 100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img class="d-block img-fluid" src="Content/Images/Carousel/Foto6.jpg" alt="First slide" style="max-width: 100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img class="d-block img-fluid" src="Content/Images/Carousel/Foto7.jpg" alt="First slide" style="max-width: 100%;">
                                                </a>
                                            </div>
                                            <div class="col-md-3">
                                                <a href="#">
                                                    <img class="d-block img-fluid" src="Content/Images/Carousel/Foto8.jpg" alt="First slide" style="max-width: 100%;">
                                                </a>
                                            </div>
                                        </div>
                                        <!--.row-->
                                    </div>
                                    <!--.item-->

                                </div>
                                <!--.carousel-inner-->
                            </div>
                            <!--.Carousel-->

                        </div>
                    </div>
                    <!---END CAROUSEL----->

                </div>
                <br />
                <br />
                <br />
                <br />

                <div class="col-xl-12 col-xxl-12">
                    <div class="row">

                        <div class="col">
                            <p>
                                <a href="MiPerfil/MiPerfil.aspx" class="btn btn-sq btn-primary">
                                    <i class="fa fa-user fa-5x"></i>
                                    <br />
                                    Mi Perfil
                                </a>
                            </p>
                        </div>
                        <div class="col">
                            <p>
                                <a href="https://almacontact.beedoo.io/login" class="btn btn-sq btn-primary" style="width: 100px">
                                    <img class="card-img-top" src="Content/Images/Iconos/BedooIco.png" alt="Unsplash">
                                    <br />
                                    Beedoo<br>
                                </a>
                            </p>
                        </div>
                        <div class="col">
                            <p>
                                <a href="http://alma-bi.co/AlmaBI/Login/Login" class="btn btn-sq btn-primary" style="width: 100px">
                                    <img class="card-img-top" src="Content/Images/Iconos/AlmaBiIco.png" alt="Unsplash">
                                    <br />
                                    AlmaBI<br>
                                </a>
                            </p>
                        </div>
                        <div class="col">
                            <p>
                                <a href="http://10.96.16.14/AppHelpdesk/index.html" class="btn btn-sq btn-primary" style="width: 100px;">
                                    <img class="card-img-top" src="Content/Images/Iconos/ApoloIco.png" alt="Unsplash">
                                    <br />
                                    Apolo<br>
                                </a>
                            </p>
                        </div>
                        <div class="col">
                            <p>
                                <a href="http://almatalk.live:8082/" class="btn btn-sq btn-primary" style="width: 100px">
                                    <i style="font-size: 48px;">AT</i>
                                    <br />
                                    AlmaTalk<br>
                                </a>
                            </p>
                        </div>

                        <div class="col">
                            <p>
                                <a href="RecursosHumanos/DirectorioCorporativo.aspx" class="btn btn-sq btn-primary">
                                    <i class="fa fa-at fa-5x"></i>
                                    <br />
                                    Directorio
                            <br>
                                </a>
                            </p>
                        </div>
                        <div class="col">
                            <p>
                                <a href="#" class="btn btn-sq btn-primary">
                                    <img class="card-img-top" src="Content/Images/Iconos/NovasoftIco.png" alt="Unsplash">
                                    <br />
                                    NovaSoft<br>
                                </a>
                            </p>
                        </div>
                        <div class="col">
                            <p>
                                <a href="#" class="btn btn-sq btn-primary">
                                    <i class="fas fa-thumbs-up fa-5x"></i>
                                    <br />
                                    Sugerencias<br>
                                </a>
                            </p>
                        </div>
                    </div>
                    <br />
                </div>


                <br />
                <br />


                <div class="row">
                    <div class="left-content">
                        <h3 style="color: #00467E;"><b>Reconocimiento a nuestros colaboradores. (MARZO)</b></h3>
                    </div>
                </div>
                <br />
                <br />
                <div class="row">
                    <div class="col">
                        <div class="media">
                            <div class="media-left media-middle">
                                <img class="media-object rounded-circle mb-2" src="Content/Images/FotosColaboradores/Foto_1.JPG" alt="..." style="max-width: 100px" />
                            </div>
                            <div class="media-body">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Carlos Eduardo González Rangel</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>LATAM - Mejor NPS    &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="media">
                            <div class="media-left media-middle">
                                <img class="rounded-circle rounded mr-2 mb-2" src="Content/Images/FotosColaboradores/Foto_2.JPG" alt="..." style="max-width: 100px" />
                            </div>
                            <div class="media-body">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Paola Andrea Sandoval Gómez</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Claro - Vendedor  &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="media">
                            <div class="media-left media-middle">
                                <img class="rounded-circle rounded mr-2 mb-2" src="Content/img/avatars/avatar-2.jpg" alt="..." style="max-width: 100px" />
                            </div>
                            <div class="media-body">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Jorge Andrés Peña Navarrete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>SHOPEE - Vendedor   &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="col">
                        <div class="media">
                            <div class="media-left media-middle">
                                <img class="rounded-circle rounded mr-2 mb-2" src="Content/img/avatars/avatar-3.jpg" alt="..." style="max-width: 100px" />
                            </div>
                            <div class="media-body">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Victoria Sandoval Rangel</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Ficohsa - Resultado de calidad  &nbsp; &nbsp; &nbsp;&nbsp;</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>

        <div class="col-md-4 col-xl-3">

            <!-----END PERFIL------->
            <!-----CUMPLEAÑOS------->
            <div class="col-xl-12 col-xxl-12">

                <div class="row mb-2">
                    <div class="card flex-fill w-100" style="background-image: url(Content/Images/globos.png); background-repeat: no-repeat">
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
                                        <asp:BoundField DataField="Nombres" HeaderText="Nombres Y Apellidos" />
                                        <asp:BoundField DataField="FechaNacimiento" DataFormatString="{0:dd/MM}" HeaderText="Fecha" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- END CUMPLEAÑOS -->




            <div class="row">

                <div class="row mb-2 mb-xl-3">
                    <div class="col-auto d-none d-sm-block">
                        <h3><strong>Notificaciones</strong> </h3>
                    </div>
                </div>

                <hr />

                <%--<div class="card flex-fill w-100">

                <img src="Content/Images/Comunicados/image001.png" class="img-fluid pr-2" alt="Alternate Text" />

            </div>


            <hr />--%>


                <br />
                <div class="col-xl-12 col-xxl-12">
                    <div class="scrollClass">
                        <a class="twitter-timeline" href="https://twitter.com/AlmacontactCoL?ref_src=twsrc%5Etfw">Tweets by AlmacontactCoL</a>
                        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                    </div>


                    <br />
                    <div>
                        <iframe src="https://www.linkedin.com/embed/feed/update/urn:li:share:6908168140790870016" height="970" width="100%" frameborder="0" allowfullscreen="" title="Publicación integrada"></iframe>
                    </div>

                </div>

            </div>
            <!--END ROW--->

        </div>
    </div>

    <!-- Modal Asignacion -->
    <div class="modal fade" id="ModalAgregarNoticia" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle"><b>Ingresar noticia </b>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">

                    <div class="row" style="margin: 10px;">
                        <!-- LEFT COLUMN -->
                        <div class="col-12 col-md-6 col-lg-12">
                            <div class="card">
                                <div class="row">
                                    <div class="col-12" style="margin-top: 2%">
                                        <div class="row">
                                            <div class="col-4">
                                                <h3><b>Titulo: </b></h3>
                                            </div>
                                            <div class="col-8">
                                                <h4>
                                                    <asp:TextBox runat="server" ID="TxtTituloNoticia" CssClass="form-control" MaxLength="100" />
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                            </div>
                        </div>

                        <hr />

                        <div class="col-12">
                            <h4 class="control-label col-sm-4"><b>Descripción:</b></h4>
                            <textarea name="jodit" id="jodit" cols="30" rows="10" maxlength="500"></textarea>
                            <asp:TextBox runat="server" name="TxtDescripcion" ID="TxtDescripcion" cols="30" Rows="3" TextMode="multiline" OnFocus="this.blur()" MaxLength="500" Style="display: none" />
                        </div>


                        <script>
                            $('textarea').on('change', function () {
                                var MiComunicado = jodit.value;
                                MainContent_TxtDescripcion.value = MiComunicado;
                            })
                        </script>


                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="BtnPublicaer" class="btn btn-success" runat="server" Text="Publicar" OnClick="BtnPublicaer_Click" />
                    <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>--%>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Imagenes Carrusel -->
    <div class="modal fade" id="ModalActualizarImagenes" tabindex="-1" role="dialog" aria-labelledby="exampleModalImagenes" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalImagenes"><b>Actualizar carrusel</b>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">

                    <div class="row" style="margin: 10px;">
                        <!-- LEFT COLUMN -->
                        <div class="col-12 col-md-6 col-lg-12">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th style="width: 40%">Descripción</th>
                                        <th style="width: 40%">Archivo</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control" />
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FlpImagen1" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="BtnPrimero" OnClick="BtnPublicarImagenes_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control" />
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FlpImagen2" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="BtnSegundo" OnClick="BtnPublicarImagenes_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control" />
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FlpImagen3" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="BtnTercero" OnClick="BtnPublicarImagenes_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control" />
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FlpImagen4" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="BtnCuarto" OnClick="BtnPublicarImagenes_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control" />
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FlpImagen5" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="BtnQuinto" OnClick="BtnPublicarImagenes_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control" />
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FlpImagen6" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="BtnSexto" OnClick="BtnPublicarImagenes_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control" />
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FlpImagen7" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="BtnSeptimo" OnClick="BtnPublicarImagenes_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="form-control" />
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FlpImagen8" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="BtnOctavo" OnClick="BtnPublicarImagenes_Click" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>
                
            </div>
        </div>
    </div>

    <!-- Modal Imagenes Comunicados -->
    <div class="modal fade" id="ModalActualizarComunicados" tabindex="-1" role="dialog" aria-labelledby="exampleModalComuncados" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalComuncados"><b>Actualizar carrusel</b>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">

                    <div class="row" style="margin: 10px;">
                        <!-- LEFT COLUMN -->
                        <div class="col-12 col-md-6 col-lg-12">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th style="width: 70%">Archivo</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="FlpComunicado1" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="Button1" OnClick="BtnPublicarComunicado_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="FlpComunicado2" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="Button2" OnClick="BtnPublicarComunicado_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="FlpComunicado3" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="Button3" OnClick="BtnPublicarComunicado_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="FlpComunicado4" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="Button4" OnClick="BtnPublicarComunicado_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="FlpComunicado5" runat="server" CssClasss="custom-file" Style="width: 100%" /></td>
                                        <td class="table-action">
                                            <asp:Button Text="Publicar" runat="server" CssClass="btn btn-primary" ID="Button5" OnClick="BtnPublicarComunicado_Click" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>
                
            </div>
        </div>
    </div>
</asp:Content>
