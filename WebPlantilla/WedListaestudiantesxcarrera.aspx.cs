using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPlantilla.ClasesConnection;

namespace WebPlantilla
{
    public partial class WedListaestudiantesxcarrera : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["codcarrera"]!=null)
            {
                listarestudiantes();
            }
            else
            {
                Response.Redirect("WedListaestudiantesxcarrera.aspx");
            }
            

        }
        void listarestudiantes()

        {
            string nomcarrera = Request.QueryString["nomcarrera"].ToString();
            string codcarrera = Request.QueryString["codcarrera"].ToString();
            CconsultaEstudiantes oEstudiante = new CconsultaEstudiantes();
            DataSet ds = new DataSet();
            Label1.Text = "Lista de la  carrera de:" + nomcarrera;
            ds = oEstudiante.ListaEstudiantesxCodigoCarrera(codcarrera);
            GridView1.DataSource = ds.Tables["listaestudianexcarrera"];
            GridView1.DataBind();
        }
    }
}