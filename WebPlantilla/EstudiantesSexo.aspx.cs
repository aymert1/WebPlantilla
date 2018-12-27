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
    public partial class EstudiantesSexo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string sexo = RadioButtonList1.SelectedItem.Value;
            CConsultaSexo consulta = new CConsultaSexo();
            gvbuscarsexo.DataSource = consulta.ConsultaSexo(sexo).Tables["SexoEstudiantes"];
            gvbuscarsexo.DataBind();
        }
    }
}