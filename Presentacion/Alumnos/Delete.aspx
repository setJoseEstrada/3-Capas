<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Presentacion.Alumnos.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


       <div>
    <h2>Eliminar Alumno</h2>
	<!-- Control asp Label para mensajes -->		
    <hr />
    <div>
		<!-- Par de label html - Control asp por cada propiedad -->
        <label for="idControl">Esta seguro que desea Eliminar al Alumno</label>
        <div>
            <!-- Control asp para mostrar/Introducir valor de la propiedad -->
        </div>
    </div>

    <div>
        <div>
            <!-- Control asp Button para iniciar acción -->
            <b><asp:Label ID="Label1" runat="server" Text="ID"> </asp:Label></b> 
            <asp:Label ID="lblIDAlumno" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label> </b> 
            <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label4" runat="server" Text="Primewr Apellido"></asp:Label></b> 
            <asp:Label ID="lblprimerApellido" runat="server" Text=""></asp:Label>

        </div>
         <div>
            <!-- Control asp Button para iniciar acción -->
            <b><asp:Label ID="Label3" runat="server" Text="Segundo Apellido"> </asp:Label></b> 
            <asp:Label ID="lblsegundpApellido" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label6" runat="server" Text="Fecha de Nacimiento"></asp:Label> </b> 
            <asp:Label ID="lblFechaNacimiento" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label8" runat="server" Text="CURP"></asp:Label></b> 
            <asp:Label ID="lblCurp" runat="server" Text=""></asp:Label>

        </div>
         <div>
            <!-- Control asp Button para iniciar acción -->
            <b><asp:Label ID="Label10" runat="server" Text="Correo"> </asp:Label></b> 
            <asp:Label ID="lblCorreo" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label12" runat="server" Text="Telefono"></asp:Label> </b> 
            <asp:Label ID="lblTelefono" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label14" runat="server" Text="Sueldo Mensual"></asp:Label></b> 
            <asp:Label ID="lblSueldo" runat="server" Text=""></asp:Label>

        </div>
          <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label5" runat="server" Text="Estado"></asp:Label> </b> 
            <asp:Label ID="lblEstado" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label9" runat="server" Text="Estatus"></asp:Label></b> 
            <asp:Label ID="lblEstatus" runat="server" Text=""></asp:Label>

        
    </div>

        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />


    <div>
        <div>
            <a href="Index.aspx">regresar a la lista</a>
        </div>
    </div>        
</div>




</asp:Content>
