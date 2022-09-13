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
    public partial class Index : System.Web.UI.Page
    {
        NAlumno alumno = new NAlumno();
        public void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GridAlumnos.DataSource = alumno.ConsultarTodos();
                GridAlumnos.DataBind();
            }

          


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridAlumnos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //todos los datos y todas las propiedades
            if(e.CommandName == "Page")//se sale del switch porque genera un page al cambiar la pagina
            {
                return;
            }
            int NumRenglon = Convert.ToInt32(e.CommandArgument); //NOS DA LA FILA  
            GridViewRow Renglon = GridAlumnos.Rows[NumRenglon]; //nos obtiene el renglon
            TableCell celda = Renglon.Cells[0]; // obtenemos la fila y la posicion

            int d = Convert.ToInt32(celda.Text);

            //e.CommandName
            switch (e.CommandName)
            {
                case "BtnDetails":
                    Response.Redirect($"Details.aspx?Id={d}");
                    break;
                case "btnEdit":
                    Response.Redirect($"Edit.aspx?Id={d}");
                    break;
                case "btnDelete":
                    Response.Redirect($"Delete.aspx?Id={d}");
                    break;


            }




        }

        protected void GridAlumnos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridAlumnos.PageIndex = e.NewPageIndex;  // obtiene el numero de pagina de e
            GridAlumnos.DataSource=alumno.ConsultarTodos();
            GridAlumnos.DataBind();
        }
    }
}