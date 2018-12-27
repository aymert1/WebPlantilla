using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla.Consultas
{
    public partial class BuscarEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            SqlConnection be = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\ExmenTallerIII\\WebPlantilla\\WebPlantilla\\App_Data\\dbAcademico.mdf;Integrated Security=True");
            string dato = txtbuscador.Text;
            int carrera =Convert.ToInt16( DropDownList1.SelectedItem.Value);
            string codigo_buscar ="";
            int opcion = Convert.ToInt16(RadioButtonList1.SelectedItem.Value);
            switch(opcion)
            {
                case 1:
                    codigo_buscar = ("select * from testudiante  where codigo_estudiante = '" + dato + "'");
                    break;
                case 2:
                    codigo_buscar= ("select * from testudiante where nombre_estudiante like '%" + dato + "%'");
                    break;
                case 3:
                    codigo_buscar = ("select * from testudiante where ap_estudiante like '%" + dato + "%'");
                    break;
                case 4:
                    codigo_buscar = ("select * from testudiante where am_estudiante like '%" + dato + "%'");
                    break;
            }
           
            SqlDataAdapter ed = new SqlDataAdapter(codigo_buscar, be);
            DataSet dt = new DataSet();
            ed.Fill(dt, "estudianteap");
            gvEstudiantes.DataSource = dt.Tables["estudianteap"];
            gvEstudiantes.DataBind();
        }
    }
}