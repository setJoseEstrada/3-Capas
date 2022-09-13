using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Estado
    {
        public Estado()
        {
        }
        public Estado(int Id,string Nombre,string Curp)
        {
            this.Id = Id;
            this.Nombre = Nombre;
            this.Curp = Curp;
        }

        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Curp { get; set; }
    }
}
