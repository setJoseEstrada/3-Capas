using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;



namespace Presentacion.Alumnos
{
    public partial class Create : System.Web.UI.Page
    {
      
       
    

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)


               
            {
                Alumno alumno = new Alumno(); ///propiedades
                NAlumno negocio = new NAlumno();
                NEstatusAlumno NEstatusAlumno = new NEstatusAlumno();


                NEstado metodo = new NEstado();
                NEstatusAlumno estatus = new NEstatusAlumno();
                    ;
                List<Estado> nEstados = metodo.Consultar();
                List<EstatusAlumno> estatuslist = estatus.Consultar();
                DropIdEstadoOrigen.DataValueField = "id";
                DropIdEstadoOrigen.DataTextField = "Nombre";
                DropIdEstadoOrigen.DataSource = nEstados;
                DropIdEstadoOrigen.DataBind();


                DropIdEstatus.DataValueField = "id";
                DropIdEstatus.DataTextField = "Nombre";
                DropIdEstatus.DataSource = estatuslist;
                DropIdEstatus.DataBind();

            }
        }


        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid){

                Alumno alumno = new Alumno(); ///propiedades

                NAlumno negocio = new NAlumno();
                NEstatusAlumno NEstatusAlumno = new NEstatusAlumno();


                alumno.Nombre = this.txtNombre.Text;
                alumno.PrimerApellido = this.txtPrimerApellido.Text;
                alumno.SegundoApellido = this.txtSegundoApellido.Text;
                alumno.FechaNacimiento = Convert.ToDateTime(this.txtfecha.Text);
                alumno.Curp = this.txtCurp.Text;
                alumno.Correo = this.txtCorreo.Text;
                alumno.Telefono = this.txtTelefono.Text;
                alumno.Sueldo = Convert.ToDecimal(this.txtSueldo.Text);
                alumno.IdEstadoOrigen = Convert.ToInt32(this.DropIdEstadoOrigen.SelectedValue);
                alumno.IdEstatus = Convert.ToInt16(this.DropIdEstatus.SelectedValue);
                negocio.Agregar(alumno);
                Response.Redirect("Index.aspx");


              
            }
    



        }
    }
}