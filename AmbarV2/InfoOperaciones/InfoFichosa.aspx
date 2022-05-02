<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InfoFichosa.aspx.cs" Inherits="AmbarV2.InfoOperaciones.InfoFichosa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3">
            <div class="container-fluid">
                <img class="card-img-top" src="../Content/Images/ImgOperaciones/ImgFichosa/FichosaBanner.jpg" alt="Unsplash">
            </div>
        </div>
        <br />

        <!-- Right Image -->
        <section class="right-image">
            <div class="row">
                <div class="col-xl-4 col-xxl-4">
                    <div class="card flex-fill w-100">
                        <div class="card-header" style="background-color: #152499">
                            <b style="color: white">Servicios</b>
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
                        </div>
                    </div>
                </div>

                <div class="col-xl-4 col-xxl-4">
                    <div class="card">
                        <div class="card-header" style="background-color: #152499">
                            <b class="card-title" style="color: white">Hoverable Rows</b>
                        </div>
                        <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Phone Number</th>
                                    <th>Date of Birth</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <img src="img/avatars/avatar-5.jpg" width="48" height="48" class="rounded-circle mr-2" alt="Avatar">
                                        Vanessa Tucker
                                    </td>
                                    <td>864-348-0485</td>
                                    <td>June 21, 1961</td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/avatars/avatar-2.jpg" width="48" height="48" class="rounded-circle mr-2" alt="Avatar">
                                        William Harris
                                    </td>
                                    <td>914-939-2458</td>
                                    <td>May 15, 1948</td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/avatars/avatar-3.jpg" width="48" height="48" class="rounded-circle mr-2" alt="Avatar">
                                        Sharon Lessman
                                    </td>
                                    <td>704-993-5435</td>
                                    <td>September 14, 1965</td>
                                </tr>
                                <tr>
                                    <td>
                                        <img src="img/avatars/avatar-4.jpg" width="48" height="48" class="rounded-circle mr-2" alt="Avatar">
                                        Christina Mason
                                    </td>
                                    <td>765-382-8195</td>
                                    <td>April 2, 1971</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="col-xl-4 col-xxl-4">
                    <div class="card">
                        <img class="card-img-top" src="../Content/Images/Empresa/ImgOperaciones/Claro.JPG" alt="Unsplash">
                    </div>
                    <div class="card flex-fill w-100">
                        <div class="card-header" style="background-color: #152499">
                            <b style="color: white">Servicios</b>
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
                        </div>
                    </div>
                </div>

            </div>

        </section>

        <hr />
    </div>
</asp:Content>
