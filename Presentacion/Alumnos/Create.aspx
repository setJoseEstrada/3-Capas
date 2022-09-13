﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Presentacion.Alumnos.Create" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
       <div>
    <h2>Agregar</h2>
	<!-- Control asp Label para mensajes -->		
    <hr />
    <div>
		<!-- Par de label html - Control asp por cada propiedad -->
        <label for="idControl">Agregar.aspx</label>
        <div>
            <!-- Control asp para mostrar/Introducir valor de la propiedad -->
        </div>
   
        

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label
               ID="Label2" 
               runat="server" 
               Text="Nombre">

               </asp:Label>   </b>
            <asp:TextBox  
                class="form-control" 
                ID="txtNombre" 
                runat="server">

            </asp:TextBox>

        </div>
         </div>
           <asp:RequiredFieldValidator
               ID="RequiredFieldValidator5" 
               runat="server"
               ControlToValidate="txtNombre"
               ErrorMessage="Valor Requerido" CssClass="text-danger">

           </asp:RequiredFieldValidator>
        
    <div>
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" 
            runat="server"
            ControlToValidate="txtNombre"
            
            ErrorMessage="Solo Numeros" CssClass="text-danger" 
            ValidationExpression="[A-Z a-z]">

        </asp:RegularExpressionValidator>
        <div>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label 
               ID="Label4" 
               runat="server" 
               Text="Primer Apelldido">

               </asp:Label></b>  
            <asp:TextBox 
                ID="txtPrimerApellido"  
                class="form-control"
                runat="server">

            </asp:TextBox>

        </div>
        <asp:RequiredFieldValidator
            
            ID="RequiredFieldValidator1"
            runat="server" 
            ErrorMessage="El campo Primer Apellido es Requerido"
            ControlToValidate="txtPrimerApellido" CssClass="text-danger">

        </asp:RequiredFieldValidator>
        <div>
         <b> <asp:Label 
             ID="Label1" 
             runat="server" 
             Text="Segundo Apellido">

             </asp:Label>  

         </b> <asp:TextBox 
             class="form-control"
             ID="txtSegundoApellido"
             runat="server">

              </asp:TextBox>

        </div>
                
        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label 
               ID="Label3" 
               runat="server" 
               Text="Correo">

               </asp:Label></b> 
            <asp:TextBox
                ID="txtCorreo" 
                class="form-control" 
                runat="server">

            </asp:TextBox>
            </div>
           <asp:RequiredFieldValidator
            
            ID="RequiredFieldValidator4"
            runat="server" 
            ErrorMessage="El campo Correo es Requerido"
            ControlToValidate="txtCorreo" CssClass="text-danger">

        </asp:RequiredFieldValidator>
        <div>
            <b> <asp:Label
                ID="Label5" 
                runat="server"
                Text="Telefono">

                </asp:Label>  

            </b> <asp:TextBox 
                class="form-control"
                ID="txtTelefono"
                runat="server">

                 </asp:TextBox>

        </div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label 
               ID="Label6" 
               runat="server" 
               Text="Fecha de Nacimiento">

               </asp:Label></b> 
             <asp:TextBox 
                 ID="txtfecha"
                 runat="server" 
                 TextMode="Date" 
                 Width="227px">

             </asp:TextBox>
            
            </div>
        <asp:RequiredFieldValidator
            
            ID="RequiredFieldValidator2"
            runat="server" 
            ErrorMessage="El campo Fecha de Nacimiento es Requerido"
            ControlToValidate="txtfecha" CssClass="text-danger">

        </asp:RequiredFieldValidator>
        <div>
            <asp:RangeValidator 
                ID="RvFecha" 
                runat="server" 
                ErrorMessage="La fecha debe de estar entre 01-01-1998 y 31-12-2000" 
                ControlToValidate="txtfecha"
                CssClass="text-warning"
                Type="Date"
                MaximumValue="31-12-2000" 
                MinimumValue="01-01-98">

            </asp:RangeValidator></div>
        <div>
     <b> <asp:Label 
         ID="Label7" 
         runat="server" 
         Text="Crup">

         </asp:Label>   

     </b> <asp:TextBox  
         class="form-control"
         ID="txtCurp"
         runat="server">

          </asp:TextBox>
           
        </div>
        <div>
             <asp:RequiredFieldValidator
            
            ID="RequiredFieldValidator3"
            runat="server" 
            ErrorMessage="El campo Curp es Requerido"
            ControlToValidate="txtCurp" CssClass="text-danger">

        </asp:RequiredFieldValidator>
            <asp:CustomValidator
                ID="CvFechatoCurp" 
                runat="server"
                ErrorMessage="La fecha no coincide con la Curp" 
                ControlToValidate="txtfecha">

            </asp:CustomValidator>
           <%--<asp:RegularExpressionValidator ID="ValidacionCurp" runat="server" ErrorMessage="El formato no es el requerido"></asp:RegularExpressionValidator>--%></div>

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label 
               ID="Label8" 
               runat="server" 
               Text="Sueldo">

               </asp:Label></b>  
            <asp:TextBox 
                ID="txtSueldo" 
                class="form-control"
                runat="server">

            </asp:TextBox>

            </div>
        <div>
     <b> <asp:Label
         ID="Label9" 
         runat="server" 
         Text="Id Estado Origen">

         </asp:Label>  

         <asp:DropDownList
             ID="DropIdEstadoOrigen" 
             runat="server">

         </asp:DropDownList>
    </div>
        

        <div>
            <!-- Control asp Button para iniciar acción -->
           <b> <asp:Label 
               ID="Label10"
               runat="server" 
               Text="id Estatus">

               </asp:Label></b> 
            <asp:DropDownList
                ID="DropIdEstatus" 
                runat="server">

            </asp:DropDownList>

            </div>

        <div>
       <br /> <div> <asp:Button 
           runat="server" 
           class="btn btn-secondary"
           type="button" 
           Text="Guardar"
           OnClick="Unnamed1_Click1"   /> </div>
    </div>
    



    <div>
        <div>
           <br /> <a href="Index.aspx">Regresar a la Lista</a>
        </div>
    </div>        
</div>



           
       </div>
    <script type="text/javascript">

        //Creamos la funcion para el custom 

    </script>
</asp:Content>
