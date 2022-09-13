<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Presentacion.Alumnos.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


      
       <div>
    <h2>Actualizar Alumno</h2>
	<!-- Control asp Label para mensajes -->		
    <hr />
    <div>
		<!-- Par de label html - Control asp por cada propiedad -->
        <label for="idControl">Actualizar.aspx</label>
        <div>
            <!-- Control asp para mostrar/Introducir valor de la propiedad -->
        </div>
    </div>

    <div>
    

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>   </b>
            <asp:TextBox  class="form-control" ID="txtNombre" runat="server"></asp:TextBox>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label4" runat="server" Text="Primer Apelldido"></asp:Label></b>  
            <asp:TextBox ID="txtPrimerApellido"   class="form-control" runat="server"></asp:TextBox>

        </div>
        <div>
         <b> <asp:Label ID="Label1" runat="server" Text="Segundo Apellido"></asp:Label>  

         </b> <asp:TextBox  class="form-control" ID="txtSegundoApellido" runat="server"></asp:TextBox>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label3" runat="server" Text="Correo"></asp:Label></b> 
            <asp:TextBox ID="txtCorreo"   class="form-control" runat="server"></asp:TextBox>
            </div>
          
        <div>
            <b> <asp:Label ID="Label5" runat="server" Text="Telefono"></asp:Label>  

            </b> <asp:TextBox  class="form-control" ID="txtTelefono" runat="server"></asp:TextBox>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label6" runat="server" Text="Fecha de Nacimiento"></asp:Label></b> 
            <asp:TextBox TextMode="Date" ID="txtFechaNacimiento" class="form-control" runat="server"></asp:TextBox>
            </div>
        <div>
            <asp:CustomValidator ID="cvFecha" runat="server" ErrorMessage="La fecha y la Curp no coinciden" CssClass="text-danger" ControlToValidate="txtFechaNacimiento" OnServerValidate="cvFecha_ServerValidate"></asp:CustomValidator></div>
        <div>
     <b> <asp:Label ID="Label7" runat="server" Text="Crup"></asp:Label>   

     </b> <asp:TextBox  class="form-control" ID="txtCurp" runat="server"></asp:TextBox>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label8" runat="server" Text="Sueldo"></asp:Label></b>  
            <asp:TextBox ID="txtSueldo"   class="form-control" runat="server"></asp:TextBox>

            </div>
        <div>
     <b> <asp:Label ID="Label9" runat="server" Text="Id Estado Origen"></asp:Label>  

         <asp:DropDownList ID="DropIdEstadoOrigen" runat="server"></asp:DropDownList>
    </div>
        

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label10" runat="server" Text="id Estatus"></asp:Label></b> 
            <asp:DropDownList ID="DropIdEstatus" runat="server"></asp:DropDownList>

            </div>

        <div>
       <br /> <div> <asp:Button runat="server"  class="btn btn-secondary" type="button" Text="Guardar" OnClick="Unnamed1_Click"  /> </div>
    </div>
    



    <div>
        <div>
           <br /> <a href="Index.aspx">Regresar a la Lista</a>
        </div>
    </div>        
</div>




</asp:Content>
