using Entidades;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Datos
{
    public class DEstados
    {
        string _ccnString = ConfigurationManager.ConnectionStrings["LocalConnection"].ConnectionString;
        List<Estado> _listEstatus = new List<Estado>();
        Estado estatus = new Estado();
        SqlCommand command;
        string query;
        public List<Estado> Consultar()
        {
            query = $"ConsultarEstados";
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
                        new Estado()
                        {
                            Id = Convert.ToInt32(reader["id"]),
                            Nombre = reader["nombre"].ToString()

                        }
                        );
                }
                con.Close();
            }
            return _listEstatus;
        }
    }
}
