using Datos;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using Negocio;
using System.ServiceModel.Configuration;
using System.Runtime.Serialization.Json;
using Newtonsoft.Json;

namespace Negocio
{
    public class NAlumno
    {



        DAlumno DAlumno = new DAlumno();    ///////////////////////////////Instancio a la capa de datos

        public NAlumno()
        {
        }

        public List<Alumno> ConsultarTodos()
        {
            return DAlumno.Consultar();

        }

        public Alumno Consultar(int id)
        {
            return DAlumno.Consultar(id);
        }

        public void Agregar(Alumno alumno)
        {
            DAlumno.Agregar(alumno);
        }
        public void Actualizar(Alumno alumno)
        {
            DAlumno.Actualizar(alumno);
        }
        public void Eliminar(int id)
        {
            DAlumno.Eliminar(id);
        }

        public ItemTablaISR CalcularISR(int id)
        {


            try
            {
                Negocio.WebService.wsAlumnosSoapClient service = new Negocio.WebService.wsAlumnosSoapClient();
                WebService.ItemTablaISR item = service.CalcularISR(id);
                string jason = JsonConvert.SerializeObject(item);
                return JsonConvert.DeserializeObject<ItemTablaISR>(jason);  
            }
            catch (Exception)
            {
                List<ItemTablaISR> nuevo1 = DAlumno.ConsultarTablaISR(id); // mando a llamar mi metodo en una lista para RECORRER SUS VALORES
                DAlumno.Consultar(id);
                Alumno alumno = Consultar(id);
                decimal quincenal = alumno.Sueldo / 2;
                //Realizar el calculo en esta seccion de negocios
                ItemTablaISR nuevo = new ItemTablaISR();

                var alumnos = from Alumno in nuevo1
                              where quincenal > Alumno.LimiteInferior
                               && quincenal < Alumno.LimiteSuperior
                              select Alumno; //Utilizo Linq para buscar los valores que necesito

                foreach (var item in alumnos)
                {

                    nuevo.LimiteInferior = item.LimiteInferior;
                    nuevo.LimiteSuperior = item.LimiteSuperior;
                    nuevo.CuotaFija = item.CuotaFija;
                    nuevo.Excedente = item.Excedente;
                    nuevo.Subsidio = item.Subsidio;
                    decimal Excedente = (quincenal - nuevo.LimiteInferior) * (nuevo.Excedente / 100);
                    nuevo.ISR = Excedente + nuevo.CuotaFija - nuevo.Subsidio;
                    break;
                }

                return nuevo;

            }

         

        }

        public AportacionesIMSS CalcularIMSS(int id)
        {


            return DAlumno.CalcularIMSS(id);


        }

    }
}
