<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="Presentacion.Alumnos.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
    <asp:Label ID="lblHidden" runat="server" Text=""></asp:Label>
    <ajaxToolkit:ModalPopupExtender ID="mpeModalISR" runat="server" TargetControlID="lblHidden" PopupControlID="venModalSrvISR" DropShadow="true" BackgroundCssClass="modalBackground"></ajaxToolkit:ModalPopupExtender>
  
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
           
             <asp:Label ID="lblRetiro" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label6" runat="server" Text="Fecha de Nacimiento"></asp:Label> </b> 
            <asp:Label ID="lblFechaNacimiento" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblEnfermedadMaternal" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblCesantiaP" runat="server" Text=""></asp:Label>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label ID="Label8" runat="server" Text="CURP"></asp:Label></b> 
            <asp:Label ID="lblCurp" runat="server" Text=""></asp:Label>
            <asp:Label ID="lblInvalidezVida" runat="server" Text=""></asp:Label>
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
           <%--<asp:Button ID="btnIMSS" runat="server" Text="CalcularIMSS" OnClick="btnIMSS_Click" />--%>   
           
             <input type="button"  value ="CalcularIMSS"  OnClick=" CalcularIMSS()"/>
           <%-- <button type="button" OnClick=" LLamaAJAXPost(url, parametros,funcionExito)">Guardar</button>--%>
            <asp:Button ID="btnISR" runat="server" Text="CalcularISR" OnClick="btnISR_Click" />
        </div>

    <div>
        <div>
            <a href="Index.aspx">Regresar a la Lista</a>
        </div>
    </div>        
</div>


            <%--Ventana Modal IMSS - Servidor--%>
  <div class="modal" id="venModalclienteIMSS">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Cálculo del IMSS</h4>
                    <asp:Button ID="btnX" runat="server" Text="&times;" class="close"  />
                </div>
                <!-- Cuerpo de la Modal -->
                <div class="modal-body">
                    <dl>
                        <dt>Enfermedades y Maternidad</dt>
                        <dd>
                            <asp:Label ID="lblEnfermedades" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt>Invalidez y Vida</dt>
                        <dd>
                            <asp:Label ID="lblInvalidez" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt>Retiro</dt>
                        <dd>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </dd>

                        <dt>Cesantia</dt>
                        <dd>
                            <asp:Label ID="lblCesantia" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt>Infonavit</dt>
                        <dd>
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </dd>

                    </dl>

                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>

    </div>

           











      <%--Ventana Modal IMSS - Servidor--%>
  <div id="venModalSrvISR">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Cálculo del ISR</h4>
                    <asp:Button ID="btnXISR" runat="server" Text="&times;" class="close" />
                </div>
                <!-- Cuerpo de la Modal -->
                <div class="modal-body">
                    <dl>
                        <dt>Limite Inferior</dt>
                        <dd>
                            <asp:Label ID="lblLimInf" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt>Limite Superior</dt>
                        <dd>
                            <asp:Label ID="lblLimSup" runat="server" Text="Label"></asp:Label>
                        </dd>

                        <dt>Cuota Fija</dt>
                        <dd>
                            <asp:Label ID="lblCuotaFija" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt>Excedente Limite Inferior</dt>
                        <dd>
                            <asp:Label ID="lblExcedente" runat="server" Text="Label"></asp:Label>
                        </dd>

                        <dt>Subsidio</dt>
                        <dd>
                            <asp:Label ID="lblSubsidio" runat="server" Text="Label"></asp:Label>
                        </dd>
                        <dt>Impuesto</dt>
                        <dd>
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                        </dd>

                    </dl>

                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <asp:Button ID="btnCerrarISR" runat="server" Text="Cerrar" CssClass="btn btn-danger"  />
                </div>
            </div>
        </div>

    </div>



    <script type="text/javascript">
        function CalcularIMSS() {
            var urlws = 'https://localhost:44338/wsAlumnos.asmx/CalcularIMSS';
            var id = $("#<%=lblIDAlumno.ClientID%>").text();
            var alumno = { id: id};
            var parametros = JSON.stringify(alumno);
            LLamaAJAXPost(urlws, parametros, MuestraAportacionesIMSS);
           

        }
        function LLamaAJAXPost(url, parametros,funcionExito) {
            $.ajax(
            {
                type: 'POST',
                url: url,
                data: parametros,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: funcionExito,
                error: errorGenerico
                }
            );

        }

        function MuestraAportacionesIMSS(data) {
            try {
                imss = data.d;
                if (imss != null) {
                    $("#<%= lblEnfermedades.ClientID%>").text(imss.EnfermedadMaternal);
                    $("#<%= lblInvalidez.ClientID%>").text(imss.InvalidezVida);
                    $("#<%= Label7.ClientID%>").text(imss.Retiro);
                    $("#<%= lblCesantia.ClientID%>").text(imss.CesantiaP);
                    $("#<%= Label11.ClientID%>").text(imss.Infonavit);
                    $("#venModalclienteIMSS").modal();
                }
                else {
                    alert('La respuesta recibida del Web Service es incorrecta ' + data.d);
                }
            }
            catch (ex) {
                alumno = [];
                alert('Error al recibir los datos');
            }
        }



        function errorGenerico(jqXHR, exception) {
            var msg = '';
            if (jqXHR.status === 0) {
                msg = 'No está conectado, favor de verificar su conexión.';
            }
            else if (jqXHR.status === 404) {
                msg = 'Página no encontrada [404]';
            }
            else if (jqXHR.status === 500) {
                msg = 'Error no hay conexión al servidor [500]';
            }
            else if (jqXHR.status === 'parseerror') {
                msg = 'El parseo del JSON es erróneo.';
            }
            else if (jqXHR.status === 'timeout') {
                $('body').addClass('loaded');
            }
            else if (jqXHR.status === 'abort') {
                msg = 'La petición Ajax fue abortada.';
            }
            else {
                msg = 'Error no conocido. ';
                console.log(exception);
            }
            alert(msg);
        }

    </script>
      </div>
</asp:Content>
