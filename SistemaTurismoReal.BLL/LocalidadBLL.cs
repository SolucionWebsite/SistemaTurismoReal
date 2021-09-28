using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaTurismoRea.DAL;

namespace SistemaTurismoReal.BLL
{
    public class LocalidadBLL
    {
        public DataSet Regiones()
        {
            LocalidadDAL registros = new LocalidadDAL();

            DataSet registrosRegion = registros.Regiones();

            return registrosRegion;
        }

        public DataSet Provincias(int id_region)
        {
            LocalidadDAL registros = new LocalidadDAL();

            DataSet registrosProv= registros.Provincias(id_region);

            return registrosProv;
        }

        public DataSet Comunas(int id_prov)
        {
            LocalidadDAL registros = new LocalidadDAL();

            DataSet registrosComuna = registros.Comunas(id_prov);

            return registrosComuna;
        }

        
    }

}
