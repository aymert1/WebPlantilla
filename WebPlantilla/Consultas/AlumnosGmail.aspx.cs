using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using WebPlantilla.ClasesConnection;

namespace WebPlantilla.Consultas
{
    public partial class AlumnosGmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          CAlumnosGmail consulta = new CAlumnosGmail();
          gvAlumnosGmail.DataSource = consulta.ConsultaGmail().Tables["EstusiantesGmail"];
          gvAlumnosGmail.DataBind();
        }
    }
}