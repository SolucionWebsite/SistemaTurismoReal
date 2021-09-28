using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaTurismoRea.DAL;

namespace SistemaTurismoReal.BLL
{
    public class ClienteBLL
    {
        public DataSet Nacionalidad()
        {
            ClienteDAL registros = new ClienteDAL();

            DataSet registrosNacionalidad = registros.Nacionalidad();

            return registrosNacionalidad;
        }
    }

}
