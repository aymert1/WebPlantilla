using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPlantilla.ClasesConnection;

namespace WebPlantilla
{
    public partial class WedConsultaEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ap = txtapellido.Text;
            CconsultaEstudiantes consulta = new CconsultaEstudiantes();
            gvconsutaestudiante.DataSource = consulta.ApellidoEstudiantes(ap).Tables["estudiantes"];
            gvconsutaestudiante.DataBind();
        }
    }
}