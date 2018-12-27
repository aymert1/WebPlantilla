using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebPlantilla.ClasesConnection
{
    public class CConsultaSexo
    {
        private string cadenaconxion = System.Web.Configuration.WebConfigurationManager.
         ConnectionStrings["cadenaconexionacademico"].
         ConnectionString;
        public DataSet ConsultaSexo(string sexo)
        {
            SqlConnection Ocon = new SqlConnection(cadenaconxion);
            SqlDataAdapter da = new SqlDataAdapter("select * from testudiante where sexo_estudiante like '%" + sexo + "%'", Ocon);
            DataSet ds = new DataSet();
            da.Fill(ds, "SexoEstudiantes");
            return ds;

        }

    }
}