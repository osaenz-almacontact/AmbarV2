<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="400.aspx.cs" Inherits="AmbarV2._400" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>ERROR!</title>

    <!-- Bootstrap core CSS -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <!-- Theme -->
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <link href="../Content/Themes/flex-slider.css" rel="stylesheet" />
    <link href="../Content/Themes/fontawesome.css" rel="stylesheet" />
    <link href="../Content/Themes/owl.css" rel="stylesheet" />
    <link href="../Content/Themes/templatemo-style.css" rel="stylesheet" />
</head>
<body>
    <style>
        .h-100vh {
            height: calc(100vh - 70px);
        }

        .home-center {
            display: table;
            width: 100%;
            height: 100%;
        }

        .home-desc-center {
            display: table-cell;
            vertical-align: middle;
        }
    </style>
    <form id="form1" runat="server">
        <!-- Begin page -->
        <div class="page-wrapper">
            <section class="pb-5 h-100vh">
                <div class="home-center">
                    <div class="home-desc-center">
                        <div class="container">
                            <div class="row">
                                <div class="col-12 text-center error-page">
                                    <h1>400!</h1>
                                    <h4 class="error-title">Lo sentimos, página no encontrada</h4>
                                    <p class="error-text text-muted mt-3">Utilice la navegación de arriba o el botón de abajo para regresar y rastrear.</p>
                                    <br />
                                    <br />
                                    <img src="../Content/Images/logo.png" style="max-width: 400px" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end container -->
            </section>
        </div>
    </form>
</body>
</html>
