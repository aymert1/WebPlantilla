using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebPlantilla.ClasesConnection;

namespace WebPlantilla.WedMantenimiento
{
    public partial class MantenimientoEstudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            string codestudiante = txtcodigo.Text;
            CconsultaEstudiantes oCarrera = new CconsultaEstudiantes();
            DataSet ds = new DataSet();
            ds = oCarrera.BuscarEstudiante(codestudiante);

            if (ds.Tables["consultaestudiante"].Rows.Count == 1)
            {
                //la carrera existe
                txtnombre.Text = ds.Tables["consultaestudiante"].Rows[0]["nombre_estudiante"].ToString();
                txtAPaterno.Text = ds.Tables["consultaestudiante"].Rows[0]["ap_estudiante"].ToString();
                txtAMaterno.Text = ds.Tables["consultaestudiante"].Rows[0]["am_estudiante"].ToString();
                //ddlcarreras.SelectedValue = ds.Tables["consultaestudiante"].Rows[0]["nombre_carrera"].ToString();
                string sexo = ds.Tables["consultaestudiante"].Rows[0]["sexo_estudiante"].ToString();
                if (sexo == "M")
                {
                    rblsexo.Items.FindByValue("M").Selected = true;
                }
                else
                {
                    if(sexo=="F")
                    {
                        rblsexo.Items.FindByValue("F").Selected = true;
                    }
                   
                }
                txtcorreo.Text = ds.Tables["consultaestudiante"].Rows[0]["correo_estudiante"].ToString();
                txtfoto.Text=ds.Tables["consultaestudiante"].Rows[0]["foto"].ToString();

            }
            else
            {
                //la carerra no  existe
                lbmensaje.Text = "Codigo de Carrera no existe";
            }
        }

        protected void btnnuevo_Click(object sender, EventArgs e)
        {
            txtcodigo.Text = " ";
            txtnombre.Text = " ";
            txtAPaterno.Text = " ";
            txtAMaterno.Text = " ";
            txtcorreo.Text = " ";
            txtfoto.Text = " ";
            txtcorreo.Focus();
        }

        protected void btninsertar_Click(object sender, EventArgs e)
        {
            lbmensaje.Text = "";
            CconsultaEstudiantes oCarrera = new CconsultaEstudiantes();
            lbmensaje.Text = oCarrera.insertarestudiante(txtcodigo.Text, txtnombre.Text, txtAPaterno.Text,txtAMaterno.Text,ddlcarreras.Text,rblsexo.SelectedValue,txtcorreo.Text,txtfoto.Text);
        }

        protected void btnmodificar_Click(object sender, EventArgs e)
        {
            lbmensaje.Text = "";
            CconsultaEstudiantes oCarrera = new CconsultaEstudiantes();
            lbmensaje.Text = oCarrera.actualizarestudiante(txtcodigo.Text, txtnombre.Text, txtAPaterno.Text, txtAMaterno.Text, ddlcarreras.Text, rblsexo.SelectedValue, txtcorreo.Text, txtfoto.Text);
        }

        protected void btneliminar_Click(object sender, EventArgs e)
        {
            lbmensaje.Text = "";
            CconsultaEstudiantes oCarrera = new CconsultaEstudiantes();
            lbmensaje.Text = oCarrera.EliminarEstudiante(txtcodigo.Text);

            txtcodigo.Text = " ";
            txtnombre.Text = " ";
            txtAPaterno.Text = " ";
            txtAMaterno.Text = " ";
            txtcorreo.Text = " ";
            txtfoto.Text = " ";
            txtcorreo.Focus();
        }
    }
}