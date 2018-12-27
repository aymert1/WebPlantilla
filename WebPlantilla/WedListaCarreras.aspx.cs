using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla
{
    public partial class WedListaCarreras : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            //CARRERAS
            Ccarrera ocarrera = new Ccarrera();
            gvescuelas.DataSource = ocarrera.ConsultaCarrera().Tables["consultacarreras"];
            gvescuelas.DataBind();
            //ESTUDIANTES
            Ccarrera estudiantes = new Ccarrera();
            gvestudiantes.DataSource = estudiantes.ConsultaEstudiantes().Tables["consultaestudiantes"];
            gvestudiantes.DataBind();

        }
    }
}