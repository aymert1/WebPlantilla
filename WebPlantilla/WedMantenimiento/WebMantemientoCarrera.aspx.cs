using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla.WedMantenimiento
{
    public partial class WebMantemientoCarrera : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string codcarrera = txtcarrera.Text;
            Ccarrera oCarrera = new Ccarrera();

            DataSet ds = new DataSet();
            ds = oCarrera.Consultacarreracodigo(codcarrera);

            if(ds.Tables["consultacareracodigo"].Rows.Count==1)
            {
                //la carrera existe
                txtnombrecarrera.Text = ds.Tables["consultacareracodigo"].Rows[0]["nombre_carrera"].ToString();
                txtnombrefacultad.Text =  ds.Tables["consultacareracodigo"].Rows[0]["facultad_carrera"].ToString();
                
            }
            else
            {
                //la carerra no  existe
                lamensaje.Text = "Codigo de Carrera no existe";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtcarrera.Text = " ";
            txtnombrecarrera.Text = " ";
            txtnombrefacultad.Text = " ";
            txtcarrera.Focus();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            lamensaje.Text = "";
            Ccarrera oCarrera = new Ccarrera();
            lamensaje.Text = oCarrera.insertarcarrera(txtcarrera.Text,txtnombrecarrera.Text,txtnombrefacultad.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            lamensaje.Text = "";
            Ccarrera oCarrera = new Ccarrera();
            lamensaje.Text = oCarrera.actualizarcarrera(txtcarrera.Text, txtnombrecarrera.Text, txtnombrefacultad.Text);
        }
    }
}