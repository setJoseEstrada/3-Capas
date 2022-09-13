using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.Alumnos
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);

                if (id != 0)
                {

                    


                    NAlumno aDO = new NAlumno();


                    Alumno estatus = aDO.Consultar(id);
                    estatus.Id = id;
                    txtNombre.Text = estatus.Nombre;
                    txtPrimerApellido.Text = estatus.PrimerApellido;
                    txtSegundoApellido.Text = estatus.SegundoApellido;
                    txtCorreo.Text = estatus.Correo;
                    txtTelefono.Text = estatus.Telefono;
                    txtFechaNacimiento.Text = estatus.FechaNacimiento.ToString();
                    txtCurp.Text = estatus.Curp;
                    txtSueldo.Text = estatus.Sueldo.ToString();


                  



                }

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Alumno alumno  = new Alumno();
            NAlumno  negocio = new NAlumno();   
            alumno.Id = Convert.ToInt32(Request.QueryString["Id"]);

            alumno.Nombre = txtNombre.Text;
            alumno.PrimerApellido = txtPrimerApellido.Text;
            alumno.SegundoApellido = txtSegundoApellido.Text;
            alumno.FechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);
            alumno.Curp = txtCurp.Text;
            alumno.Correo = txtCorreo.Text;
            alumno.Telefono = txtTelefono.Text;
            alumno.Sueldo = Convert.ToInt32(txtSueldo.Text);
            alumno.IdEstadoOrigen = Convert.ToInt32(DropIdEstadoOrigen.SelectedValue);
            alumno.IdEstatus = Convert.ToInt16(DropIdEstatus.SelectedValue);




            negocio.Agregar(alumno);
            Response.Redirect($"Index.aspx");
        }

        protected void cvFecha_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //hacer mi validacion del lado del servidor con substring 
            var fechaNac = args.Value;
            //var excurp; 
            //var fechaNacFormatCurp
          //  args.IsValid = ExtracCurpFecha == fechaNac;//comparacion es un booleano

        }
    }
}