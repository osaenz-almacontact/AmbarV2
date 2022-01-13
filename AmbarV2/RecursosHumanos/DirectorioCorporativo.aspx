<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DirectorioCorporativo.aspx.cs" Inherits="AmbarV2.RecursosHumanos.DirectorioCorporativo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12">
            <h1>Directorio corporativo</h1>
        </div>
    </div>
    <hr />
    <section class="forms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:TextBox ID="TxtNombres" runat="server" placeholder="Nombres o apellidos" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <asp:Button ID="Btnguardar" runat="server" Text="Buscar" CssClass="btn btn-success" OnClick="Btnguardar_Click" />
                    </div>
                </div>
            </div>
            <br />
            <div class="card">
                <asp:GridView ID="DataDirectorio" runat="server" AutoGenerateColumns="False" class="table table-bordered table-hover table-striped" OnPageIndexChanging="DataDirectorio_PageIndexChanging" AllowPaging="true" PageSize="20">
                    <Columns>
                        <asp:BoundField DataField="Nombres" HeaderText="Nombres" />
                        <asp:BoundField DataField="Extension" HeaderText="Extension" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>

    </section>
</asp:Content>
