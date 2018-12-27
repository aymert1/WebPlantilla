using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlantilla
{
    public partial class WebNrosPares : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int nro;
            nro = Convert.ToInt32(args.Value);
            if (nro % 2 == 0)
            { //es par
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}