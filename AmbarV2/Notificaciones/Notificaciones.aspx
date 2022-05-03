<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notificaciones.aspx.cs" Inherits="AmbarV2.Notificaciones.Notificaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        blockquote {
            border-left: none;
            margin-left: 10px;
        }

        .quote-badge {
            background-color: #000000;
            background-color: rgba(0, 0, 0, 0.2);
        }

        .quote-box {
            overflow: hidden;
            margin-top: 10px;
            padding-top: -25px;
            border-radius: 17px;
            /*opacity: 0.6;*/
            background-image: url("../Content/Images/Comunicados/Fondos/53-400x400.jpg");
            color: white;
            width: 425px;
            box-shadow: 2px 2px 2px 2px #E0E0E0;
        }

        .quote-box-second {
            /*opacity: 0.6;*/
            background-color: rgba(21, 67, 96, 0.7);
        }

        .quotation-mark {
            margin-top: 5px;
            font-weight: bold;
            font-size: 80px;
            color: white;
            font-family: "Times New Roman", Times, Serif;
        }

        .quote-text {
            font-size: 19px;
            margin-top: -50px;
        }
    </style>
    <div class="container-fluid p-0">

        <div class="row">
            <h2>Enero</h2>
            <hr />
            <div class="col-12 col-md-6 col-xxl-3 d-flex order-1 order-xxl-1">

                <blockquote class="quote-box">
                    <div class="quote-box-second">
                        <div class="alert-message">
                            <p class="quotation-mark">
                                “
                            </p>
                            <p class="quote-text">
                                Don't believe anything that you read on the internet, it may be fake. 
                            </p>
                            <hr>
                            <div class="blog-post-actions">
                                <p class="blog-post-bottom pull-left">
                                    Abraham Lincoln
                                </p>
                                <%-- <p class="blog-post-bottom pull-right">
                                <span class="badge quote-badge">743</span>  ❤
                            </p>--%>
                            </div>
                        </div>
                    </div>
                </blockquote>

            </div>

        </div>
        <%--END ROW--%>
        <div class="row">
            <h2>Febrero</h2>
            <hr />
            <div class="col-12 col-md-6 col-xxl-12 d-flex order-1 order-xxl-1">

                <blockquote class="quote-box">
                    <div class="quote-box-second">
                        <div class="alert-message">
                            <p class="quotation-mark">
                                “
                            </p>
                            <p class="quote-text">
                                Don't believe anything that you read on the internet, it may be fake. 
                            </p>
                            <hr>
                            <div class="blog-post-actions">
                                <p class="blog-post-bottom pull-left">
                                    Abraham Lincoln
                                </p>
                                <%-- <p class="blog-post-bottom pull-right">
                                <span class="badge quote-badge">743</span>  ❤
                            </p>--%>
                            </div>
                        </div>
                    </div>
                </blockquote>
                <blockquote class="quote-box">
                    <div class="quote-box-second">
                        <div class="alert-message">
                            <p class="quotation-mark">
                                “
                            </p>
                            <p class="quote-text">
                                Don't believe anything that you read on the internet, it may be fake. 
                            </p>
                            <hr>
                            <div class="blog-post-actions">
                                <p class="blog-post-bottom pull-left">
                                    Abraham Lincoln
                                </p>
                                <%-- <p class="blog-post-bottom pull-right">
                                <span class="badge quote-badge">743</span>  ❤
                            </p>--%>
                            </div>
                        </div>
                    </div>
                </blockquote>
                <blockquote class="quote-box">
                    <div class="quote-box-second">
                        <div class="alert-message">
                            <p class="quotation-mark">
                                “
                            </p>
                            <p class="quote-text">
                                Don't believe anything that you read on the internet, it may be fake. 
                            </p>
                            <hr>
                            <div class="blog-post-actions">
                                <p class="blog-post-bottom pull-left">
                                    Abraham Lincoln
                                </p>
                                <%-- <p class="blog-post-bottom pull-right">
                                <span class="badge quote-badge">743</span>  ❤
                            </p>--%>
                            </div>
                        </div>
                    </div>
                </blockquote>
                <blockquote class="quote-box">
                    <div class="quote-box-second">
                        <div class="alert-message">
                            <p class="quotation-mark">
                                “
                            </p>
                            <p class="quote-text">
                                Don't believe anything that you read on the internet, it may be fake. 
                            </p>
                            <hr>
                            <div class="blog-post-actions">
                                <p class="blog-post-bottom pull-left">
                                    Abraham Lincoln
                                </p>
                                <%-- <p class="blog-post-bottom pull-right">
                                <span class="badge quote-badge">743</span>  ❤
                            </p>--%>
                            </div>
                        </div>
                    </div>
                </blockquote>

            </div>

        </div>
        <%--END ROW--%>

        <br />
        <h1 class="h3 mb-3">Notificaciones</h1>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Titulo</label>
                                    <asp:TextBox runat="server" class="form-control" ID="TxtTituloNovedad" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Tipo</label>
                                    <asp:DropDownList ID="DropTipoComunicado" class="form-control" runat="server" AppendDataBoundItems="true">
                                        <Items>
                                            <asp:ListItem Text="(Seleccionar)" Value="" />
                                            <asp:ListItem Text="Visita" Value="Visita" />
                                            <asp:ListItem Text="Salud" Value="Salud" />
                                            <asp:ListItem Text="Evento" Value="Evento" />
                                            <asp:ListItem Text="Informativo" Value="Informativo" />
                                        </Items>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Operacion</label>
                                    <asp:DropDownList ID="DropOperacion" class="form-control" runat="server" AppendDataBoundItems="true">
                                        <Items>
                                            <asp:ListItem Text="(Seleccionar)" Value="" />
                                        </Items>
                                    </asp:DropDownList>
                                </div>
                            </div>



                            <div class="form-group">
                                <label>Texto (no mas de 160 caracrters)</label>
                                <asp:TextBox runat="server" TextMode="multiline" Columns="50" MaxLength="160" Rows="3" class="form-control" ID="TxtNoedad" />
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-12 mb-3">
                                <div class="d-grid">
                                    <asp:Button Text="Crear" ID="BtnCrear" class="btn btn-success" runat="server" OnClick="BtnCrear_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
