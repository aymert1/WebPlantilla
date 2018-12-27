using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace WebPlantilla
{
    public class Ccarrera
    {
        private string cadenaconxion = System.Web.Configuration.WebConfigurationManager.
            ConnectionStrings["cadenaconexionacademico"].
            ConnectionString;
           
        public DataSet ConsultaCarrera()
        {
            SqlConnection Ocon = new SqlConnection(cadenaconxion);
            SqlDataAdapter da = new SqlDataAdapter("select * from tcarrera", Ocon);
            DataSet ds = new DataSet();
            da.Fill(ds, "consultacarreras");
            return ds;
        }
        public DataSet ConsultaEstudiantes()
        {
            SqlConnection Ocon = new SqlConnection(cadenaconxion);
            SqlDataAdapter da = new SqlDataAdapter("select * from testudiante", Ocon);
            DataSet ds = new DataSet();
            da.Fill(ds, "consultaestudiantes");
            return ds;

        }

        public DataSet Consultacarreracodigo(string codcarrera)
        {
            SqlConnection Ocon = new SqlConnection(cadenaconxion);
            SqlDataAdapter da = new SqlDataAdapter("select * from tcarrera where codigo_carrera='"+codcarrera+"'", Ocon);
            DataSet ds = new DataSet();
            da.Fill(ds, "consultacareracodigo");
            return ds;
        }

        public string insertarcarrera(string codcarrera, string nomcarrera, string faccarrera)
        {
            string mensaje;
            int insertados;
            string sql="insert into tcarrera values('"+codcarrera+"','"+nomcarrera + "','" +faccarrera+"')";
             SqlConnection oCon = new SqlConnection(cadenaconxion);
            SqlCommand cmd = new SqlCommand(sql, oCon);

            try
            {
                oCon.Open();
                insertados = cmd.ExecuteNonQuery();
                mensaje = "numeor de registros intertados es" + insertados.ToString();
                return mensaje;
            }
            catch(Exception m)
            {
                mensaje = "el  error es" + m.Message;
                return mensaje;
            }
            finally
            {

            }
        }

        public string actualizarcarrera(string codcarrera,string nombrecarrera,string faculatadcarrera)
        {
            string mensaje;
            int insertados;
            string sql = "update tcarrera set nombre_carrera='"+ nombrecarrera+"'" + ",facultad_carrera='" + faculatadcarrera + "' where codigo_carrera='"+codcarrera+"'";
            SqlConnection oCon = new SqlConnection(cadenaconxion);
            SqlCommand cmd = new SqlCommand(sql, oCon);

            try
            {
                oCon.Open();
                insertados = cmd.ExecuteNonQuery();
                mensaje = "numero de registros actualizados es:" + insertados.ToString();
                return mensaje;
            }
            catch (Exception m)
            {
                mensaje = "el  error es" + m.Message;
                return mensaje;
            }
            finally
            {

            }
        }
    }
}