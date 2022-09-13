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
        Alumno alumno = new Alumno(); ///propiedades
       

        NAlumno negocio = new NAlumno(); /// metodos
        NEstado estado = new NEstado();
        NEstatusAlumno  NEstatusAlumno = new NEstatusAlumno();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             

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
                alumno.Nombre = txtNombre.Text;
                alumno.PrimerApellido = txtPrimerApellido.Text;
                alumno.SegundoApellido = txtSegundoApellido.Text;
                alumno.FechaNacimiento = Convert.ToDateTime(txtfecha.Text);
                alumno.Curp = txtCurp.Text;
                alumno.Correo = txtCorreo.Text;
                alumno.Telefono = txtTelefono.Text;
                alumno.Sueldo = Convert.ToInt32(txtSueldo.Text);
                alumno.IdEstadoOrigen = Convert.ToInt32(DropIdEstadoOrigen.SelectedValue);
                alumno.IdEstatus = Convert.ToInt16(DropIdEstatus.SelectedValue);

                Response.Redirect("Index.aspx");


                negocio.Agregar(alumno);
            }
    



        }
    }
}