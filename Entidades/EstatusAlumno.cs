using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class EstatusAlumno
    {
        public EstatusAlumno()
        {
        }
        public EstatusAlumno(int Id,string Clave,string Nombre)
        {
            this.Id = Id;
            this.Clave = Clave;
            this.Nombre = Nombre;
        }

        public int Id { get; set; }
        public string Clave { get; set; }
        public string Nombre { get; set; }
    }
}
