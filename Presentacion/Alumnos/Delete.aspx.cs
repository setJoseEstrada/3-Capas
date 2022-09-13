using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.Alumnos
{
    public partial class Delete : System.Web.UI.Page
    {
        NAlumno aDO = new NAlumno();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);

                if (id != 0)
                {

                    this.lblIDAlumno.Text = id.ToString();


                    


                    Alumno estatus = aDO.Consultar(id);

                    this.lblIDAlumno.Text= estatus.Id.ToString();
                    this.lblNombre.Text=estatus.Nombre;
                    this.lblprimerApellido.Text = estatus.PrimerApellido;
                    this.lblsegundpApellido.Text = estatus.SegundoApellido;
                    this.lblFechaNacimiento.Text = estatus.FechaNacimiento.ToString();
                    this.lblCorreo.Text = estatus.Correo;
                    this.lblCorreo.Text = estatus.Correo;
                    this.lblTelefono.Text=estatus.Telefono.ToString();
                    this.lblSueldo.Text=estatus.Sueldo.ToString();
                    this.lblEstado.Text = estatus.IdEstadoOrigen.ToString();
                    this.lblEstatus.Text = estatus.IdEstatus.ToString();



                }

            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            aDO.Eliminar(id);
        }
    }
}