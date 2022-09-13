<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Presentacion.Alumnos.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Lista Alumnos</h2>
    <!-- Control asp Label para mensajes -->
    <hr />
    <div>
        <!-- Par de label html - Control asp por cada propiedad -->
       
        <div>
            <!-- Control asp para mostrar/Introducir valor de la propiedad -->
            <div >
                <asp:GridView class=" table table-bordered table-condensed table-responsive table-hover" ID="GridAlumnos" runat ="server" AutoGenerateColumns="False"  OnRowCommand="GridAlumnos_RowCommand" AllowPaging="True" OnPageIndexChanging="GridAlumnos_PageIndexChanging" PageSize="3">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre"></asp:BoundField>
                        <asp:BoundField DataField="PrimerApellido" HeaderText="Primer Apellido"></asp:BoundField>
                        <asp:BoundField DataField="SegundoApellido" HeaderText="Segundo Apellido"></asp:BoundField>
                        <asp:BoundField DataField="Correo" HeaderText="Correo"></asp:BoundField>
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono"></asp:BoundField>
                        <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha de Nacimiento" DataFormatString="{0:yyyy-MM-dd}"></asp:BoundField>
                        <asp:BoundField DataField="Curp" HeaderText="Curp"></asp:BoundField>
                        <asp:BoundField DataField="Sueldo" HeaderText="Sueldo"></asp:BoundField>
                        <asp:BoundField DataField="IdEstadoOrigen" HeaderText="Estado"></asp:BoundField>
                        <asp:BoundField DataField="IdEstatus" HeaderText="Estatus"></asp:BoundField>
                       

                        <asp:ButtonField CommandName="BtnDetails" Text="Detalles">
                        <ControlStyle CssClass="btn btn-warning" />
                        </asp:ButtonField>
                        <asp:ButtonField CommandName="btnEdit" Text="Editar" >
                        <ControlStyle CssClass="btn btn-success" />
                        </asp:ButtonField>
                        <asp:ButtonField CommandName="btnDelete" Text="Eliminar" >
                       

                        <ControlStyle CssClass="btn btn-danger btn-long" />
                        </asp:ButtonField>
                       

                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </div>
    <br />

    <div>
        <div>
        </div>
    </div>

</asp:Content>
