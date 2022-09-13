using Entidades;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Negocio
{
    public class NEstado
    {
        DEstados estados = new DEstados();
        public NEstado()
        {
        }
       
        public List<Estado> Consultar()
        {
            return estados.Consultar();
            
        }
    }
}
