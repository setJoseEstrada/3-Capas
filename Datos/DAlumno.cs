using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;
using System.Net.NetworkInformation;
using System.IO;
using System.Runtime.InteropServices.WindowsRuntime;

namespace Datos
{
    public class DAlumno
    {
        string _ccnString = ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString;
        List<Alumno> _ListAlunno = new List<Alumno>();
        Alumno alumno = new Alumno();
        SqlCommand command;
        string query;


        public DAlumno()
        {
        }
       public List<Alumno> Consultar() 
        {
            query = $"ConsultarAlumnos";
            using (SqlConnection con = new SqlConnection(_ccnString))
            {
                command = new SqlCommand(query, con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@id", alumno.Id);
                con.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    _ListAlunno.Add(
                        new Alumno()
                        {
                            Id = Convert.ToInt32(reader["id"]),
                            Nombre= reader["nombre"].ToString(),
                            PrimerApellido = reader["primerApellido"].ToString(),
                            SegundoApellido = reader["segundoApellido"].ToString(),
                            Correo = reader["correo"].ToString(),
                            Telefono =reader["telefono"].ToString(),
                            FechaNacimiento = Convert.ToDateTime(reader["fechaNacimiento"]),
                            Curp = reader["curp"].ToString(),
                            Sueldo= DBNull.Value.Equals(reader["sueldo"]) ? 0 : Convert.ToDecimal(reader["sueldo"]),
                            IdEstadoOrigen = Convert.ToInt32(reader["IdEstadoOrigen"]),
                            IdEstatus = Convert.ToInt16(reader["IdEstatus"])
                        }
                        ) ;
                }con.Close();
            }

                return _ListAlunno;
        }
        public Alumno Consultar(int id)
        {
            query = $"ConsultarAlumnos";
            using (SqlConnection con = new SqlConnection(_ccnString))
            {
                command = new SqlCommand(query, con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@id", id);
                con.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {

                    alumno = new Alumno()
                    {
                        Id = Convert.ToInt32(reader["id"]),
                        Nombre = reader["Nombre"].ToString(),
                        PrimerApellido = reader["primerApellido"].ToString(),
                        SegundoApellido = reader["segundoApellido"].ToString(),
                        Correo = reader["correo"].ToString(),
                        Telefono = reader["Telefono"].ToString(),
                        FechaNacimiento = Convert.ToDateTime(reader["fechaNacimiento"]),
                        Curp = reader["curp"].ToString(),
                        Sueldo = DBNull.Value.Equals(reader["sueldo"]) ? 0 : Convert.ToDecimal(reader["sueldo"]),
                        IdEstadoOrigen = Convert.ToInt32(reader["IdEstadoOrigen"]),
                        IdEstatus = Convert.ToInt16(reader["IdEstatus"])
                    };
                        
                }
                con.Close();
            }

            return alumno;
        }
        public void Agregar(Alumno alumno)
        {
            query = $"AgregarAlumnos";
            using (SqlConnection con = new SqlConnection(_ccnString))
            {
                command= new SqlCommand(query, con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@nombre",alumno.Nombre);
                command.Parameters.AddWithValue("@primerApellido",alumno.PrimerApellido);
                command.Parameters.AddWithValue("segundoApellido",alumno.SegundoApellido);
                command.Parameters.AddWithValue("@correo",alumno.Correo);
                command.Parameters.AddWithValue("@telefono",alumno.Telefono);
                command.Parameters.AddWithValue("@fechaNacimiento",alumno.FechaNacimiento);
                command.Parameters.AddWithValue("@curp",alumno.Curp);
                command.Parameters.AddWithValue("@sueldo",alumno.Sueldo);
                command.Parameters.AddWithValue("@idEstadoOrigen",alumno.IdEstadoOrigen);
                command.Parameters.AddWithValue("@idEstatus",alumno.IdEstatus);
                con.Open();
                command.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Actualizar(Alumno alumno)
        {
            query = $"actualizarAlumnos";
            using (SqlConnection con= new SqlConnection(_ccnString))
            {
                command = new SqlCommand(query,con);
                command.CommandType = CommandType.StoredProcedure;
                
                command.Parameters.AddWithValue("@id", alumno.Id);
                command.Parameters.AddWithValue("@nombre", alumno.Nombre);
                command.Parameters.AddWithValue("@primerApellido", alumno.PrimerApellido);
                command.Parameters.AddWithValue("segundoApellido", alumno.SegundoApellido);
                command.Parameters.AddWithValue("@correo", alumno.Correo);
                command.Parameters.AddWithValue("@telefono", alumno.Telefono);
                command.Parameters.AddWithValue("@fechaNacimiento", alumno.FechaNacimiento);
                command.Parameters.AddWithValue("@curp", alumno.Curp);
                command.Parameters.AddWithValue("@sueldo", alumno.Sueldo);
                command.Parameters.AddWithValue("@idEstadoOrigen", alumno.IdEstadoOrigen);
                command.Parameters.AddWithValue("@idEstatus", alumno.IdEstatus);
                con.Open();
                command.ExecuteNonQuery();
                con.Close();
            }
        }
        public void Eliminar(int id)
        {
            query = $"eliminarAlumno";
            using (SqlConnection con = new SqlConnection (_ccnString))
            {
                command= new SqlCommand(query, con);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@id",alumno.Id);
                con.Open();
                command.ExecuteNonQuery();
                con.Close();
            }
        }

     

        public List<ItemTablaISR> ConsultarTablaISR(int id)
        {
            List<ItemTablaISR> list= new List<ItemTablaISR> ();
          
            string[] line = File.ReadAllLines(@"C:\Users\toro0\OneDrive\Escritorio\TablaISR.csv");

            

            foreach (var item in line)
            {
                ItemTablaISR isr = new ItemTablaISR();
                string[] cadena = item.Split(';');

                isr.LimiteInferior = Convert.ToDecimal(cadena[0]);
                isr.LimiteSuperior = Convert.ToDecimal(cadena[1]);
                isr.CuotaFija = Convert.ToDecimal(cadena[2]);
                isr.Excedente = Convert.ToDecimal(cadena[3]);
                isr.Subsidio = Convert.ToDecimal(cadena[4]);

                list.Add(isr);
            }


           
            // var alumnos = from Alumno in list where quincenal>Alumno.LimiteInferior 
            //               && quincenal< Alumno.LimiteSuperior select Alumno; //Utilizo Linq para buscar los valores que necesito

            //foreach (var item in alumnos)
            //{

            //}
          
            
            return list;

        }

        public AportacionesIMSS CalcularIMSS (int id)
        {
            AportacionesIMSS aportaciones = new AportacionesIMSS();

            Alumno alumno = Consultar(id);

            decimal sueldo = alumno.Sueldo;
            decimal uma = Convert.ToDecimal(ConfigurationManager.AppSettings["UMA"]);

            aportaciones.EnfermedadMaternal = Convert.ToDecimal(sueldo-(uma*3))*(0.4m/100);
            aportaciones.InvalidezVida = sueldo * (0.625m/100);
            aportaciones.Retiro = sueldo * (0/100);
            aportaciones.CesantiaP = sueldo * (1.125m/100);
            aportaciones.Infonavit = (sueldo*(0/100));





            return aportaciones;
        }
    }
}
