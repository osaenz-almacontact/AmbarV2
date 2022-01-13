<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notificaciones.aspx.cs" Inherits="AmbarV2.Notificaciones.Notificaciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid p-0">

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
                                    <asp:TextBox runat="server" class="form-control" ID="TextBox1" />
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Operacion</label>
                                    <asp:TextBox runat="server" class="form-control" ID="TextBox2" />
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label>Texto (no mas de 160 caracrters)</label>
                            <asp:TextBox runat="server" TextMode="multiline" Columns="50" MaxLength="160" Rows="3" class="form-control" ID="TxtNoedad" />
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
</asp:Content>
