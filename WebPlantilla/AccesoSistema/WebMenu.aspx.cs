using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla.AccesoSistema
{
    public partial class WebMenu1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usu"]==null)
            {
                Response.Redirect("WebAcceso.aspx?error=1");
            }
            else
            {
                lbmensaje.Text = "Bienvenido:" + Session["usu"].ToString().ToUpper();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("usu");
            Session.RemoveAll();
            Response.Redirect("WebAcceso.aspx");
        }
    }
}