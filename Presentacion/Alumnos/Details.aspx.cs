using Entidades;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Presentacion.Alumnos
{
    public partial class Details : System.Web.UI.Page
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
                    this.lblIDAlumno.Text = id.ToString();
                   
                    this.lblNombre.Text = estatus.Nombre;
                    this.lblprimerApellido.Text = estatus.PrimerApellido;
                    this.lblsegundpApellido.Text = estatus.SegundoApellido;
                    this.lblFechaNacimiento.Text = estatus.FechaNacimiento.ToString();
                    this.lblCurp.Text = estatus.Curp;
                    this.lblCorreo.Text = estatus.Correo;
                    this.lblTelefono.Text = estatus.Telefono.ToString();
                    this.lblSueldo.Text = estatus.Sueldo.ToString();
                    this.lblEstado.Text = estatus.IdEstadoOrigen.ToString();
                    this.lblEstatus.Text = estatus.IdEstatus.ToString();


                }

            }
        }

        protected void btnIMSS_Click(object sender, EventArgs e)
        {
            NAlumno nAlumno = new NAlumno();

           
            int id = Convert.ToInt32(Request.QueryString["id"]);

           


             AportacionesIMSS aportaciones = nAlumno.CalcularIMSS(id);

            this.lblEnfermedades.Text = aportaciones.EnfermedadMaternal.ToString();
            this.lblInvalidez.Text = aportaciones.InvalidezVida.ToString();
            this.Label7.Text = aportaciones.Retiro.ToString();
            this.lblCesantia.Text = aportaciones.CesantiaP.ToString();
            this.Label11.Text = aportaciones.Infonavit.ToString();

         




        }

       

        protected void btnISR_Click(object sender, EventArgs e)
        {
            NAlumno alumno = new NAlumno();
            int id = Convert.ToInt32(Request.QueryString["id"]);
            ItemTablaISR item = alumno.CalcularISR(id);


            this.lblLimInf.Text = item.LimiteInferior.ToString();
            this.lblLimSup.Text = item.LimiteSuperior.ToString();
            this.lblCuotaFija.Text = item.CuotaFija.ToString();
            this.lblExcedente.Text = item.Excedente.ToString();
            this.lblSubsidio.Text = item.Subsidio.ToString();
            this.Label13.Text = item.ISR.ToString();
            //this.lblLimiteInferior.Text = item.LimiteInferior.ToString();
            //this.lblLimiteSuperior.Text = item.LimiteSuperior.ToString();
            //this.lblCuota.Text= item.CuotaFija.ToString();
            //this.lblExce3dente.Text = item.Excedente.ToString();
            //this.lblimpuesto.Text = item.ISR.ToString();

            mpeModalISR.Show();

        }
    }
}

