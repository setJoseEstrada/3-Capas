using Entidades;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Datos
{
    public class DEstatusAlumno
    {
        public DEstatusAlumno()
        {
        }
        string _ccnString = ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString;
        List<EstatusAlumno> _listEstatus = new List<EstatusAlumno>();
        EstatusAlumno estatus = new EstatusAlumno();
        SqlCommand command;
        string query;
    
        public List<EstatusAlumno> Consultar()
        {
            query = $"ConsultarEstatusAlumno";
            using (SqlConnection con = new SqlConnection(_ccnString))
            {
                command = new SqlCommand(query, con);

                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@id", estatus.Id);
                con.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    _listEstatus.Add(
                        new EstatusAlumno()
                        {
                            Id = Convert.ToInt32(reader["id"]),
                            Nombre = reader["nombre"].ToString(),
                           
                        }
                        );
                }
                con.Close();
            }
            return _listEstatus;
        }
    }
}
