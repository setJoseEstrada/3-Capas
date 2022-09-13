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
using Datos;

namespace Negocio
{
    public class NEstatusAlumno
    {
        DEstatusAlumno estatus = new DEstatusAlumno();
        public NEstatusAlumno()
        {
        }
  
        public List<EstatusAlumno> Consultar()
        {
            return estatus.Consultar();  
        }
    }
}
