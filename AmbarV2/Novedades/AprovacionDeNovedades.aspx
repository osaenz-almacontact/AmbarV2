<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AprovacionDeNovedades.aspx.cs" Inherits="AmbarV2.Novedades.AprovacionDeNovedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/Jquery/jquery.js"></script>
    <script src="../Scripts/Jquery/jquery.min.js"></script>
    <script src="../Scripts/src/js/modules/bootstrap.js"></script>

    <script type="text/javascript">
        function openModal() {
            $("#defaultModalPrimary").modal('show');
            //$("#ModalAsignacionDispositivos").modal('show');
        }
    </script>
    <div class="alert alert-danger alert-dismissible" role="alert" runat="server" id="DivAlert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
        <div class="alert-icon">
            <i class="far fa-fw fa-bell"></i>
        </div>
        <div class="alert-message">
            <asp:Label Text="text" runat="server" ID="LabMensajeAlerta" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h1>Aprovacion de Novedades</h1>
        </div>
    </div>
    <hr />
    <section class="forms">
        <div class="container-fluid">

            <div class="card">
                <asp:Repeater ID="RepterAprovacionNovedades" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th style="width: 20%;">Nombres y Apellidos	</th>
                                    <th class="d-none d-md-table-cell" style="width: 5%"># dias</th>
                                    <th style="width: 15%">Fecha Inicio</th>
                                    <th style="width: 15%">Fecha Fin</th>
                                    <th class="d-none d-md-table-cell" style="width: 20%">Concepto</th>
                                    <th style="width: 15%">Estado</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="LabIdUsuario" runat="server" Text='<%#Eval("Id") %>' Font-Bold="true" />
                            </td>
                            <td>
                                <asp:Label ID="LabNombreUsuario" runat="server" Text='<%#Eval("Nombres") %>'></asp:Label>
                            </td>
                            <td class="d-none d-md-table-cell">
                                <asp:Label ID="Labcargo" runat="server" Text='<%#Eval("NumeroDias") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="LabOperacion" runat="server" Text='<%#Eval("FechaInicial", "{0:dd/M/yyyy}") %>' />
                            </td>
                            <td>
                                <asp:Label ID="LabPerfil" runat="server" Text='<%#Eval("FechaFinal", "{0:dd/M/yyyy}") %>' />
                            </td>
                            <td class="d-none d-md-table-cell">
                                <asp:Label ID="LabArea" runat="server" Text='<%#Eval("Concepto") %>' />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Estado") %>' />
                            </td>
                            <td>
                                <asp:Button Text="Seleccionar" class="btn btn-primary" runat="server" ID="BtnSeleccionar" OnClick="BtnSeleccionar_Click" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                        </table>  
                    </FooterTemplate>
                </asp:Repeater>


            </div>
        </div>

    </section>


    <!-- Modal Asignacion -->
    <div class="modal fade" id="ModalDetalleNovedad" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalCenterTitle"><b>Aprovacion Novedad - </b>
                        <asp:Label ID="LabId" runat="server" Text=""><%#Eval("Id") %></asp:Label> - 
                        <asp:Label ID="LabConcepto" runat="server" Text=""><%#Eval("Id") %></asp:Label>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="modal-body">


                    <div class="row" style="margin: 10px;">
                        <!-- LEFT COLUMN -->

                        <asp:Label ID="LabIdUsuario" Text="" runat="server" />
                        <div class="col-12 col-md-6 col-lg-12">
                            <div class="card">
                                <div class="row">
                                    <div class="col-2">
                                        <div class="d-flex p-1 px-2 align-items-center">
                                            <span class="square">
                                                <img src=" https://i.imgur.com/6YiLBAv.png" height="40" width="40" /></span>
                                        </div>
                                    </div>
                                    <div class="col-10" style="margin-top: 2%">
                                        <div class="row">
                                            <div class="col-4">
                                                <h3><b> Nombres: </b></h3>
                                            </div>
                                            <div class="col-6">
                                                <h4>
                                                    <asp:Label ID="LabNombres" runat="server"></asp:Label>.
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr />
                                <div class="container">
                                    <div class="row">
                                        <div class="col-8 col-md-6 col-lg-8">
                                            <div class="col-12">
                                                <div class="icons">
                                                    <i class="fa fa-check-circle"></i><span><b> Fecha Inicio: </b></span>
                                                    <asp:Label ID="LabFechaInicio" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="col-12">
                                                <div class="icons">
                                                    <i class="fa fa-check-circle"></i><span><b> Fecha Culminacion: </b></span>
                                                    <asp:Label ID="LabFechaFin" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-4 col-md-6 col-lg-4 align-content-center">
                                            <h3>Dias:</h3>
                                            <h4>
                                                <asp:Label ID="LabDias" runat="server"></asp:Label></h4>
                                        </div>
                                    </div>

                                    <hr />

                                    <div class="row">
                                        <div class="col-12 col-md-12 col-lg-12" style="margin-left: 2%">
                                            <div class="icons">
                                                <i class="fa fa-check-circle"></i><span><b> Motivo: </b></span>
                                                <asp:Label ID="LabMotivo" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr />

                        <div class="col-12">
                        <div class="row">
                            <div class="col-md-4">
                                <h4 class="control-label col-sm-4"><b> Estado:</b></h4>
                                <asp:DropDownList ID="DropEstado" class="btn btn-default" runat="server">
                                    <Items>
                                        <asp:ListItem Text="(Seleccionar)" Value="" />
                                        <asp:ListItem Text="Aprobado" Value="AP" />
                                        <asp:ListItem Text="Negado" Value="RH" />
                                    </Items>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-8">
                                <h4 class="control-label col-sm-4"><b>Motivo:</b></h4>
                                <asp:TextBox runat="server" TextMode="multiline" Rows="3" ID="TxtObservaciones" CssClass="form-control"/>
                            </div>
                        </div>
                        </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <asp:Button ID="BtnEnviar" class="btn btn-success" runat="server" Text="Guardar" OnClick="BtnEnviar_Click" />
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
