<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Presentacion.Alumnos.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


      <div>
    <h2>Details</h2>
	<!-- Control asp Label para mensajes -->		
    <hr />
    <div>
		<!-- Par de label html - Control asp por cada propiedad -->
        <label for="idControl">Details.aspx</label>
        <div>
            <!-- Control asp para mostrar/Introducir valor de la propiedad -->
        </div>
    </div>

    <div>
        <div>
            <!-- Control asp Button para iniciar acción -->
            <b><asp:Label ID="Label1" runat="server" Text="ID"> </asp:Label></b> 
            <asp:Label ID="lblIDAlumno" runat="server" Text=""></asp:Label>
            <p>Sueldo Quincenal</p>
            <asp:Label ID="lblquincenal" runat="server" Text="Label"></asp:Label> 
            <p>Limite Inferior</p>
            <asp:Label ID="lblLimiteInferior" runat="server" Text="Label"></asp:Label>
            <p>Limite Superior</p>
            <asp:Label ID="lblLimiteSuperior" runat="server" Text="Label"></asp:Label>
            <p>Cuota Fija</p>
            <asp:Label ID="lblCuota" runat="server" Text="Label"></asp:Label>
            <p>Porcentaje Excedente Limite Inferior</p>
            <asp:Label ID="lblporcentaje" runat="server" Text="Label"></asp:Label>
            <p>Excedente</p>\
            <asp:Label ID="lblExce3dente" runat="server" Text="Label"></asp:Label>
            <p>impuesto</p>
            <asp:Label ID="lblimpuesto" runat="server" Text="Label"></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label> </b> 
            <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label>
            <p>ENFERMEDAD MATERNAL</p>
            <asp:Label ID="lblEnfermedadMaternal" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label4" runat="server" Text="Primewr Apellido"></asp:Label></b> 
            <asp:Label ID="lblprimerApellido" runat="server" Text=""></asp:Label>
            <p>INFONAVID</p>
            <asp:Label ID="lblInvalidezVida" runat="server" Text=""></asp:Label>


        </div>
         <div>
            <!-- Control asp Button para iniciar acción -->
            <b><asp:Label ID="Label3" runat="server" Text="Segundo Apellido"> </asp:Label></b> 
            <asp:Label ID="lblsegundpApellido" runat="server" Text=""></asp:Label>
             <p>RETIRO</p>
             <asp:Label ID="lblRetiro" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label6" runat="server" Text="Fecha de Nacimiento"></asp:Label> </b> 
            <asp:Label ID="lblFechaNacimiento" runat="server" Text=""></asp:Label>
            <p>CESANTIA</p>
            <asp:Label ID="lblCesantiaP" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label8" runat="server" Text="CURP"></asp:Label></b> 
            <asp:Label ID="lblCurp" runat="server" Text=""></asp:Label>
            <p>INFONAVID</p>
            <asp:Label ID="lblInfonavit" runat="server" Text=""></asp:Label>

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


        <div>
            <asp:Button ID="btnIMSS" runat="server" Text="CalcularIMSS" OnClick="btnIMSS_Click" />   
            <asp:Button ID="btnISR" runat="server" Text="CalcularISR" OnClick="btnISR_Click" />
        </div>

    <div>
        <div>
            <a href="Index.aspx">Regresar a la Lista</a>
        </div>
    </div>        
</div>



</asp:Content>
