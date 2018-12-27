using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla
{
    public partial class WebAcceso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usu, contra;
            usu = txtUsuario.Text;
            contra = txtContrasenia.Text;
            if (usu.ToUpper() == "EBERT" && contra.ToUpper() == "EBERT")
            {
                if (CheckBox1.Checked)
                {  //quiere hacer cambio de contraseña
                    Response.Redirect("WebCambio.aspx");
                }
                else
                {
                    Response.Redirect("index.aspx?nombre="+usu+"&contra="+contra);
                }
            }
        }
    }
}