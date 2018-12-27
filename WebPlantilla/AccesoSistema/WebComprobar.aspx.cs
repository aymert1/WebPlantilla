using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla.AccesoSistema
{
    public partial class WebComprobar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usu"]==null)
            {
                Response.Redirect("WebAcceso.aspx?error=2");
            }
            else
            {
                lbmensaje.Text = "El  usuario sigue siendo:" + Session["usu"].ToString().ToUpper();
            }
        }
    }
}