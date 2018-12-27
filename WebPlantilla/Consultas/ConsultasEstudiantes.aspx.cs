using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebPlantilla.Consultas
{
    public partial class ConsultasEstudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection estudiantecarrera = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\ExmenTallerIII\\WebPlantilla\\WebPlantilla\\App_Data\\dbAcademico.mdf;Integrated Security=True");
            SqlDataAdapter estudianteconsulta = new SqlDataAdapter("select * from Estudiante_Carrera", estudiantecarrera);
            DataSet datoestudiante = new DataSet();
            estudianteconsulta.Fill(datoestudiante, "consulta");
            gvEstudiantesCarrera.DataSource=datoestudiante.Tables["consulta"];
            gvEstudiantesCarrera.DataBind();
        }
    }
}