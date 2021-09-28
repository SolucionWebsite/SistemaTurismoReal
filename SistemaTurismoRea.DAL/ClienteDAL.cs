using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaTurismoRea.DAL
{
    public class ClienteDAL
    {
        DataAccess da = new DataAccess();

        public DataSet Nacionalidad()
        {
            using (da.Connection())
            {
                DataSet region = null;

                try
                {
                    OracleCommand cmd = new OracleCommand("LISTARNACIONALIDAD", da.Connection());
                    cmd.CommandText = "LISTARNACIONALIDAD";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Connection.Open();
                    cmd.Parameters.Add("pcursor", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

                    OracleDataAdapter adapter = new OracleDataAdapter();
                    adapter.SelectCommand = cmd;
                    DataSet tabla = new DataSet();
                    adapter.Fill(tabla, "datos");

                    region = tabla;

                    cmd.Connection.Close();

                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al encontrar registros: " + ex.Message);
                }

                return region;
            }
        }
    }
}
