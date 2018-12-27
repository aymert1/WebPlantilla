using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebPlantilla.ClasesConnection
{
    public class CconsultaEstudiantes
    {
        private string cadenaconxion = System.Web.Configuration.WebConfigurationManager.
          ConnectionStrings["cadenaconexionacademico"].
          ConnectionString;

        public DataSet ApellidoEstudiantes(string apellido)
        {
            SqlConnection Ocon = new SqlConnection(cadenaconxion);
            SqlDataAdapter da = new SqlDataAdapter("select * from testudiante where ap_estudiante like '%" + apellido + "%'", Ocon);
            DataSet ds = new DataSet();
            da.Fill(ds, "estudiantes");
            return ds;

        }
        public DataSet BuscarEstudiante(string codestudiante)
        {
            SqlConnection Ocon = new SqlConnection(cadenaconxion);
            SqlDataAdapter da = new SqlDataAdapter("select * from testudiante where codigo_estudiante='" + codestudiante + "'", Ocon);
            DataSet ds = new DataSet();
            da.Fill(ds, "consultaestudiante");
            return ds;
        }
        public string insertarestudiante(string codestudiante, string nomestudiante, string apaestudiante,string amaestudiante,string carreraestudiante,string sexoestudiante,string correoestudiante,string foto)
        {
            string mensaje;
            int insertados;
            string sql = "insert into testudiante values('" + codestudiante + "','" + nomestudiante + "','" + apaestudiante + "','" + amaestudiante + "','" + carreraestudiante + "','" + sexoestudiante + "','" + correoestudiante + "','" + foto+"')";
            SqlConnection oCon = new SqlConnection(cadenaconxion);
            SqlCommand cmd = new SqlCommand(sql, oCon);

            try
            {
                oCon.Open();
                insertados = cmd.ExecuteNonQuery();
                mensaje = "numero de registros intertados es" + insertados.ToString();
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
        public string actualizarestudiante(string codestudiante, string nomestudiante, string apaestudiante, string amaestudiante, string carreraestudiante, string sexoestudiante, string correoestudiante, string foto)
        {
            string mensaje;
            int insertados;
            string sql = "update testudiante set nombre_estudiante='" + nomestudiante + "'" + ",ap_estudiante='" + apaestudiante +"'" +",am_estudiante='" + amaestudiante +"'"+ ",codigo_carrera='" + carreraestudiante +"'"+ ",sexo_estudiante='" + sexoestudiante+"'" + ",correo_estudiante='" + correoestudiante +"'"+ ",foto='" + foto+"'"+ "where codigo_estudiante='" + codestudiante + "'";
            SqlConnection oCon = new SqlConnection(cadenaconxion);
            SqlCommand cmd = new SqlCommand(sql, oCon);

            try
            {
                oCon.Open();
                insertados = cmd.ExecuteNonQuery();
                mensaje = "numero de registros actualizados es" + insertados.ToString();
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

        public string EliminarEstudiante(string codestudiante)
        {
            string mensaje;
            int insertados;
            string sql = "delete from testudiante where codigo_estudiante ='" + codestudiante + "'";
            SqlConnection oCon = new SqlConnection(cadenaconxion);
            SqlCommand cmd = new SqlCommand(sql, oCon);

            try
            {
                oCon.Open();
                insertados = cmd.ExecuteNonQuery();
                mensaje = "numero de registros Eliminados es" + insertados.ToString();
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
        public DataSet ListaEstudiantesxCodigoCarrera(string codcarrera)
        {
            SqlConnection oCon = new SqlConnection(cadenaconxion);
            SqlDataAdapter da = new SqlDataAdapter("select * from testudiante where codigo_carrera='"+codcarrera+"'", oCon);
            DataSet ds = new DataSet();
            da.Fill(ds, "listaestudianexcarrera");
            return ds;
        }
    }
}