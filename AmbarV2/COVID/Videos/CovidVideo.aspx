<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CovidVideo.aspx.cs" Inherits="AmbarV2.COVID.Videos.CovidVideo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .nav-pills .nav-link.active {
            background-color: #21618C;
        }

        a {
            color: black;
        }
    </style>
    <div class="row">
        <div class="col-md-12">
            <h1>COVID-19</h1>
        </div>

    </div>
    <hr />


    <div class="row">
        <div class="col-md-3 col-xl-2">

            <div class="card">

                <div class="list-group list-group-flush" role="tablist">
                    <a class="list-group-item list-group-item-action active" data-toggle="list" href="#Noticias" role="tab">Noticias
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#Autocuidado" role="tab">Autocuidado
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#Vacunacion" role="tab">Vacunacion
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#MitosyVerdades" role="tab">Mitos y Verdades
                    </a>
                    <a class="list-group-item list-group-item-action" data-toggle="list" href="#Consejos" role="tab">Consejos
                    </a>
                </div>
            </div>
        </div>

        <div class="col-md-9 col-xl-10">
            <div class="tab-content">
                <div class="tab-pane fade show active" id="Noticias" role="tabpanel">

                    <div class="card">
                        <div class="card-header">

                            <h5 class="card-title mb-0">Noticia</h5>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="embed-responsive embed-responsive-16by9">
                                    <iframe class="embed-responsive-item" src="https://news.google.com/covid19/map?hl=es-419&gl=CO&ceid=CO%3Aes-419" allowfullscreen></iframe>
                                </div>

                            </div>
                        </div>

                    </div>
                    <!---END CARD--->


                </div>
                <!--END TAB-PANE--->

                <div class="tab-pane fade" id="Autocuidado" role="tabpanel">
                    <div class="card">
                        <div class="card-header">

                            <h5 class="card-title mb-0">Autocuidado</h5>
                        </div>
                        <div class="card-body">

                            <div align="center">
                                <div class="card">
                                    <img class="card-img-top" src="../../Content/Images/COVID/lavado.png" alt="Unsplash">
                                </div>
                            </div>

                        </div>

                    </div>
                    <!---END CARD--->
                </div>
                <!--END TAB-PANE--->

                <div class="tab-pane fade" id="Vacunacion" role="tabpanel">
                    <div class="card">
                        <div class="card-header">

                            <h5 class="card-title mb-0">Vacunacion</h5>
                        </div>
                        <div class="card-body">
                            <div class="row d-flex justify-content-center">
                                <div class="card">
                                    <img class="card-img-top" src="../../Content/Images/COVID/Vacunacion.png" alt="Unsplash">
                                </div>
                            </div>
                        </div>

                    </div>
                    <!---END CARD--->
                </div>
                <!--END TAB-PANE--->

                <div class="tab-pane fade" id="MitosyVerdades" role="tabpanel">
                    <div class="card">
                        <div class="card-header">

                            <h5 class="card-title mb-0">Mitos y Verdades</h5>
                        </div>
                        <div class="card-body">
                            <div class="row d-flex justify-content-center">
                                <div class="card">
                                    <img class="card-img-top" src="../../Content/Images/COVID/MitosYRealidades1.png" alt="Unsplash">
                                </div>
                            </div>
                        </div>

                    </div>
                    <!---END CARD--->
                </div>
                <!--END TAB-PANE--->

                <div class="tab-pane fade" id="Consejos" role="tabpanel">
                    <div class="card">
                        <div class="card-header">

                            <h5 class="card-title mb-0">Consejos</h5>
                        </div>
                        <div class="card-body">
                           <div class="row d-flex justify-content-center">
                                <div class="card">
                                    <img class="card-img-top" src="../../Content/Images/COVID/Cuidados.jpg" alt="Unsplash">
                                </div>
                            </div>
                        </div>

                    </div>
                    <!---END CARD--->
                </div>
                <!--END TAB-PANE--->

            </div>
            <!--END TAB-CONTENT--->


        </div>
    </div>


    <%--    <div class="row">
        <div class="col-3">
            <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Lavado de manos</a>
                <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Lavado de niños</a>
                <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Uso de tapabocas</a>
                <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Uso del gel antibacterial</a>
            </div>
        </div>
        <div class="col-9">
            <div class="tab-content" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="https://www.youtube.com/embed/RvYBf9gHkMA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="https://www.youtube.com/embed/93eVYp4Su7k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="https://www.youtube.com/embed/93eVYp4Su7k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">.asd.</div>
            </div>
        </div>
    </div>--%>
</asp:Content>
