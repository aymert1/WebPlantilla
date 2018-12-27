using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla.AccesoSistema
{
    public partial class WebMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Params["error"]!=null)
            {
                string error = Request.Params["error"];
                if (error == "1")
                {
                    lbmensaje.Text = "Debe de Iniciar Seccion para Acceder al Menu";

                }
                else
                {
                    if(error=="2")
                    {
                        lbmensaje.Text = "Debe de Iniciar para Acceder a la Comprobacion";
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usu = txtusuario.Text;

            string pas = txtcontraseña.Text;
            if(usu=="aymer"&&pas=="123456")
            {
                Session["Usu"] = usu;
                Response.Redirect("WebMenu.aspx");
            }
            else
            {
                lbmensaje.Text = "Error de usuario y/o contraseña";
                txtusuario.Text = "";
                txtcontraseña.Text = "";
                txtusuario.Focus();
            }

        }
    }
}