using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebPlantilla.ClasesConnection
{
    public class CAlumnosGmail
    {
        private string cadenaconxion = System.Web.Configuration.WebConfigurationManager.
        ConnectionStrings["cadenaconexionacademico"].
        ConnectionString;
        public DataSet ConsultaGmail()
        {
            SqlConnection Ocon = new SqlConnection(cadenaconxion);
            SqlDataAdapter da = new SqlDataAdapter("select * from ALUNOS_GMAIL", Ocon);
            DataSet ds = new DataSet();
            da.Fill(ds, "EstusiantesGmail");
            return ds;

        }
    }
}