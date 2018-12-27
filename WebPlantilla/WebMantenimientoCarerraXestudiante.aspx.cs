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
    public partial class WebMantenimientoCarerraXestudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["codcarrera"] != null)
            {
                listarestudiantes();
            }
            else
            {
                Response.Redirect("WebMantenimientoCarerraXestudiante.aspx");
            }

        }
        void listarestudiantes()

        {
            string codcarrera = Request.QueryString["codcarrera"].ToString();
            Ccarrera oCarrera = new Ccarrera();

            DataSet ds = new DataSet();
            ds = oCarrera.ConsultaCarrera();

            txtcodigocarrera.Text = codcarrera;
            txtnombrecarrera.Text = ds.Tables["consultacarreras"].Rows[0]["nombre_carrera"].ToString();
            txtfacultadcarrera.Text= ds.Tables["consultacarreras"].Rows[0]["facultad_carrera"].ToString();



        }
        protected void btnmodificar_Click(object sender, EventArgs e)
        {
            lbmensaje.Text = "";
            Ccarrera oCarrera = new Ccarrera();
            lbmensaje.Text = oCarrera.actualizarcarrera(txtcodigocarrera.Text, txtnombrecarrera.Text, txtfacultadcarrera.Text);
        }
    }
}