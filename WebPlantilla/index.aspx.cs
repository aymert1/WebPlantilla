using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usu, contra;
            usu=Request.QueryString["nombre"];
            contra=Request.QueryString["contra"];
            Label2.Text = usu + " y tu clave es " + contra;
        }
    }
}