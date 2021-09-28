using SistemaTurismoRea.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaTurismoReal.BLL
{
    public class DepartamentoBLL
    {
        public string Id { get; set; }
        public string Direccion { get; set; }
        public string Comuna { get; set; }
        public string Provincia { get; set; }
        public string Region { get; set; }
        public string Habitaciones { get; set; }
        public string Baños { get; set; }
        public string Valor_Dia { get; set; }

        public DataTable Departamentos(int id_region, int id_provincia, int id_comuna)
        {
            DepartamentoDAL registros = new DepartamentoDAL();

            DataTable registrosDeptos = registros.Departamentos(id_region, id_provincia, id_comuna);

            return registrosDeptos;
        }

        public bool BuscarDepartamento(int codigo)
        {
            DepartamentoDAL busqueda = new DepartamentoDAL();

            if (busqueda.DetalleDepartamento(codigo) == true)
            {
                Id = busqueda.Id;
                Direccion = busqueda.Direccion;
                Comuna = busqueda.Comuna;
                Provincia = busqueda.Provincia;
                Region = busqueda.Region;
                Habitaciones = busqueda.Habitaciones;
                Baños = busqueda.Baños;
                Valor_Dia = busqueda.Valor_Dia;
            }
            return true;
        }
    }
}
