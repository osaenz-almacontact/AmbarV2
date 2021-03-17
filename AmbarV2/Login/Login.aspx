<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AmbarV2.Login.Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>LOGIN</title>
        <!-- Bootstrap core CSS -->
        <link href="../Content/bootstrap.min.css" rel="stylesheet" />

        <!-- Theme -->
        <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <h3 class="text-center font-weight-light my-4">ALMA-NET</h3>
                                    </div>
                                    <div class="card-body">

                                        <div>
                                            <asp:Label ID="LabNombres" runat="server" Font-Size="15px" ForeColor="White" Text="Nombres y apellidos"></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <label class="small mb-1" for="inputEmailAddress">Usuairo</label>
                                            <input id="TxtUsuario" name="TxtUsuario" class="form-control py-4" runat="server" type="text" placeholder="Ingrese su usuario" />
                                        </div>
                                        <div class="form-group">
                                            <label class="small mb-1" for="inputPassword">Password</label>
                                            <input class="form-control py-4" runat="server" id="TxtPassword" name="TxtPassword" type="password" placeholder="Ingrese su password" />
                                        </div>

                                        <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <a class="small" href="password.html">Olvido su Password?</a>
                                            <asp:Button ID="BtnIngresar" runat="server" Text="Ingresar" CssClass="btn btn-info" OnClick="BtnIngresar_Click" />
                                        </div>

                                    </div>
                                    <div class="card-footer text-center">
                                        <asp:Label ID="LabMensaje" runat="server" Text="" BackColor="Red"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
